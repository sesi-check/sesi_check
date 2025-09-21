import 'package:flutter/material.dart';
import 'package:sesi_check/domain/models/notificacao/notificacao_model.dart';

class NotificationViewModel {

  set _loading(bool? loading) => loadingApi.value = loading;
  bool? get loading => loadingApi.value;
  final loadingApi = ValueNotifier<bool?>(null);

  set _notificacao(List<NotificacaoModel?>? notificacoes) => notificacoesApi.value = notificacoes;
  List<NotificacaoModel?>? get notificacoes => notificacoesApi.value;
  final notificacoesApi = ValueNotifier<List<NotificacaoModel?>?>(null);

  final List<NotificacaoModel?> _noti = [
    NotificacaoModel(id: 1, titulo: "Fique atento ao dia do seu exame periódico", corpoTexto: "Compareça ao SESI no dia 25/09/2025, às 10 horas. Para agilizar seu atendimento e conferir o preparo de cada exame, realize agora mesmo o pré-check-in. Av. Orlando Gomes, 1737, Piatã CEP 41650010 - Salvador/BA (71) 3503-7400 Exibir no mapa", lida: false),
    NotificacaoModel(id: 1, titulo: "Fique atento ao dia do seu exame periódico", corpoTexto: "Compareça ao SESI.", lida: false),
    NotificacaoModel(id: 1, titulo: "Fique atento ao dia do seu exame periódico", corpoTexto: "Compareça ao SESI no dia 25/09/2025, às 10 horas. ", lida: true),
  ];

  listarNotificacoesNaoLidas (){
    _loading = true;
    _notificacao = _noti.where((n)=> n!.lida == true).toList();
    _loading = false;
  }

  listarNotificacoesLidas (){
    _loading = true;
    _notificacao = _noti.where((n)=> n!.lida == false).toList();
    _loading = false;
  }


}