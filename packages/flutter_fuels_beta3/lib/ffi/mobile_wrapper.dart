import 'dart:ffi';
import 'dart:io';

import 'package:fuels_beta3/fuels_beta3.dart';

typedef ExternalLibrary = DynamicLibrary;

FuelsBeta3? _wrapper;
const _base = 'fuels_beta3';
const _flutterLibName = 'flutter_$_base';

DynamicLibrary createLibraryImpl() {
  if (Platform.isIOS || Platform.isMacOS) {
    return DynamicLibrary.open('$_flutterLibName.framework/$_flutterLibName');
  } else if (Platform.isWindows) {
    return DynamicLibrary.open('$_base.dll');
  } else {
    return DynamicLibrary.open('lib$_base.so');
  }
}

FuelsBeta3 createWrapper(ExternalLibrary lib) {
  _wrapper ??= FuelsBeta3Impl(lib);
  return _wrapper!;
}

FuelsBeta3 createLib() => createWrapper(createLibraryImpl());
