import 'package:food_delivery/utils/app_constants.dart';
import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService{
  late String token ;
  final String appBaseUrl ;
  late Map<String , String> _mainHeaders;
  ApiClient({required this.appBaseUrl}){
    baseUrl = appBaseUrl;
    timeout = const Duration(seconds: 30);
    token = AppConstant.token;
    _mainHeaders ={
      'Content-type' : 'application/json ;  charset=Utf-8' ,
      'Authorization': 'Bearer $token'
    };
  }
  Future<Response> getData (String uri) async {
    try{
      Response response = await get(uri);
      return response;
    }catch(e){
      print(e.toString());
      return Response(statusCode: 1 , statusText: e.toString());
    }
  }
}