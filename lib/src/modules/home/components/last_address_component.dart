import 'package:flutter/material.dart';
import 'package:fastlocation/src/modules/home/model/cep_model.dart';
import 'package:fastlocation/src/shared/metrics/metrics.dart';

class LastAddressComponent extends StatelessWidget {
  final CepModel address;

  const LastAddressComponent({
    Key? key,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(AppMetrics.largeSpacing),
      child: Padding(
        padding: const EdgeInsets.all(AppMetrics.largeSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Último Endereço Consultado:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: AppMetrics.mediumSpacing),
            Text('CEP: ${address.cep}'),
            Text('Logradouro: ${address.logradouro}'),
            Text('Bairro: ${address.bairro}'),
            Text('Cidade/UF: ${address.localidade} - ${address.uf}'),
          ],
        ),
      ),
    );
  }
}