import 'package:flutter/material.dart';
import 'package:flutter_chat_app/components/buttons.dart';
import 'package:flutter_chat_app/components/textfields.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({
    super.key,
    required this.onTap
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  void signIn (){

  }

  final emailController = TextEditingController();
  final passworController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                // logo 
                const Icon(
                  Icons.message,
                  size: 90,
                ),

                const SizedBox(height: 50),
                
                // welcome back 
                Text('Welcome back, you have been missed',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[600]
                  ),
                ),

                const SizedBox(height: 20),
                  
                // email input 
                MyTextFields(
                  controller: emailController, 
                  hintText: 'Email', 
                  obscureText: false
                ),

                const SizedBox(height: 10),
                        
                // password input 
                MyTextFields(
                  controller: passworController, 
                  hintText: 'Password', 
                  obscureText: true
                ),

                const SizedBox(height: 20),
                  
                // sign in button 
                MyButtons(
                  onTap: signIn, 
                  text: 'Sign In'
                ),

                const SizedBox(height: 20),
                  
                // not a member 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not a member? '),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text('Register Now',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}