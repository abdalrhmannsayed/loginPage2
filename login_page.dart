import 'package:flutter/material.dart';
import 'package:login_page/widget/button.dart';
import 'package:login_page/widget/login_model.dart';
import 'package:login_page/widget/squareTile.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    // Sign in user
    void signInUser() {}

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50),
        
                // Logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
        
                const SizedBox(height: 50),
        
                // welcome back, you've been missed!
                Text(
                  'Welcome back, you\'ve been missed!',
                  style: TextStyle(color: Colors.grey[70], fontSize: 16),
                ),
        
                const SizedBox(height: 25),
        
                // username
                LoginModel(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),
        
                const SizedBox(height: 10),
        
                // password
                LoginModel(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
        
                const SizedBox(height: 10),
        
                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      )
                    ],
                  ),
                ),
        
                const SizedBox(height: 25),
        
                // sign in button
                Button(onTap: signInUser),
        
                const SizedBox(height: 30),
        
                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
        
                const SizedBox(height: 25),
        
                // google + apple sign in button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SquareTile(imagePath: 'assets/google.png'),
                    SizedBox(width: 20),
                    SquareTile(imagePath: 'assets/apple.png'),
                  ],
                ),
        
                const SizedBox(height: 25),
        
                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'REGISTER',
                      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
