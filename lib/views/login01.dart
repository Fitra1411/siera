import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:testing_aplikasi/homepage.dart';
import 'package:testing_aplikasi/lupa_password/lupapassword.dart';
import 'package:testing_aplikasi/views/register01.dart';

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color (0XFFF0C7D4),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Silahkan Login',
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSansBold'
                  ),
              ),
              const SizedBox(height: 20),
              const Image(
                image : AssetImage('assets/images/logo2.png'),
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(fontFamily: 'InterBold',fontSize: 12.9),
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(fontFamily: 'InterBold',fontSize: 12.9),
                    prefixIcon: const Icon(Icons.lock,),
                    suffixIcon: const Icon(Icons.visibility),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Lupapassword()//Lupa Password
                  ));
                },
                child: const Text(
                  'Lupa Password',
                  style: TextStyle(
                    color: Color (0XFF921A40), 
                    fontWeight: FontWeight.bold, 
                    fontFamily: ('InterBold')
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Homepage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color (0XFF921A40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                ),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'InterBold'),
                  ),
              ),
              const SizedBox(height: 20),
              Text.rich(
                TextSpan(
                  text: 'Belum punya akun, Maniz? ',
                  style: const TextStyle(fontFamily: 'InterBold'),
                  children: [
                    TextSpan(
                      text: 'Daftar sini!',
                      style: const TextStyle(color: Color (0XFF921A40), fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline, decorationColor: Color (0XFF921A40)
                      ),
                      recognizer: TapGestureRecognizer()..onTap=() {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const RegisterView()
                        ));
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text('Atau',
              style: TextStyle(fontFamily: 'InterMedium'
              ),
              ),
              const SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Image.asset('assets/images/gugel.png',width: 30,height: 30,),
                label: const Text('Sign in with Google',
                style: TextStyle(
                  fontFamily: 'InterBold',color: Colors.grey,
                ),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: const BorderSide(color: Colors.grey),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
