import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farma_tech/loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';


class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
  late String userName;
  late String myEmail;
  late String myPassward;
  final GlobalKey<FormState> FormFeild = GlobalKey<FormState>();
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  signUp() async {
    var data = FormFeild.currentState;
    if (data!.validate()) {
      data.save();

      try {
        final credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
          email: myEmail,
          password: myPassward,
        );
        return credential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          AwesomeDialog(
              context: context, title: "error", body: Text("weak passward"))
            ..show();
        } else if (e.code == 'email-already-in-use') {
          AwesomeDialog(context: context,
              title: "error",
              body: Text('The account already exists for that email.'))
            ..show();
        }
      } catch (e) {
        print(e);
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          children: [
                            Container(
                                height: 200,
                                child: Icon(
                                  Icons.medical_services, size: 220, color: Colors.red,)),
                            Text(
                              'Pharma_Tech',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Form(
                            key: FormFeild,
                            child: Column(
                                children: [
                                  Container(margin: EdgeInsets.all(15),
                                    child: TextFormField(
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "user name required";
                                        }
                                      },
                                      onSaved: (val) {
                                        userName = val!;
                                      },
                                      decoration: InputDecoration(icon: Icon(Icons.person),
                                          hintText: "User name",

                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(15))),
                                      keyboardType: TextInputType.name,
                                      textInputAction: TextInputAction.next,),


                                  ),
                                  SizedBox(height: 10),

                                  Container(margin: EdgeInsets.all(15),

                                    child: TextFormField(
                                      onSaved: (val) {
                                        myEmail = val!;
                                      },
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Email required";
                                        }

                                        if (!value.contains("@gmail.com")) {
                                          return "Email Not Vaild";
                                        }
                                        return null;
                                      },
                                      keyboardType: TextInputType.emailAddress,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(icon: Icon(Icons.email),
                                          hintText: " user Email",
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(15))),


                                    ),),
                                  SizedBox(height: 10),
                                  Container(        margin: EdgeInsets.all(15),

                                    child: TextFormField(obscureText: true,decoration: InputDecoration(
                                        icon: Icon(Icons.lock), suffix: Icon(Icons.remove_red_eye),
                                        hintText: "password",
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(15))),
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.done,
                                      onSaved: (val) {
                                        myPassward = val!;
                                      },
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Passward required";
                                        }
                                        if (val.length < 8) {
                                          return "passward at least 8 characters";
                                        }
                                        return null;
                                      },


                                    ),


                                  ),
                                ])),Container(margin: EdgeInsets.all(15),width: double.infinity,height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15) ),
                          child: MaterialButton(color: Colors.blue,
                            onPressed: ()async {
                              var respones=await signUp();

                              if(respones!=null&&FormFeild.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),));
                              }} ,
                            child: Text("Register",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),



                      ])),
            )));

  }

}
