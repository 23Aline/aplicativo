import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fastlocation/src/modules/home/components/last_address_component.dart';
import 'package:fastlocation/src/modules/home/controller/home_controller.dart';
import 'package:fastlocation/src/routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController();
  final TextEditingController _cepController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  void _searchCep() {
    if (_cepController.text.isNotEmpty) {
      _controller.getAddressByCep(_cepController.text);
    }
  }

  void _clearSearch() {
    _cepController.clear();
    _controller.clearFields();
  }

  void _navigateToHistory() {
    Navigator.of(context).pushNamed(AppRoutes.history);
  }

  void _traceRoute() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FastLocation'),
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: _navigateToHistory,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _cepController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Digite o CEP',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: _clearSearch,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _searchCep,
                    child: const Text('Consultar CEP'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Observer(
              builder: (_) {
                if (_controller.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (_controller.lastAddress != null) {
                  return Column(
                    children: [
                      LastAddressComponent(address: _controller.lastAddress!),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: _traceRoute,
                        child: const Text('Traçar Rota'),
                      ),
                    ],
                  );
                } else {
                  return const Center(
                    child: Text('Nenhum endereço consultado.'),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}