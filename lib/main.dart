import 'package:flutter/material.dart';
import 'api/authentication.dart';

void main() {
  runApp(GeneralShop());
}

class GeneralShop extends StatelessWidget {
  const GeneralShop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'General Shop',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Authentication authentication = Authentication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('General Shop'),
      ),
      body: FutureBuilder(
        future: authentication.login(
            'abdallahsaber2017@gmail.com', 'abdallahsaber'),
        builder: (context, snapshot) {
          return Center(
            child: Text('logged'),
          );
        },
      ),
    );
  }
}
