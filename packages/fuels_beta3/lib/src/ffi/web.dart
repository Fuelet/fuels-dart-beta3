import 'package:fuels_beta3/src/bridge_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

typedef ExternalLibrary = WasmModule;

FuelsBeta3 createWrapperImpl(ExternalLibrary module) =>
    FuelsBeta3Impl.wasm(module);
