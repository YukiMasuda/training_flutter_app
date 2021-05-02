import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_flutter_app/Pages/add_memo.dart';
import 'package:training_flutter_app/model/main_model.dart';

class MainModel extends ChangeNotifier{
  var list = ['無下限呪術','六眼','無量空処'];

  void changeListText() {
    list = ['禅院','十種影法師'];
    print(list);
    print('もでもで');
    notifyListeners();
  }

}