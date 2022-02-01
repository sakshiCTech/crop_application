import 'package:crop_application/form.dart';
import 'package:crop_application/locationinfo.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xffF7F7F7),
          ),
          
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext ctx)=>FormExample()));
              },
              child: Container(
                child: Center(
                  child: Text(
                    "Start",
                    style: TextStyle(
                        color: Color(0xffDDE0CF),
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color(0xff0D9F0E),
                    borderRadius: BorderRadius.circular(100)),
                height: 200,
                width: 200,
              ),
            ),
          ),
          Positioned(
            left: 70,
            bottom: 175,
            child: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  color: Color(0xff0D9F0E),
                  borderRadius: BorderRadius.circular(100)),
            ),
          ),
          Positioned(
            bottom: 125,
            left: 50,
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Color(0xff0D9F0E),
                borderRadius: BorderRadius.circular(35)
              ),
            ),
          ),
          Positioned(
            left: 85,
            bottom: 20,
            child: Text(
                "Powered by CropIntellix Pvt Ltd\n   Visit www.cropintellix.com",
                style: TextStyle(color: Colors.grey)),
          ),



          Padding(
            padding: const EdgeInsets.only(left: 35,right: 35,top: 70),
            child: Image.asset("assets/crop.jpeg"),
          ),
        ],
      ),
    );
  }
}
