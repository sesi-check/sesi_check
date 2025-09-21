import 'package:flutter/material.dart';

class HomeViewModel {
  set _loading(bool? loading) => loadingApi.value = loading;
  bool? get loading => loadingApi.value;
  final loadingApi = ValueNotifier<bool?>(null);

  set _widget(Widget? widget) => widgetApi.value = widget;
  Widget get widget => widgetApi.value!;
  final widgetApi = ValueNotifier<Widget?>(null);

  trocarWidgetHome(Widget widget){
    _loading = true;
    _widget = widget;
    _loading = false;
  }
}