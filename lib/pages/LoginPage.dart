import 'package:flutter/material.dart';
import 'package:flutter_application_test/config/AppIcons.dart';
import 'package:flutter_application_test/pages/HomePage.dart';
import 'package:flutter_application_test/styles/AppColors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      print("forgot password pressed");
                    },
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    child: Text("forgot password"),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("/main");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber[900],
                      foregroundColor: Colors.black,
                    ),
                    child: Text("Login"),
                  ),
                ),
                Spacer(),
                Text(
                  "or login with ",
                  style: TextStyle(
                    color: AppColors.font,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      print("google login");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppIcons.ic_google,
                          width: 35,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Login with Google")
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                      onPressed: () {
                        print("fb login");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppIcons.ic_facebook,
                            width: 35,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Logiin with FaceBook")
                        ],
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "dont have account",
                      style: TextStyle(
                        color: AppColors.font,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.amber),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          // color: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
