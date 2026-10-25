import 'package:flutter_test/flutter_test.dart';
import 'package:questionsimulator/data/models.dart';

void main() {
  test('release versions compare number by number', () {
    expect(compareVersions('2026-10.10', '2026-10.9'), greaterThan(0));
    expect(compareVersions('2026-10.9.1', '2026-10.9'), greaterThan(0));
    expect(compareVersions('2027-01', '2026-10.9.1'), greaterThan(0));
    expect(compareVersions('2026-10.2', '2026-10.2'), 0);
    expect(compareVersions('2026-10', '2026-10.1'), lessThan(0));
  });
}
