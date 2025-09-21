import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sesi_check/ui/core/themes/app_colors.dart';

import '../../../routing/routes.dart';

class AppBarPersonalizado extends StatelessWidget {

  final String titulo;

  const AppBarPersonalizado({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: 340,
          child: Stack(
            children: [
              Container(
                width: size.width,
                height: 245,
                decoration: BoxDecoration(color: AppColors.primaria),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 30),
                      Text(
                        titulo,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      InkWell(
                        onTap: () {
                          context.go(Routes.login);
                        },
                        child: Text(
                          "Sair",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      border: BoxBorder.all(color: Colors.white, width: 4),
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1526779259212-939e64788e3c?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aW1hZ2VucyUyMGdyYXR1aXRhc3xlbnwwfHwwfHx8MA%3D%3D",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text("Ana Santos", style: TextStyle(fontSize: 42)),
      ],
    );
  }
}
