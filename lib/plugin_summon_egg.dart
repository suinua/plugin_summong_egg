import 'dart:io';

import 'package:plugin_summon_egg/plugin_yaml.dart';
import 'package:plugin_summon_egg/version.dart';

void createFolders(String pluginName) {
  var path = Directory.current.path + pluginName + '/';
  Directory(path).create();
  Directory(path + 'src/').create();
  Directory(path + 'src/' + pluginName).create();
}

PluginYaml generatePluginYaml() {
  print('plugin name:');
  var pluginName = stdin.readLineSync();

  print('plugin version:[1.0.0]');
  var pluginVersion = Version.fromString(stdin.readLineSync());

  print('api version:[3.0.0]');
  var apiVersionAsString = stdin.readLineSync();
  var apiVersions = <Version>[];

  apiVersionAsString.split(',').forEach((String element) {
    apiVersions.add(Version.fromString(element));
  });

  return PluginYaml(pluginName, pluginVersion, apiVersions);
}

void generatePluginYamlFile(String path, PluginYaml yaml) {
  var file = File(path + 'plugin.yaml');
  file.create();
  file.writeAsString(yaml.toString());
}
