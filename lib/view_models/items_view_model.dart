import 'package:flutter/foundation.dart';

import '/data/models/models.dart';
import '/data/repositories/repositories.dart';

class ItemsViewModel with ChangeNotifier {
  final _itemsRepository = ItemsRepository();

  /// Yükleniyor mu?
  bool _isLoading = true;
  bool get isLoading => _isLoading;

  ///
  List<Items> _items = [];
  List<Items> get items => _items;

  Future<void> fetchItems() async {
    _isLoading = true;

    _items = await _itemsRepository.fetchItems();
    debugPrint("sasasasas $_items");

    _isLoading = false;

    notifyListeners();
  }
}
