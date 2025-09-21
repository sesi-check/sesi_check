import 'package:flutter/material.dart';

import '../../core/ui/app_bar_personalizado.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarPersonalizado(titulo: "Perfil", voltar: (){}, sair: (){})
          ],
        ),
      ),
    );
  }
}