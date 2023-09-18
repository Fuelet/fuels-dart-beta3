import 'dart:ffi';

import 'package:fuels_beta3/src/bridge_generated.dart';

typedef ExternalLibrary = DynamicLibrary;

FuelsBeta3 createWrapperImpl(ExternalLibrary dylib) => FuelsBeta3Impl(dylib);
