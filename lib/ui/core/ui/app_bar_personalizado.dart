import 'package:flutter/material.dart';
import 'package:sesi_check/ui/core/themes/app_colors.dart';

class AppBarPersonalizado extends StatelessWidget {

  final String titulo;
  final Function() voltar;
  final Function() sair;

  const AppBarPersonalizado({super.key, required this.titulo, required this.voltar, required this.sair});

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
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () => voltar,
                        child: Positioned.fill(
                          top: 15,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.arrow_back, color: Colors.white),
                                Text(
                                  "Voltar",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Início",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => sair,
                        child: Positioned.fill(
                          top: 15,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "Sair",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
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
