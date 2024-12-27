import 'package:bumify/core/theme/app_pallete.dart';
import 'package:bumify/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:bumify/features/auth/view/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign Up',
                style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              CustomField(
                controller: nameController,
                hintText: 'Name',
              ),
              const SizedBox(height: 15),
              CustomField(
                controller: emailController,
                hintText: 'Email',
              ),
              const SizedBox(height: 15),
              CustomField(
                controller: passwordController,
                hintText: 'Password',
                isObscureText: true,
              ),
              const SizedBox(height: 30),
              AuthGradientButton(
                buttonText: "Sign Up",
                onTap: () {},
              ),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                    text: 'Already have an account? ',
                    style: Theme.of(context).textTheme.titleMedium,
                    children: const [
                      TextSpan(
                          text: 'Sign in',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Pallete.gradient2,
                          ))
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
