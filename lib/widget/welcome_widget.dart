import 'package:flutter/material.dart';
import 'package:project_1/screen/login_screen.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset("assets/book.png"),
          SizedBox(
            height: 5,
          ),
          Text(
            "Welcome to the world of books",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 3, 51, 90)),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "What you are looking for is in the library",
              style: TextStyle(fontSize: 18, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 3, 51, 90),
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 20,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
