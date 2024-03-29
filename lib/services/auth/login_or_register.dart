import 'package:flutter/material.dart';
import 'package:messenger/pages/login_page.dart';
import 'package:messenger/pages/register_page.dart';


class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

  //show Login screen
  bool showLoginPage=true;

  //toggle between login and register page

  void togglePages(){
    setState(() {
      showLoginPage=!showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(onTap: togglePages);
    }
    else{
      return RegisterPage(onTap: togglePages);
    }
    return const Placeholder();
  }
}
