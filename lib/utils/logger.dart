import 'dart:io';

enum Logger {
  Black("30"),
  Error("31"),
  Success("32"),
  Warring("33"),
  Blue("34"),
  Magenta("35"),
  Cyan("36"),
  White("37");

  final String code;
  const Logger(this.code);

  void log(dynamic text) {
    stdout.writeln('message: \x1B[${code}m$text\x1B[0m');
  }
}
