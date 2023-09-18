import 'package:fuels_beta3/src/bridge_generated.dart';

/// Represents the external library for fuels_beta3
///
/// Will be a DynamicLibrary for dart:io or WasmModule for dart:html
typedef ExternalLibrary = Object;

FuelsBeta3 createWrapperImpl(ExternalLibrary lib) => throw UnimplementedError();
