import 'package:flutter/material.dart';
import 'package:testing_aplikasi/views/registerdone.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color (0XFFF0C7D4),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding:  EdgeInsets.only(top: 60, bottom: 10),
            child: Text(
              "Silahkan Daftar", 
              style: TextStyle(fontFamily: 'OpenSansBold',fontSize: 21,)
              ),
          ),
          const Center(
            child: Image (image: AssetImage('assets/images/Logo2.png'), width: 150, height: 150,)
            ),
            Container(
              width: double.infinity,
              height: 38,
              margin: const EdgeInsets.only(left: 44, right: 45, top: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFFFEFEF),
                border: Border.all(color: Colors.grey
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(fontFamily: 'InterBold', fontSize: 12),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 30,bottom: 5),
                  suffixIcon: Icon(Icons.email, color: Color(0xFF343434),)

                ),
              ),
            ),

             Container(
              width: double.infinity,
              height: 38,
              margin: const EdgeInsets.only(left: 44, right: 45, top: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFFFEFEF),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(fontFamily: 'InterBold', fontSize: 12),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 30,bottom: 5),
                  suffixIcon: Icon(Icons.person, color:Color(0xFF343434),)
                  
                ),
              ),
            ),

            Container(
              width: double.infinity,
              height: 38,
              margin: const EdgeInsets.only(left: 44, right: 45, top: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFFFEFEF),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(fontFamily: 'InterBold', fontSize: 12),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 30,bottom: 5),
                  suffixIcon: Icon(Icons.remove_red_eye, color:Color(0xFF343434),)
                  
                ),
              ),
            ),

             Container(
              width: double.infinity,
              height: 38,
              margin: const EdgeInsets.only(left: 44, right: 45, top: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFFFEFEF),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(fontFamily: 'InterBold', fontSize: 12),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 30, bottom: 5),
                  suffixIcon: Icon(Icons.remove_red_eye, color:Color(0xFF343434),)
                  
                ),
              ),
            ),

             Container(
              width: double.infinity,
              height: 38,
              margin: const EdgeInsets.only(left: 44, right: 45, top: 10, bottom: 15),
              decoration: BoxDecoration(
                color: const Color(0xFFFFEFEF),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'No.Handphone',
                  hintStyle: TextStyle(fontFamily: 'InterBold', fontSize: 12),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 30, bottom: 5),
                  suffixIcon: Icon(Icons.call, color:Color(0xFF343434),)
                  
                ),
              ),           ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(value: isChecked, onChanged: (bool?value){
                    setState(() {
                      isChecked = value!;
                    });
                  },
                  activeColor: const Color(0xFF921A40),),
                  Text("Saya menyetujui Syarat Ketentuan \ndan Kebijakan Privasi", style: TextStyle(fontFamily: 'OpenSansRegular',fontSize: 11),)
                ],
              ),
            
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>RegisterDone()));
              },
              child: Container(
                width: 140,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFF921A40),
                  borderRadius: BorderRadius.circular(50),
                ),
                // ignore: sort_child_properties_last
                child:const Center(
                  child: Text('Daftar', style: TextStyle(fontFamily: 'InterBold', fontSize: 17, color: Colors.white), textAlign: TextAlign.center,
                  ),
                ),
                margin: const EdgeInsets.only(left: 60, right: 60, top: 20),
              ),
            ),

        ],
      ),
    );
  }
}