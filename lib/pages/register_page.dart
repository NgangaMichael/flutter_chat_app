import 'package:flutter/material.dart';

import '../components/buttons.dart';
import '../components/textfields.dart';

class RegisterPage extends StatefulWidget {
  final void Function ()? onTap;
  const RegisterPage({
    super.key,
    required this.onTap
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  void signup (){

  }

  final emailController = TextEditingController();
  final passworController = TextEditingController();
  final confirmpasswordController = TextEditingController();

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
                Text('Lets create an Account for you',
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

                const SizedBox(height: 10),
                        
                // confirm password password input 
                MyTextFields(
                  controller: confirmpasswordController, 
                  hintText: 'Confirm Password', 
                  obscureText: true
                ),

                const SizedBox(height: 20),
                  
                // sign in button 
                MyButtons(
                  onTap: signup, 
                  text: 'Sign Up'
                ),

                const SizedBox(height: 20),
                  
                // not a member 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already a member? '),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text('Login Here',
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