# dart-prettysize

Helper utility to provide pretty printed file sizes.

**This library is dart port of [davglass/prettysize](https://github.com/davglass/prettysize) javascript library. All credits should go directly here.**

## Usage


Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  prettysize: "^0.1.0"
```

and use it like that:

```dart
import 'package:prettysize/prettysize.dart';

String str = prettysize(1024);
//str = "1 kB"

str = prettysize(1024 * 1024);
//str = "1 MB"

str = prettysize(123456789);
//str = "117.7 MB"
```

## Arguments

```dart
prettysize(123456, nospace: true, one: true, places: 2);

/*
First arg is size
Second argument is to remove the space from the output
Third argument is to use a single character for the size.
Forth argument is the number of decimal places to return, default is 1. 
*/

Srting str = prettysize(1024 * 1024, true);
//str = "1MB"

str = prettysize(123456789, nospace: true) // pretty(123456789, true, true);
//str = "117.7M"

str = prettysize(123456789, one: true) // pretty(123456789, false, true);
//str = "117.7 M"

str = prettysize(123456789, one: true, places: 2) // pretty(123456789, false, true, 2);
//str = "117.74 M"

str = prettysize(123456789, one: true, places: 3) // pretty(123456789, false, true, 3);
//str = "117.738 M"
```