import 'dart:io';

import 'package:args/args.dart';
import 'package:cli_tool/utils/utils.dart';

void main(List<String> arguments) {
  try {
    final parser = ArgParser()
      ..addMultiOption('platforms', allowed: ['ios', 'android'], abbr: 'p');
    final result = parser.parse(arguments);

    Logger.Success.log(result['platforms']);
    // run(path);
  } on FormatException catch (fe) {
    Logger.Error.log(fe.message);
  }
}

Future<void> run(List<String> path) async {
  if (path.isEmpty) {
    Logger.Error.log("not valid path");
    exit(e);
  }
  getDirectory(path.first);
  Logger.Success.log(path.toString());
}

void getDirectory(String path) async {
  final directory = Directory.fromUri(Uri.parse(path));
  if (!await directory.exists()) {
    Logger.Error.log("directory not exists");
    exit(e);
  }
  Logger.Success.log(directory.path);
  // var result = await Process.run('flutter create ', arguments)
}
