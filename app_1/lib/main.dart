import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: HomePage(),
    );
  }
}

// [TODO]
class HomePage extends StatelessWidget {
  Widget build(BuildContext qw) {
    return Scaffold(
      backgroundColor: Color(0xffF0F1F6),
      body: Column(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Fitness\nYou Wanna\nHave ",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff363636),
                      ),
                    ),
                  ],
                )
              ],
            ),
            height: 200,
            color: Colors.transparent,
          ),
          Container(
            width: double.infinity,
            height: 407,
            color: Colors.transparent,
            child: Image.asset("assets/yoga.png"),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 0,
                    left: 25,
                    right: 25,
                    bottom: 55,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 9.0,
                            offset: Offset(0, 9),
                          )
                        ]),
                    padding: EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Please Login",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Username@gmail.com",
                            prefixIcon:
                                Icon(Icons.mail_outline, color: Colors.black38),
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "****************",
                            prefixIcon:
                                Icon(Icons.lock_outline, color: Colors.black38),
                            suffixIcon: Icon(Icons.remove_red_eye,
                                color: Colors.black38),
                          ),
                          obscureText: true,
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Forget Details?",
                              style: TextStyle(color: Colors.black38),
                            ),
                            Text(
                              "Create Account",
                              style: TextStyle(color: Colors.black38),
                            ),
                          ],
                        ),
                        Spacer(
                          flex: 2,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 120,
                  child: Container(
                    child: Center(
                      child: Icon(Icons.arrow_forward,
                          color: Colors.white, size: 32),
                    ),
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Color(0xff4D358B), Color(0xff99369C)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
