import 'package:flutter/material.dart';
import 'package:stesta_native/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          elevation: 0.0,
        ),
        body: Container(
          color: Colors.black87,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: SingleChildScrollView(
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        height: 150.0,
                        width: 150.0,
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 32),
                        child: Column(
                          children: [
                            TextFormField(
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                              decoration: InputDecoration(
                                hintText: "John doe",
                                hintStyle: TextStyle(
                                  color: Colors.white38,
                                ),
                                labelText: "Username",
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                              ),

                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Userame is required";
                                }

                                return null;
                              },
                              // onChanged: (value) {
                              //   name = value;
                              //   setState(() {});
                              // },
                            ),
                            TextFormField(
                              obscureText: true,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                              decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Password is required";
                                }

                                return null;
                              },
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      // onTap: () => moveToHome(context),

                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 300),
                                        width: 100,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 3.0,
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Log In",
                                          style: TextStyle(
                                              color: Colors.white,
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        8.0, 0, 8.0, 0),
                                    child: Container(
                                      child: Text(
                                        "|",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 35),
                                      ),
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () => Navigator.pushNamed(
                                          context, MyRoutes.registerRoute),
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 300),
                                        width: 100,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 3.0,
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Register",
                                          style: TextStyle(
                                              color: Colors.white,
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
