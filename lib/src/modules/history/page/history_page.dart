import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fastlocation/src/modules/home/components/address_list_component.dart';
import 'package:fastlocation/src/modules/history/controller/history_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final HistoryController _controller = HistoryController();

  @override
  void initState() {
    super.initState();
    _controller.loadHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Histórico de Consultas'),
        leading: IconButton(
          icon: const FaIcon(FontAwesomeIcons.xmark), 
          onPressed: () {
            Navigator.of(context).pop(); 
          },
        ),
      ),
      body: Observer(
        builder: (_) {
          if (_controller.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (_controller.history.isEmpty) {
            return const Center(
              child: Text('Nenhum histórico encontrado.'),
            );
          } else {
            return AddressListComponent(addresses: _controller.history);
          }
        },
      ),
    );
  }
}
