// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sesi_check/ui/core/themes/app_colors.dart';
import 'package:sesi_check/ui/core/ui/app_bar_personalizado.dart';
import 'package:sesi_check/ui/core/ui/bottom_navigation.dart';
import 'package:sesi_check/ui/notification/view_models/notification_view_model.dart';

// ignore: must_be_immutable
class NotificationScreen extends StatefulWidget {
  NotificationViewModel viewModel;

  NotificationScreen({
    super.key,
    required this.viewModel,
  });

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  
  @override
  void initState() {
    widget.viewModel.listarNotificacoesNaoLidas();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int tabSelecionada = 1;
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarPersonalizado(titulo: "Notificações"),
            Container(
              margin: EdgeInsets.all(20),
              width: size.width,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black26,
                  width: 1
                ),
                borderRadius: BorderRadius.circular(40)
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        tabSelecionada = 1;
                      });
                      widget.viewModel.listarNotificacoesNaoLidas();
                      
                    },
                    child: Container(
                      width: size.width  * .45,
                      height: 70,
                      decoration: BoxDecoration(
                        color: tabSelecionada == 1 ? Colors.white : Color(0xFFF2F2F2),
                        borderRadius: BorderRadius.circular(40)
                      ),
                      child: Center(child: Text("Não lidas", 
                      style: TextStyle(color:tabSelecionada == 1? AppColors.secundaria : Color(0xFFCFCFCF), fontWeight: FontWeight.normal),)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tabSelecionada = 2;
                      });
                      widget.viewModel.listarNotificacoesLidas();
                    },
                    child: Container(
                      width: size.width  * .45,
                      height: 70,
                      decoration: BoxDecoration(
                        color: tabSelecionada == 2 ? Colors.white : Color(0xFFF2F2F2),
                        borderRadius: BorderRadius.circular(40)
                      ),
                      child: Center(child: Text("Lidas", 
                      style: TextStyle(color: tabSelecionada == 2? AppColors.secundaria : Color(0xFFCFCFCF), fontWeight: FontWeight.normal),)),
                    ),
                  ),
                ],
              ),
            ),            
            ValueListenableBuilder<bool?>(
          valueListenable: widget.viewModel.loadingApi,
          builder: (_, loading, __) {
            if (loading!) {
              return const Center(child: CircularProgressIndicator());
            }

            if (widget.viewModel.notificacoes == null) {
              return const Center(
                child: Text("Nenhuma notificação encontrada."),
              );
            }

            return Column(
              children: [
                ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: widget.viewModel.notificacoes?.length,
                    itemBuilder: (_, index) {
                      final notificacao = widget.viewModel.notificacoes![index];
                      return NotificacaoCard(
                        titulo: notificacao!.titulo!,
                        corpo: notificacao.corpoTexto!,
                      );
                    })
              ],
            );
          },
        ),
          ],
        ),
      ),
    );
  }
}

class NotificacaoCard extends StatelessWidget {
  const NotificacaoCard({
    super.key, required this.titulo, required this.corpo,
  });

  final String titulo;
  final String corpo;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(titulo, style: TextStyle(color: AppColors.bottomUnselected, fontWeight: FontWeight.bold, fontSize: 24)),
          Text(corpo, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal)),
        ],
      ),
    );
  }
}