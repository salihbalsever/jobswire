import 'package:flutter/material.dart';

import '/data/models/models.dart';
import '/view/widgets/widgets.dart';

class ItemsTile extends StatelessWidget {
  const ItemsTile({
    Key? key,
    required this.items,
  }) : super(key: key);

  final Items items;

  @override
  Widget build(BuildContext context) {
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
