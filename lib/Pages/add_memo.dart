import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddMemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

          //AppBarの左に配置するやつらしい
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          children: [
            TextField(
              //この二行が複数行を可能にするらしい。
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "ここに入力してください",
              ),
            ),
          ],
        ),
      ),
    );
    // よくわからん、けんたろう解説待ち-> done
    throw UnimplementedError();
  }

}