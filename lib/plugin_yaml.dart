import 'package:plugin_summon_egg/version.dart';

class PluginYaml {
  final String name;
  final Version version;
  final List<Version> apiVersion;

  PluginYaml(this.name, this.version, this.apiVersion);

  @override
  String toString() {
    var apiVersionAsString = '';
    apiVersion.asMap().forEach((key, element) {
      apiVersionAsString += element.toString();

      if (apiVersion.length != key && apiVersion.length > 1) {
        apiVersionAsString += ',';
      }
    });
    apiVersionAsString = '[$apiVersionAsString]';

    return """
name: $name,
main: '',
version: ${version.toString()},
api: $apiVersionAsString
    """;
  }
}
