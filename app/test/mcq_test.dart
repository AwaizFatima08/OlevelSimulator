import 'package:flutter_test/flutter_test.dart';
import 'package:questionsimulator/data/models.dart';

void main() {
  test('multiple-choice parts are recognised with their correct letter', () {
    const p = PracticePart(
        label: 'a', text: 'Which gas?\nA oxygen\nB nitrogen\nC argon\nD neon', marks: 1, answer: 'B nitrogen');
    final m = p.mcq!;
    expect(m.question, 'Which gas?');
    expect(m.options.length, 4);
    expect(m.answer, 'B');
    const written = PracticePart(label: 'b', text: 'Explain why.', marks: 2, answer: 'Because…');
    expect(written.mcq, isNull);
  });
}
