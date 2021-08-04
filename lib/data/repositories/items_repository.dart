import '/data/api/api.dart';
import '/data/models/models.dart';

class ItemsRepository {
  final _itemsService = ItemsService();

  Future<List<Items>> fetchItems() async {
    final _data = await _itemsService.fetchItems();
    return _data;
  }
}
