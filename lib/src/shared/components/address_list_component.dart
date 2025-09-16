import 'package:flutter/material.dart';
import 'package:fastlocation/src/modules/home/model/cep_model.dart';

class AddressListComponent extends StatelessWidget {
  final List<CepModel> addresses;

  const AddressListComponent({
    Key? key,
    required this.addresses,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: addresses.length,
      itemBuilder: (context, index) {
        final address = addresses[index];
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: ListTile(
            title: Text(address.logradouro ?? 'Não informado'),
            subtitle: Text('${address.localidade} - ${address.uf}'),
          ),
        );
      },
    );
  }
}