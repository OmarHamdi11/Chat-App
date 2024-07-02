import 'package:chatapp/widgets/custom_button.dart';
import 'package:chatapp/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff314E69),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            Image.asset('assets/images/scholar.png'),
            const Text(
              'Scholar Chat',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontFamily: 'Pacifico',
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            const Row(
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              labelText: 'Email',
              hintText: 'Enter your email',
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(
              labelText: 'Password',
              hintText: 'Enter your password',
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomButton(),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account ?',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '  Register',
                  style: TextStyle(color: Color(0xffC7EDE6)),
                ),
              ],
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
