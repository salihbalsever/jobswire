import 'package:http/http.dart' as http;

class ApiClient {
  late http.Response _response;
  final _authority = 'remoteok.io';
  final _unencodedPath = 'api';

  Future<http.Response> fetchItems() async {
    final _url = Uri.https(
      _authority,
      _unencodedPath,
    );
    _response = await http.get(
      _url,
    );
    return _response;
  }
}
