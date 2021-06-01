import 'network.dart';

class ExchangeDataModel {
  Future<dynamic> getExchangeData(String coin, String cur) async {
    var url = Uri.parse('https://rest.coinapi.io/v1/exchangerate/$coin/$cur');
    NetworkHelper networkHelper = NetworkHelper(url);
    var returnData = await networkHelper.getData();
    return returnData;
  }
}
