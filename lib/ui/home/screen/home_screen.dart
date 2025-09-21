import 'package:flutter/material.dart';
import 'package:sesi_check/ui/core/themes/app_colors.dart';
import 'package:sesi_check/ui/core/ui/card_procedimento.dart';

import '../../core/ui/app_bar_personalizado.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarPersonalizado(titulo: "Inicio", voltar: () {  }, sair: () {  },),
            Container(
              width: size.width * .6,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: BoxBorder.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.business_sharp, color: Colors.blue),
                  SizedBox(
                    width: size.width * .45,
                    child: Text(
                      "Empresa",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Agendamento",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.timer_outlined, color: AppColors.primaria),
                      Text(
                        "25/09/2025  8H",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CardProcedimento()
          ],
        ),
      ),
    );
  }
}