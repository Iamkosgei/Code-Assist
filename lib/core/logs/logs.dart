import 'package:code_assist/core/logs/bloc_observer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void setUpLoging() {
  if (kDebugMode) {
    Bloc.observer = MyBlocObserver();
  }
}
