import 'package:flutter/material.dart';
import 'package:sesi_check/ui/core/ui/app_bar_personalizado.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarPersonalizado(titulo: "Notificações", voltar: (){}, sair: (){})
          ],
        ),
      ),
    );
  }
}