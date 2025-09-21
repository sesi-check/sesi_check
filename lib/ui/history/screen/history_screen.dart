import 'package:flutter/material.dart';

import '../../core/ui/app_bar_personalizado.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarPersonalizado(titulo: "Histórico", voltar: (){}, sair: (){})
          ],
        ),
      ),
    );
  }
}