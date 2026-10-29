import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

/// AdMob for Question Simulator (AdMob app: "Question Simulator: Exam Prep", Android).
///
/// The App ID is in AndroidManifest.xml. Release builds use the real ad units below.
/// Debug builds use Google's published test units, so that testing never clicks a live ad.
class Ads {
  Ads._();

  static const _bannerId = 'ca-app-pub-2087846699268567/3021708489';
  static const _interstitialId = 'ca-app-pub-2087846699268567/1708626813';
  static const _testBannerId = 'ca-app-pub-3940256099942544/6300978111';
  static const _testInterstitialId = 'ca-app-pub-3940256099942544/1033173712';

  /// Show an interstitial every this many topic pages opened.
  static const interstitialEvery = 4;

  /// True once consent allows ads and the SDK is running.
  static bool get ready => _initialised;

  static String get bannerId => kDebugMode ? _testBannerId : _bannerId;
  static String get interstitialUnitId => kDebugMode ? _testInterstitialId : _interstitialId;

  static bool _started = false;
  static bool _canRequestAds = false;
  static bool _initialised = false;
  static InterstitialAd? _interstitial;
  static int _topicsOpened = 0;

  /// Asks for consent where required (UMP), then starts the Mobile Ads SDK.
  /// Called once at start-up; the app works fine if this never completes.
  static void start() {
    if (_started) return;
    _started = true;
    ConsentInformation.instance.requestConsentInfoUpdate(
      ConsentRequestParameters(),
      () {
        ConsentForm.loadAndShowConsentFormIfRequired((_) => _initialise());
      },
      (_) => _initialise(),
    );
  }

  static Future<void> _initialise() async {
    _canRequestAds = await ConsentInformation.instance.canRequestAds();
    if (!_canRequestAds) return;
    await MobileAds.instance.initialize();
    _initialised = true;
    _loadInterstitial();
  }

  static void _loadInterstitial() {
    if (!_canRequestAds) return;
    InterstitialAd.load(
      adUnitId: interstitialUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) => _interstitial = ad,
        onAdFailedToLoad: (_) => _interstitial = null,
      ),
    );
  }

  /// True when the user must be offered a way to change their ad consent (UK, EEA, Switzerland).
  static Future<bool> privacyOptionsRequired() async {
    final status = await ConsentInformation.instance.getPrivacyOptionsRequirementStatus();
    return status == PrivacyOptionsRequirementStatus.required;
  }

  /// Opens Google's consent form so the user can change their ad choices.
  static Future<void> showPrivacyOptions() => ConsentForm.showPrivacyOptionsForm((_) {});

  /// Call when a topic page is opened. Shows a preloaded interstitial every [interstitialEvery] opens.
  static Future<void> onTopicOpened() async {
    _topicsOpened++;
    final ad = _interstitial;
    if (ad == null || _topicsOpened % interstitialEvery != 0) return;
    _interstitial = null;
    final closed = Completer<void>();
    void finish() {
      if (!closed.isCompleted) closed.complete();
      _loadInterstitial();
    }

    ad.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (a) {
        a.dispose();
        finish();
      },
      onAdFailedToShowFullScreenContent: (a, _) {
        a.dispose();
        finish();
      },
    );
    await ad.show();
    await closed.future;
  }
}

/// A 320×50 banner at the bottom of a page. Shows nothing if the ad cannot load.
class AdBanner extends StatefulWidget {
  const AdBanner({super.key});

  @override
  State<AdBanner> createState() => _AdBannerState();
}

class _AdBannerState extends State<AdBanner> {
  BannerAd? _ad;
  bool _loaded = false;

  @override
  void initState() {
    super.initState();
    if (!Ads.ready) return;
    _ad = BannerAd(
      adUnitId: Ads.bannerId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          if (mounted) setState(() => _loaded = true);
        },
        onAdFailedToLoad: (ad, _) {
          ad.dispose();
          if (mounted) setState(() => _ad = null);
        },
      ),
    )..load();
  }

  @override
  void dispose() {
    _ad?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ad = _ad;
    if (ad == null || !_loaded) return const SizedBox.shrink();
    return SafeArea(
      top: false,
      child: SizedBox(
        width: AdSize.banner.width.toDouble(),
        height: AdSize.banner.height.toDouble(),
        child: AdWidget(ad: ad),
      ),
    );
  }
}
