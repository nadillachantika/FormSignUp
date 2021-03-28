import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project 2',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      // home: Register(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sign Up'),
        ),
        body: SignUp(),
        // body: Profil()
        
      ),
    );
  }
}

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  bool checkBoxValue = false;
  bool checkBoxValue2 = false;
  @override
  Widget build(BuildContext context) {
    var column = Column();
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(8),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                width: 100,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.black12, shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Nadilla C. Putri",
                style: TextStyle(fontSize: 20, color: Colors.black87),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Masukkan Username",
                    hintStyle: TextStyle(color: Colors.black87),
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.black87)),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Masukkan Email",
                    hintStyle: TextStyle(color: Colors.black87),
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.black87)),
              ),

              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: checkBoxValue,
                    onChanged: (bool value) {
                      setState(() {
                        checkBoxValue = value;
                      });
                    },
                  ),
                  Text("Available to mentor")
                ],
              ),

              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: checkBoxValue2,
                    onChanged: (bool value) {
                      setState(() {
                        checkBoxValue2 = value;
                      });
                    },
                  ),
                  Text("Need Mentoring")
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Bio",
                    hintStyle: TextStyle(color: Colors.black87),
                    labelText: "Bio",
                    labelStyle: TextStyle(color: Colors.black87)),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Stack Username",
                    hintStyle: TextStyle(color: Colors.black87),
                    labelText: "Stack Username",
                    labelStyle: TextStyle(color: Colors.black87)),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Location",
                    hintStyle: TextStyle(color: Colors.black87),
                    labelText: "Location",
                    labelStyle: TextStyle(color: Colors.black87)),
              ),

              SizedBox(
                height: 10,
              ),
            ],
          )),
    );
  }
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool checkBoxValue = false;
  bool checkBoxValue2 = false;
  @override
  Widget build(BuildContext context) {
    var column = Column();
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.white,
        child: Column(children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            "Sign Up",
            style: TextStyle(fontSize: 20, color: Colors.black87),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Name",
                hintStyle: TextStyle(color: Colors.black87),
                labelText: "Name",
                labelStyle: TextStyle(color: Colors.black87)),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Username",
                hintStyle: TextStyle(color: Colors.black87),
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.black87)),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email",
                hintStyle: TextStyle(color: Colors.black87),
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.black87)),
          ),

          
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.black87),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black87)),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Confirm Password",
                hintStyle: TextStyle(color: Colors.black87),
                labelText: "Confirm Password",
                labelStyle: TextStyle(color: Colors.black87)),
          ),

          SizedBox(
            height: 10,
          ),
          Card(
            color: Colors.deepOrange,
            elevation: 5,
            child: Container(
                height: 50,
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {},
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
