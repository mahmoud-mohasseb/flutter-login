import 'package:flutter/material.dart';
import 'package:chatapplication/componenets/my_textfield.dart';
import 'package:chatapplication/componenets/square_tile.dart';
import 'package:chatapplication/componenets/my_button.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);
  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                Text(
                  "Welcome Back you have been missed",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 25),
               // username textfiled
               //  username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // sign in button
                MyButton(
                  onTap: signUserIn,
                ),

                const SizedBox(height: 50),

                Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(child: Divider(
                      thickness: 0.8,
                      color: Colors.grey[400],
                    ),),
                    Padding(padding:const EdgeInsets.symmetric(horizontal:10.0),
                      child: Text("or continue with",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(child: Divider(
                      thickness: 0.5,
                    color: Colors.grey[400],
                    ),
                    ),
                  ],
                ),
                ),
                const SizedBox(height:50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:const [
                    //
                    SquareTile(imagePath:'lib/images/google.png'),
                    const SizedBox(width: 25),
                    SquareTile(imagePath:'lib/images/apple.png'),
                  ],
                ),
                const SizedBox(height: 50),
              //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'not a member ?',
                      style:TextStyle(
                          color: Colors.grey[700]),

                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
      ),
    );
  }
}

