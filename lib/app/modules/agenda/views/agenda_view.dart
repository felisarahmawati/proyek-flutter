import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/agenda_controller.dart';

class AgendaView extends GetView<AgendaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AgendaView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AgendaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
