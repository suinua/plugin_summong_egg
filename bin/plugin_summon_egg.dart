import 'dart:io';

import 'package:plugin_summon_egg/plugin_summon_egg.dart' as plugin_summon_egg;

void main(List<String> arguments) {
  var yaml = plugin_summon_egg.generatePluginYaml();
  plugin_summon_egg.createFolders(yaml.name);

  plugin_summon_egg.generatePluginYamlFile(Directory.current.path + yaml.name + '/', yaml);
}
