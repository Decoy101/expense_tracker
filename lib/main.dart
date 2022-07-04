import 'package:flutter/material.dart';
import './widgets/new_transaction.dart';
import './widgets/transaction_list.dart';
import './widgets/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void startAddNewTransaction(BuildContext ctx){
     
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.add))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Text('CHART!'),
                  elevation: 5,
                ),
              ),
              UserTransactions(),
            ],
          ),
        ),
        floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: (){}),
        );
  }
}
