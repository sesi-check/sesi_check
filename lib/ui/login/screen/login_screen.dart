import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sesi_check/ui/core/themes/app_colors.dart';
import '../../../routing/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primaria,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60
              ),
              SizedBox(
                width: size.width,
                child: Image.asset("assets/images/logo_sesi_check.png", fit: BoxFit.cover,)),
              Center(
                child: SizedBox(
                  width: size.width * .8,
                  child: Text("SESI Check é a solução que ajuda você em todos os procedimentos de saúde ocupacional: exames e consultas admissionais, periódicos e demissionais", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),)),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Colors.white
                  ),
                  label: Text("Login:")
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Colors.white
                  ),
                  label: Text("Senha:")
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: InkWell(
                  onTap: () {
                    context.go(Routes.home);
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green[600],
                    ),
                    child: Center(child: Text("Entrar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),)),
                  ),
                ),
              ),
              Text("Esqueceu a senha?", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),)
            ],
          ),
        ),
      ),
    );
  }
}