import 'package:flutter/material.dart';
import 'package:qrapp/Registration.dart';
import 'package:qrapp/qrpage.dart';

class Log extends StatefulWidget {

  const Log({super.key});

  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 100,
              height: 200,
            ),
            Text('Login',style: TextStyle(fontSize: 30),),
            Container(
              width: 200,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    labelText: 'Email address'
                ),
              ),
            ),
            Container(
              width: 200,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    labelText: 'Password'
                ),
              ),
            ),
            ElevatedButton(onPressed:() {
              Navigator.push(context,MaterialPageRoute(builder: (context)=> Qr()));
            }, child: Text('LOGIN',style: TextStyle(color: Colors.black),),
              style: TextButton.styleFrom(backgroundColor: Colors.white),
            ),
            SizedBox(
              width: 100,
              height: 60,
            ),
            ElevatedButton(onPressed:() {
              Navigator.push(context,MaterialPageRoute(builder: (context)=> Reg()));
            }, child: Text('New User? Register',style: TextStyle(color: Colors.black),),
              style: TextButton.styleFrom(backgroundColor: Colors.limeAccent),
            )
          ],
        ),
      ),
    );
  }
}

