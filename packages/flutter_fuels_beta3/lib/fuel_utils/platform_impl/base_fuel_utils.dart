import 'package:flutter_fuels_beta3/model/transaction.dart';

abstract class BaseFuelUtils {
  Future<String> bech32FromB256String(String address);

  Future<String> b256FromBech32String(String address);

  Future<Transaction> transformTxRequest(dynamic transactionRequestLike);
}
