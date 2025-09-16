import 'package:flutter/material.dart';

class EmptySearchComponent extends StatelessWidget {
  const EmptySearchComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.location_off,
            size: 80,
            color: Colors.grey,
          ),
          SizedBox(height: 20),
          Text(
            'Nenhum endereço encontrado.',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          Text(
            'Tente uma nova busca.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}