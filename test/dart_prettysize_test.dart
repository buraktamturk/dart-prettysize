
import 'package:prettysize/prettysize.dart';
import 'package:test/test.dart';

void main() {
  test('should print bytes', () {
    expect(prettysize(12), equals('12 Bytes'));
  });

  test('should print bytes with no space', () {
    expect(prettysize(12, true), equals('12Bytes'));
  });

  test('should print bytes with no space and one char', () {
    expect(prettysize(12, true, true), equals('12B'));
  });

  test('should print bytes with space and one char', () {
    expect(prettysize(12, false, true), equals('12 B'));
  });

  test('should print kilobytes', () {
    expect(prettysize(123456), equals('120.6 kB'));
  });

  test('should print exact kilobytes', () {
    expect(prettysize(1024), equals('1 kB'));
  });

  test('should print megs', () {
    expect(prettysize(123456789), equals('117.7 MB'));
  });

  test('should print exact megs', () {
    expect(prettysize(1024 * 1024), equals('1 MB'));
  });

  test('should print gigs', () {
    expect(prettysize(12345678901), equals('11.5 GB'));
  });

  test('should print exact gigs', () {
    expect(prettysize(1024 * 1024 * 1024), equals('1 GB'));
  });

  test('should print teras', () {
    expect(prettysize(1234567890123), equals('1.1 TB'));
  });

  test('should print exact teras', () {
    expect(prettysize(1024 * 1024 * 1024 * 1024), equals('1 TB'));
  });

  test('should print petas', () {
    expect(prettysize(1234567890123456), equals('1.1 PB'));
  });

  test('should print exact petas', () {
    expect(prettysize(1024 * 1024 * 1024 * 1024 * 1024), equals('1 PB'));
  });

  test('should print exabyte', () {
    expect(prettysize(1234567890123456789), equals('1.1 EB'));
  });

  test('should print exact exobyte', () {
    expect(prettysize(1024 * 1024 * 1024 * 1024 * 1024 * 1024), equals('1 EB'));
  });

  test('should print zero bytes', () {
    expect(prettysize(0), equals('0 Bytes'));
  });

  test('should print zero bytes with no space', () {
    expect(prettysize(0, true), equals('0Bytes'));
  });

  test('should print zero bytes with no space and one char', () {
    expect(prettysize(0, true, true), equals('0B'));
  });

  test('should print zero bytes with space and one char', () {
    expect(prettysize(0, false, true), equals('0 B'));
  });

  test('should print, two decimal places', () {
    expect(prettysize(123456789, false, false, 2), equals('117.74 MB'));
  });

  test('should print three decimal places', () {
    expect(prettysize(123456789, false, false, 3), equals('117.738 MB'));
  });
}
