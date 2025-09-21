// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:sesi_check/ui/core/themes/app_colors.dart';
import 'package:sesi_check/ui/core/ui/card_procedimento.dart';
import 'package:sesi_check/ui/core/ui/empresa.dart';
import 'package:sesi_check/ui/home/view_models/home_view_model.dart';

import '../../../routing/routes.dart';
import '../../core/ui/app_bar_personalizado.dart';
import '../../core/ui/bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  HomeViewModel viewModel;
  HomeScreen({
    super.key,
    required this.viewModel,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    widget.viewModel.trocarWidgetHome(Iniciar(viewModel: widget.viewModel,));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      body: ValueListenableBuilder(valueListenable: widget.viewModel.loadingApi, builder: (_, loading, __) {

        if (loading!) {
              return const Center(child: CircularProgressIndicator());
            }
        
        return widget.viewModel.widget;

      }),
    );
  }
}

class AvaliarExperiencia extends StatelessWidget {
  const AvaliarExperiencia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(color: AppColors.terciaria),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 30),
                    Text(
                      "Inicio",
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
            SizedBox(
              width: size.width,
              child: Image.asset(
                "assets/images/logo_sesi_check.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: size.width * .8,
              child: Text(
                "Avalie sua experiência!",
                style: TextStyle(color: Colors.white, fontSize: 28),
                textAlign: TextAlign.center,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ...List.generate(
                      5,
                      (index) => Estrelas(preenchido: index < 4),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40
                    ),
                    SizedBox(
                      width: size.width * .3,
                      child: Text("Pouco Satisfeito", style: TextStyle(
                        color: AppColors.secundaria,
                      ),),
                    ),
                    SizedBox(
                      width: size.width * .3,
                      child: Text("Muito Satisfeito", style: TextStyle(color: AppColors.secundaria),),
                    ),
                    SizedBox(width: 10,)
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Caso deseje, registre uma sugestão para melhorar nossos serviços!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: size.width,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Registre aqui..."
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Estrelas extends StatelessWidget {
  const Estrelas({super.key, required this.preenchido});

  final bool preenchido;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        preenchido ? Icons.star : Icons.star_border_outlined,
        color: AppColors.secundaria,
        size: 60,
      ),
    );
  }
}

class Iniciar extends StatelessWidget {
  HomeViewModel viewModel;
  
  Iniciar({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(color: AppColors.primaria),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 30),
                    Text(
                      "Inicio",
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
            SizedBox(
              width: size.width,
              child: Image.asset(
                "assets/images/logo_sesi_check.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: size.width * .8,
              child: Column(
                children: [
                  Text(
                    "Seu atendimento acaba de começar!",
                    style: TextStyle(color: Colors.white, fontSize: 28),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Siga a orientação das placas do SESI Check e compareça ao 1º andar do Instituto SESI. ",
                    style: TextStyle(color: Colors.white, fontSize: 28),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Conecte-se na rede SESI Visitante e aproveite nossa wifi gratuita!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                viewModel.trocarWidgetHome(CheckinFeito(viewModel: viewModel));
              },
              child: Container(
                width: size.width * .8,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.secundaria,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Text("Iniciar", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CheckinFeito extends StatelessWidget {
  HomeViewModel viewModel;
  
  CheckinFeito({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          AppBarPersonalizado(titulo: "Inicio"),
          Empresa(nomeEmpresa: "Aluminios Soledade",),
          ValueListenableBuilder(valueListenable: viewModel.loadingApi, builder: (_, loading, __) {

        if (loading!) {
              return const Center(child: CircularProgressIndicator());
            }
        
        if(viewModel.realizouPreCheckin) {
          return InfoCheckin(senha: "2730", tempoEstimadoEspera: "1h40min");
        } else{
          return HorarioAgendamento(viewModel: viewModel);
        }
        

      }),
          CardProcedimento(status: 'Realizado',),
          CardProcedimento(status: 'Na Fila',),
          CardProcedimento(status: 'Aguardando',),
        ],
      ),
    );
  }
}

class InfoCheckin extends StatelessWidget {
  final String senha;
  final String tempoEstimadoEspera;

  const InfoCheckin({
    super.key,
    required this.senha,
    required this.tempoEstimadoEspera,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            "SUA SENHA É: $senha",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          "Falta $tempoEstimadoEspera",
          style: TextStyle(
            fontSize: 40,
            color: AppColors.primaria,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "para concluir o seu SESI Check",
          style: TextStyle(color: AppColors.primaria, fontSize: 20),
        ),
        SizedBox(
          width: size.width * .85,
          child: Text(
            "O tempo informado é uma média, podendo haver atrasos ou atendimentos mais rápidos.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.grey,
              fontSize: 14,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    );
  }
}

class HorarioAgendamento extends StatefulWidget {
HomeViewModel viewModel;

  HorarioAgendamento({
    super.key,
    required this.viewModel,
  });

  @override
  State<HorarioAgendamento> createState() => _HorarioAgendamentoState();
}

class _HorarioAgendamentoState extends State<HorarioAgendamento> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
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
          InkWell(
            onTap: (){
              widget.viewModel.realizarPreCheckin();

              showModalBottomSheet(
                      constraints: BoxConstraints(
                          maxWidth: size.width * 0.9,
                          minWidth: size.width * 0.9,
                          maxHeight: size.height * 0.3),
                      elevation: 0,
                      context: context,
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(child: Text("Agendamento realizado!", textAlign: TextAlign.center, style: TextStyle(color: AppColors.primaria, fontSize: 36))),
                              SizedBox(
                                width: size.width * .8,
                                child: Center(child: Text("Verifique como se preparar para cada procedimento e programe o seu tempo conosco na data e horário indicados.", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),)))
                            ],
                          ),
                        );
                      });
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: size.width,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: AppColors.secundaria
              ),
              child: Center(child: Text("Confirmar Agendamento", style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),)),
            ),
          )
        ],
      ),
    );
  }
}
