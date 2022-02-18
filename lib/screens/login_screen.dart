import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/widgets/text_field_input.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Text('From login Screen'),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //svg image
              Flexible(
                child: Container(),
                flex: 1,
              ),
              SvgPicture.asset(
                'assets/ic_instagram.svg',
                color: primaryColor,
                height: 64,
              ),
              const SizedBox(height: 64),
              //Text field input for email
              TextFieldInput(
                controller: _emailController,
                hintText: "Enter with your email",
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 24),
              //Text field input for password
              TextFieldInput(
                controller: _passwordController,
                hintText: "Enter with your password",
                textInputType: TextInputType.text,
                isPass: true,
              ),
              const SizedBox(height: 24),
              //button loginScreen
              Container(
                child: Text("Log in"),
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  color: blueColor,
                ),
              ),
              const SizedBox(height: 12),
              
              Flexible(
                child: Container(),
                flex: 1,
              ),

              //Trasnitioning to singing up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text("Don't have an account?"),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    child: const Text(" Sing in", style: TextStyle(fontWeight: FontWeight.bold),),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  )
                ],
              ),
              const SizedBox(height:2),

            ],
          ),
        ),
      ),
    );
  }
}
