import 'package:createachannel/OnBoarding-Hany/OnBoarding.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Center(
              child: Image.asset(
            'assets/images/logo.png',
            width: 268,
            height: 400,
          )),
          MaterialButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoarding(),));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65.0,vertical: 6),
              child: Text(
                'Start',
                style: GoogleFonts.aclonica(
                    textStyle:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.w400)),
              ),
            ),
            color: Color(0xff8588C7),
            textColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
          ),
          SizedBox(height: 30,),
          // MaterialButton(
          //   onPressed: () {},
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 6),
          //     child: Text(
          //       'Contact us',
          //       style: GoogleFonts.aclonica(
          //           textStyle:
          //           TextStyle(fontSize: 35, fontWeight: FontWeight.w400)),
          //     ),
          //   ),
          //   color: Color(0xff8588C7),
          //   textColor: Colors.white,
          //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
          // ),
          // SizedBox(height: 30,),
          // MaterialButton(
          //   onPressed: () {},
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 6),
          //     child: Text(
          //       'About App',
          //       style: GoogleFonts.aclonica(
          //           textStyle:
          //           TextStyle(fontSize: 35, fontWeight: FontWeight.w400)),
          //     ),
          //   ),
          //   color: Color(0xff8588C7),
          //   textColor: Colors.white,
          //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
          // )
        ],
      ),
    );
  }
}
