// // screens/signin_page.dart
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import '../widgets/custom_button.dart';
// import '../widgets/custom_text_field.dart';
//
// class SignInPage extends StatefulWidget {
//   const SignInPage({Key? key}) : super(key: key);
//
//   @override
//   State<SignInPage> createState() => _SignInPageState();
// }
//
// class _SignInPageState extends State<SignInPage> {
//   final _formKey = GlobalKey<FormState>();
//   final _nameController = TextEditingController();
//   final _emailController = TextEditingController();
//   final _phoneController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _confirmPasswordController = TextEditingController();
//
//   @override
//   void dispose() {
//     _nameController.dispose();
//     _emailController.dispose();
//     _phoneController.dispose();
//     _passwordController.dispose();
//     _confirmPasswordController.dispose();
//     super.dispose();
//   }
//
//   Future<void> registerWithEmail(String email, String password) async {
//     try {
//       await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       print("Registration Successful");
//       Navigator.pushNamedAndRemoveUntil(
//         context,
//         '/home',
//         (route) => false,
//       );
//     } on FirebaseAuthException catch (e) {
//       print("Error: ${e.message}");
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text(e.message ?? "Registration failed")),
//       );
//     }
//   }
//
//   void _handleSignIn() {
//     if (_formKey.currentState!.validate()) {
//       registerWithEmail(_emailController.text, _passwordController.text);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sign Up'),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         foregroundColor: Theme.of(context).primaryColor,
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(24.0),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(height: 32),
//
//                 // Create account text
//                 Text(
//                   'Create Account',
//                   style: Theme.of(context).textTheme.headlineLarge,
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   'Fill in your details to get started',
//                   style: Theme.of(context).textTheme.bodyMedium,
//                 ),
//                 const SizedBox(height: 48),
//
//                 // Name field
//                 CustomTextField(
//                   hintText: 'Enter your full name',
//                   labelText: 'Full Name',
//                   controller: _nameController,
//                   prefixIcon: Icons.person,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your name';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16),
//
//                 // Email field
//                 CustomTextField(
//                   hintText: 'Enter your email',
//                   labelText: 'Email',
//                   controller: _emailController,
//                   keyboardType: TextInputType.emailAddress,
//                   prefixIcon: Icons.email,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your email';
//                     }
//                     if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
//                         .hasMatch(value)) {
//                       return 'Please enter a valid email';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16),
//
//                 // Phone field
//                 CustomTextField(
//                   hintText: 'Enter your phone number',
//                   labelText: 'Phone Number',
//                   controller: _phoneController,
//                   keyboardType: TextInputType.phone,
//                   prefixIcon: Icons.phone,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your phone number';
//                     }
//                     if (value.length < 10) {
//                       return 'Please enter a valid phone number';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16),
//
//                 // Password field
//                 CustomTextField(
//                   hintText: 'Enter your password',
//                   labelText: 'Password',
//                   controller: _passwordController,
//                   isPassword: true,
//                   prefixIcon: Icons.lock,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your password';
//                     }
//                     if (value.length < 6) {
//                       return 'Password must be at least 6 characters';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 16),
//
//                 // Confirm password field
//                 CustomTextField(
//                   hintText: 'Confirm your password',
//                   labelText: 'Confirm Password',
//                   controller: _confirmPasswordController,
//                   isPassword: true,
//                   prefixIcon: Icons.lock_outline,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please confirm your password';
//                     }
//                     if (value != _passwordController.text) {
//                       return 'Passwords do not match';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 32),
//
//                 // Sign up button
//                 CustomButton(
//                   text: 'Sign Up',
//                   onPressed: _handleSignIn,
//                   icon: Icons.person_add,
//                 ),
//                 const SizedBox(height: 24),
//
//                 // Login link
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text("Already have an account? "),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.pushReplacementNamed(context, '/login');
//                       },
//                       child: Text(
//                         'Login',
//                         style: TextStyle(
//                           color: Theme.of(context).primaryColor,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:easy_localization/easy_localization.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> registerWithEmail(String email, String password) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print("Registration Successful");
      Navigator.pushNamedAndRemoveUntil(
        context,
        '/home',
        (route) => false,
      );
    } on FirebaseAuthException catch (e) {
      print("Error: ${e.message}");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message ?? "Registration failed".tr())),
      );
    }
  }

  void _handleSignIn() {
    if (_formKey.currentState!.validate()) {
      registerWithEmail(_emailController.text, _passwordController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sign_up'.tr()),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).primaryColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 32),

                // Create account text
                Text(
                  'create_account'.tr(),
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 8),
                Text(
                  'fill_details'.tr(),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 48),

                // Name field
                CustomTextField(
                  hintText: 'enter_full_name'.tr(),
                  labelText: 'full_name'.tr(),
                  controller: _nameController,
                  prefixIcon: Icons.person,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please_enter_name'.tr();
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Email field
                CustomTextField(
                  hintText: 'enter_email'.tr(),
                  labelText: 'email'.tr(),
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: Icons.email,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please_enter_email'.tr();
                    }
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                        .hasMatch(value)) {
                      return 'please_enter_valid_email'.tr();
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Phone field
                CustomTextField(
                  hintText: 'enter_phone'.tr(),
                  labelText: 'phone_number'.tr(),
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  prefixIcon: Icons.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please_enter_phone'.tr();
                    }
                    if (value.length < 10) {
                      return 'please_enter_valid_phone'.tr();
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Password field
                CustomTextField(
                  hintText: 'enter_password'.tr(),
                  labelText: 'password'.tr(),
                  controller: _passwordController,
                  isPassword: true,
                  prefixIcon: Icons.lock,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please_enter_password'.tr();
                    }
                    if (value.length < 6) {
                      return 'password_min_length'.tr();
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Confirm password field
                CustomTextField(
                  hintText: 'confirm_password'.tr(),
                  labelText: 'confirm_password_label'.tr(),
                  controller: _confirmPasswordController,
                  isPassword: true,
                  prefixIcon: Icons.lock_outline,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please_confirm_password'.tr();
                    }
                    if (value != _passwordController.text) {
                      return 'passwords_not_match'.tr();
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 32),

                // Sign up button
                CustomButton(
                  text: 'sign_up'.tr(),
                  onPressed: _handleSignIn,
                  icon: Icons.person_add,
                ),
                const SizedBox(height: 24),

                // Login link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("already_have_account".tr()),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      child: Text(
                        'login'.tr(),
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
