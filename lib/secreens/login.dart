import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Log in")),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset("assesst/img/icon.png"),
                ),
                Container(
                  child: Form(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 5, color: Colors.redAccent))),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          
                          TextFormField(
                            textInputAction: TextInputAction.go,
                            obscureText: true,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.password,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black87)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: Colors.redAccent))),
                          ),
                          SizedBox(height:20 ,),
                          Row(crossAxisAlignment: CrossAxisAlignment.center,

                              children: [Text("if you don't have accounr!  "),
                          InkWell(onTap: (){},
                              child: Text("Click here",style: TextStyle(color: Colors.redAccent))
                          )])
                          ,
                          Padding(padding: EdgeInsets.all(20)),
                          ElevatedButton(onPressed: (){}, child: Text("Log in" ,))
                        ]),
                  ),
                ),
              ],
            ),
          ),
        )
        // Center(child: Image.asset("assesst/img/icon.png",width: 100,height: 100,)),

        );
  }
}
