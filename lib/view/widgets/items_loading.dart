import 'package:flutter/material.dart';

class ItemsLoading extends StatelessWidget {
  const ItemsLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const CircularProgressIndicator(
            backgroundColor: Colors.amber,

            /// İndicator rengi
            valueColor: AlwaysStoppedAnimation<Color>(
              Color(0xFF288AC0),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Text(
            'Veriler yükleniyor',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
