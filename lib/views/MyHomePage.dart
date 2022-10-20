import 'package:flutter/material.dart';
import 'package:raterprog/models/user_bloc.dart';
import 'package:raterprog/views/login.dart';

import '../coponents/NavigationDrawer.dart';
import '../models/user_models.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController name1 = TextEditingController();
  final TextEditingController name2 = TextEditingController();

  final formkey = GlobalKey<FormState>();
  bool showpass = false;
  ConnexionBloc? _bloc;
  @override
  void initState() {
    super.initState();

    _bloc = new ConnexionBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
        centerTitle: false,
        title: Text('ratedApp'),
      ),
      drawer: NavigationDrawerWidget(),
      body: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.all(25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/rate1.png'),
              SizedBox(height: 20),
              TextField(
                controller: name1,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  labelText: 'entrez votre username',
                  icon: Icon(Icons.add),
                  iconColor: Colors.amber,
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                onSubmitted: (value) {
                  if (formkey.currentState!.validate()) {
                    loginF();
                  }
                },

                /*    validator: (value){
                  if (value.isEmpty) {
                    return 'champs requi';
                  }
                }, */
              ),
              SizedBox(height: 20),
              TextField(
                  controller: name2,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    labelText: 'entrez le mot de passe ',
                    icon: Icon(Icons.add),
                    iconColor: Colors.amber,
                  ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  onSubmitted: (value) {
                    if (formkey.currentState!.validate()) {
                      loginF();
                    }
                  }),
              SizedBox(height: 25),
              FloatingActionButton(
                onPressed: () async {
                  print("%%%%%%%%%");
                  if (name1.text != "" && name2.text != "") {
                    print("MMMMMMMMMMMMMM");
                    User user =
                        User(username: name1.text, password: name2.text);
                    var success = await _bloc!.logUser(user, success: false);
                    if (success) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => login(),
                        ),
                      );
                    }
                  }
                },
                backgroundColor: Colors.blue.shade800,
                child: const Icon(Icons.navigation),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void loginF() {
    print("*************");
    User user = User(username: name1.text, password: name2.text);
    if (_bloc!.logUser(user) == true) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => login(),
        ),
      );
    }
  }
}
