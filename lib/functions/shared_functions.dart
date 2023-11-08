import 'package:http/http.dart' as http;

class SharedFunctions {
  String baseUri = 'translate.poduran.dev/translate';

  Future<String?> postAsync(String jData) async {
    var headers = {'Content-Type': 'application/json'};

    var request = http.Request('POST', Uri.parse(baseUri));

    request.headers.addAll(headers);
    request.body = jData;

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      return await response.stream.bytesToString();
    } else {
      return null;
    }
  }
}
