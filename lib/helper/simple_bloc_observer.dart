import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('change = $change');
    // TODO: implement onChange
  }
  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }
  
  @override
  void onClose(BlocBase bloc) {
    // TODO: implement onClose
  }
  
  @override
  void onCreate(BlocBase bloc) {
    // TODO: implement onCreate
  }
  
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }
  
  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }
}