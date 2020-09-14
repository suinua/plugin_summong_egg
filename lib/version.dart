class Version {
  int _first;
  int _second;
  int _third;

  Version(this._first, this._second,this._third);

  Version.fromString(String text) {
    var list =  text.split('.');
    _first = int.parse(list[0]);
    _second = int.parse(list[1]);
    _third = int.parse(list[2]);
  }

  @override
  String toString() {
    return '$_first.$_second.$_third';
  }
}