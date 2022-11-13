import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  var error = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Log in")),
        body: SingleChildScrollView(
          child: Container(
            height: 500,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
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
                            controller: username,
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
                            controller: password,
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
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("if you don't have accounr!  "),
                                InkWell(
                                    onTap: () {},
                                    child: Text("Click here",
                                        style:
                                            TextStyle(color: Colors.redAccent)))
                              ]),
                          Padding(padding: EdgeInsets.all(20)),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {});
                                print(username.text);
                                if (username.text == "wael" &&
                                    password.text == "123456") {
                                  Navigator.pushReplacementNamed(
                                      context, "home");
                                } else {
error=!error;
                                }
                              },
                              child: Text(
                                "Log in",
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Visibility(visible: error,
                              child: Text(" username or password error !",style: TextStyle(color: Colors.red),))
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
