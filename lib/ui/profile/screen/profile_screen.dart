// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sesi_check/ui/core/themes/app_colors.dart';
import 'package:sesi_check/ui/core/ui/bottom_navigation.dart';

import '../../core/ui/app_bar_personalizado.dart';
import '../../core/ui/empresa.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarPersonalizado(titulo: "Perfil"),
            Empresa(nomeEmpresa: "Aluminios Soledade"),
            InfoPerfil(titulo: 'CPF', valor: '000.000.000-00'),
            InfoPerfil(titulo: 'Data de Nascimento', valor: '00/00/0000',)
          ],
        ),
      ),
    );
  }
}

class InfoPerfil extends StatelessWidget {
  const InfoPerfil({
    Key? key,
    required this.titulo,
    required this.valor,
  }) : super(key: key);

  final String titulo;
  final String valor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            
            children: [
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: AppColors.bottomSelected,
                  borderRadius: BorderRadius.circular(8)
                ),
              ),
              SizedBox(width: 15),
              Text(titulo),
            ],
          ),
          Text(valor)
        ],
      ),
    );
  }
}
