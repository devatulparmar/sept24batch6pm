import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiRepository {
  Future<Response> getAPICall(String url) {
    var uri = Uri.parse(url);
    return http.get(
      uri,
      // headers: {
      //   "Authentication": "Token",
      // },
    );
  }

  Future<http.Response> postAPICall({required String url, dynamic bodyData, dynamic headers}) {
    var uri = Uri.parse(url);
    return http.post(uri, body: bodyData, headers: headers);
  }
}
