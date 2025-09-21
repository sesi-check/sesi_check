import 'package:flutter/material.dart';
import 'package:sesi_check/ui/core/themes/app_colors.dart';
import 'package:sesi_check/ui/core/ui/bottom_navigation.dart';
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
      bottomNavigationBar: BottomNavigation(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarPersonalizado(titulo: "Histórico"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text("HISTÓRICO DE ATENDIMENTO", style: TextStyle(fontWeight: FontWeight.normal),),
            ),
            CardPeriodico(titulo: "Periódico Setembro 2025"),
            CardPeriodico(titulo: "Periódico Março 2025"),
            CardPeriodico(titulo: "Periódico Setembro 2024"),
            CardPeriodico(titulo: "Periódico Março 2024"),
            CardPeriodico(titulo: "Admissional - Março 2023"),
          ],
        ),
      ),
    );
  }
}

class CardPeriodico extends StatelessWidget {
  const CardPeriodico({
    super.key, required this.titulo,
  });

  final String titulo;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.health_and_safety_outlined,
                color: AppColors.secundaria,
              ),
              SizedBox(width: 10),
              Text(titulo),
            ],
          ),
          Icon(Icons.keyboard_arrow_right, color: AppColors.secundaria),
        ],
      ),
    );
  }
}
