import 'dart:convert';

import '/data/models/models.dart';
import '/data/api/api.dart';

class ItemsService {
  final _apiClient = ApiClient();
  Future<List<Items>> fetchItems() async {
    final _response = await _apiClient.fetchItems();

    /// JSON Object String
    final _jsonBody = _response.body;

    /// String to List
    final _decodedBody = jsonDecode(_jsonBody) as List;

    /// Map to Iterable
    final _iterable = _decodedBody.map((x) => Items.fromJson(x));

    /// Iterable to List
    final _data = List<Items>.from(_iterable);

    if (_response.statusCode == 200) {
 
      return _data;
    } else {
  
      throw 'Veriler alınamadı';
    }
  }
}
