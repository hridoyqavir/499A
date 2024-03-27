// // screens/login_screen.dart
// import 'package:flutter/material.dart';
// import 'package:your_app/api/auth_api.dart'; // Import API for user authentication
// import 'package:project007/home_screen.dart';
// class LoginScreen extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//
//   void _login(BuildContext context) async {
//     final String email = emailController.text;
//     final String password = passwordController.text;
//     final bool success = await AuthApi.login(email, password);
//     if (success) {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//             builder: (context) =>
//                 HomeScreen()), // Navigate to home screen after successful login
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Text('Invalid email or password'),
//         duration: Duration(seconds: 3),
//       ));
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(labelText: 'Email'),
//             ),
//             TextField(
//               controller: passwordController,
//               decoration: InputDecoration(labelText: 'Password'),
//               obscureText: true,
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () => _login(context),
//               child: Text('Login'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:project007/home_screen.dart'; // Import home screen after successful login

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _login(BuildContext context) {
    final String email = emailController.text;
    final String password = passwordController.text;
    // Dummy authentication logic (replace with your actual authentication logic)
    if (email == 'user@example.com' && password == 'password') {
      // Navigate to home screen after successful login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Invalid email or password'),
        duration: Duration(seconds: 3),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _login(context),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
