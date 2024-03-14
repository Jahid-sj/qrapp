import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrapp/Login.dart';
import 'package:qrapp/camera.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 100,
              height: 100,
            ),
            CircleAvatar(
              child: Image.network('https://images.unsplash.com/photo-1511367461989-f85a21fda167?q=80&w=1631&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            radius: 50,
            ),
            Text('JAHID BASHEER',style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic),),
            Text('Flutter Developer',style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),),
            Container(
              width: 250,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    labelText: 'jahidbasheer101@gmail.com'
                ),
              ),
            ),
            Container(
              width: 200,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    labelText: '9567347417'
                ),
              ),
            ),
            ElevatedButton(onPressed:() {
              Navigator.push(context,MaterialPageRoute(builder: (context)=> Log()));
            }, child: Text('SignOut',style: TextStyle(color: Colors.black),),
              style: TextButton.styleFrom(backgroundColor: Colors.white),
            )
          ],
        ),
      ),
    ) ;
  }
}
