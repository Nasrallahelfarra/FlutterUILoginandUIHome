//Generalized observer provides flutter app a way to intimate state changes
//to the subscriber widgets, this way we can propagate changes across widgets

import 'package:flutter_test_1/data/model/ResultRespone.dart';

enum ObserverState { INIT, LIST_CHANGED, QUESTIONS, NewProduct,GetDetailsProduct ,
  addRating,GetRating,AddToCat,GetCountTtemCart ,UpdateToCat,GetTotal,GetInfo,
  GetShoppingMethode,GetPaymentMethods,GetCurrency,AddToFavarit,DeletFavarit,GetDetailsMyOrder}

abstract class StateListenerStatus {
  void onStateChanged(ResultRespone mResultRespone);
}

//Singleton reusable class
class StateProviderStatus {

  List<StateListenerStatus> observers;

  static final StateProviderStatus _instance = new StateProviderStatus.internal();
  factory StateProviderStatus() => _instance;

  StateProviderStatus.internal() {
    observers = new List<StateListenerStatus>();
    initState();
  }

  void initState() async {
    notify(ObserverState.INIT);
  }

  void subscribe(StateListenerStatus listener) {
    observers.add(listener);
  }

  void notify(dynamic state) {
    observers.forEach((StateListenerStatus obj) => obj.onStateChanged(state));
  }

  void dispose(StateListenerStatus thisObserver) {
    for (var obj in observers) {
      if (obj == thisObserver) {
        observers.remove(obj);
      }
    }
  }
}
