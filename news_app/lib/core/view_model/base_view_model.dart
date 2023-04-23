import 'package:flutter/material.dart';
import 'package:news_app/core/view/view_state.dart';

class BaseViewModel extends ChangeNotifier {
  ViewState _state = const ViewState.loading();

  ViewState get state => _state;

  bool isDisposed = false;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }

  @override
  void dispose() {
    isDisposed = true;
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (isDisposed) return;
    super.notifyListeners();
  }
}
