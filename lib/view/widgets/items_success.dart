import 'package:flutter/material.dart';

import '/data/models/models.dart';
import '/view/widgets/widgets.dart';
import '/view_models/view_models.dart';

class ItemsSuccess extends StatelessWidget {
  const ItemsSuccess({
    Key? key,
    required this.itemsViewModel,
  }) : super(key: key);

  final ItemsViewModel itemsViewModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        padding: const EdgeInsets.all(
          10.0,
        ),
        itemCount: itemsViewModel.items.sublist(1).length,
        itemBuilder: (context, index) {
          final items = itemsViewModel.items.sublist(1)[index];
          return Card(
            child: ListTile(
              leading: const CircleAvatar(),
              title: Text(
                items.position!,
              ),
              isThreeLine: true,
              subtitle: Text(
                '${items.company} \n${items.location}',
              ),
              trailing: Text(
                items.id!,
              ),
              onTap: () => _showBottomModalSheet(context, items),
            ),
          );
        },
      ),
    );
  }

  void _showBottomModalSheet(BuildContext context, Items items) {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        return BottomSheetContent(items: items);
      },
    );
  }
}
