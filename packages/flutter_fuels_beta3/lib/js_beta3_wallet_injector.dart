@JS()
library fuel_wallet_beta3;

import 'dart:html';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:js/js.dart';

class JsBeta3WalletInjector {
  static void registerWith(Registrar registrar) {
    _loadScriptBeta3('assets/packages/flutter_fuels_beta3/js/beta3_wallet.js');
  }

  static void _loadScriptBeta3(String path) {
    // Create a new script element
    ScriptElement script = ScriptElement();
    script.type = 'text/javascript';
    script.src = path;

    // Add the script element to the document's head
    document.head!.append(script);
  }
}
