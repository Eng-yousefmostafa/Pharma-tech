import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          Icon(
            Icons.medical_services,
            size: 200,
            color: Colors.red,
          ),
 Container(
              margin: EdgeInsets.all(15),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "patient id",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
              )),
  SizedBox(height: 15),

          Container(
              margin: EdgeInsets.all(15),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
              )),
 Container(
            margin: EdgeInsets.all(15),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return FirstAppPage();
                }));
  },
              child: Text(
                "Login",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
   ),
          ),
        ],
      ),
    )));
  }
}
class FirstAppPage extends StatefulWidget {
  const FirstAppPage({Key? key}) : super(key: key);

  @override
  State<FirstAppPage> createState() => _FirstAppPageState();
}

class _FirstAppPageState extends State<FirstAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text("A"),
                ),
                accountName: Text("abdallah_elshieksh"),
                accountEmail: Text("bloodxxx911@gmail.com")),
            ListTile(
              title: Text(
                "about us",
              ),
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          Icon(
            Icons.medical_services,
            size: 200,
            color: Colors.red,
          ),
          
          Container(
              margin: EdgeInsets.all(15),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "patient id",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
              )),
          SizedBox(height: 15),

          Container(
              margin: EdgeInsets.all(15),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
              )),
          Container(
            margin: EdgeInsets.all(15),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return FirstAppPage();
                }));
              },
              child: Text(
                "Login",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    )));
  }
}

class FirstAppPage extends StatefulWidget {
  const FirstAppPage({Key? key}) : super(key: key);

  @override
  State<FirstAppPage> createState() => _FirstAppPageState();
}

class _FirstAppPageState extends State<FirstAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text("A"),
                ),
                accountName: Text("abdallah_elshieksh"),
                accountEmail: Text("bloodxxx911@gmail.com")),
            ListTile(
              title: Text(
                "about us",
              ),
              leading: Icon(Icons.help_center),
            ),
            ListTile(
              title: Text(
                " help",
              ),
              leading: Icon(Icons.help),
            ),
            ListTile(
              title: Text(
                "log out",
 ),
              leading: Icon(Icons.exit_to_app),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [SizedBox(height: 20,),
            Row(

              children: [
                InkWell(onTap: ()
          {Navigator.of(context).push(MaterialPageRoute(builder: (context){return Ilness() ;}));},
 child: Expanded(
                    child: Container(margin: EdgeInsets.all(15),alignment: Alignment.center,
                         width: 160,
                        height: 180,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Text("The most Known diseases ",
style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 33,
                                    fontWeight: FontWeight.bold)),

                          ],
                        )),
                  ),
                ),
InkWell(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){return Result() ;}));},
                  child: Expanded(
                    child: Container(margin: EdgeInsets.all(15),alignment: Alignment.center,
                      width: 160,
                      height: 180,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("result",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 33,
                              fontWeight: FontWeight.bold)),
                    ),
  ),
                )
              ],
            ),
  SizedBox(height: 20,),
            InkWell(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){return Reservation() ;}));},
                child: Expanded(
                    child: Container(margin: EdgeInsets.all(15),
                      width:double.infinity,
                      height: 180,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),child: Text("Reservation",style: TextStyle(
          color: Colors.white,
          fontSize: 33,
          fontWeight: FontWeight.bold)),

                    ) )  )
          ],
        ),
      ),
    );
  }
}
class Ilness extends StatefulWidget {
  const Ilness({Key? key}) : super(key: key);

  @override
  State<Ilness> createState() => _IlnessState();
}
class _IlnessState extends State<Ilness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}
class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
class Reservation extends StatefulWidget {
  const Reservation({Key? key}) : super(key: key);

  @override
  State<Reservation> createState() => _ReservationState();
}
class _ReservationState extends State<Reservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
              
