import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/view_models/view_models.dart';
import '/view/widgets/widgets.dart';

class ItemsView extends StatefulWidget {
  const ItemsView({Key? key}) : super(key: key);

  @override
  _ItemsViewState createState() => _ItemsViewState();
}

class _ItemsViewState extends State<ItemsView> {
  late String searchString;
  @override
  void initState() {
    searchString = '';
    super.initState();
  }

  void _setSearchString(String value) => setState(() {
        searchString = value;
      });

  @override
  Widget build(BuildContext context) {
    var searchResultTiles = <Widget>[];


    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
          onChanged: _setSearchString,
        ),
      ),
      body: Consumer<ItemsViewModel>(
        builder: (context, _itemsViewModel, child) {
          if (searchString.isNotEmpty) {
        

            searchResultTiles = _itemsViewModel.items
                .sublist(1)
                .where((element) => element.position!.toLowerCase().contains(searchString.toLowerCase()))

                
                .map(
                  (element) => ItemsTile(
                    items: element,
                  ),
                )

               
                .toList();
            debugPrint(searchResultTiles.toString());
          }

          return searchString.isNotEmpty
              ? ListView(
                  children: searchResultTiles,
                )

              : _itemsViewModel.isLoading
                  ? const ItemsLoading()
                  : ItemsSuccess(
                      itemsViewModel: _itemsViewModel,
                    );
        },
      ),
    );
  }
}
