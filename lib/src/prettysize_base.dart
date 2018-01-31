
import 'dart:math';

String prettysize(int size, [bool nospace = false, bool one = false, int places = 1]) {
  var sizes = [
    'Bytes', 'kB', 'MB', 'GB', 'TB', 'PB', 'EB'
  ];

  var mysize;

  for(int i = 0; i < sizes.length; ++i) {
    var s = pow(1024, i);
    var fixed;
    if (size >= s) {
      fixed = (size / s).toStringAsFixed(places);
      if (fixed.indexOf('.0') == fixed.length - 1 - places) {
        fixed = fixed.substring(0, fixed.length - 1 - places);
      }
      mysize = fixed + (nospace ? '' : ' ') + (one ? sizes[i][0] : sizes[i]);
    }
  }

  if (mysize == null) {
    var unit = sizes[0];
    mysize = '0' + (nospace ? '' : ' ') + (one ? unit[0] : unit);
  }

  return mysize;
}
