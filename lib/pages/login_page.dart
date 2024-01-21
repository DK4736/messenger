import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:messenger/components/my_text_field.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Column(
        children: [
          Icon(Icons.message,
          size:70,
          color: Colors.grey[800],),
          const Text(
            "Welcome back you\'ve been missed!",
            style:TextStyle(
              fontSize: 16,
            ),
          ),
          MyTextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,),
        ],

      )
    );
}
}