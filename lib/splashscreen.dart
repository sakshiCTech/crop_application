import 'package:crop_application/startpage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext ctx)=> StartPage()));
    });
  }
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
          Positioned(
            bottom: 160,
            right: 40,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: Color(0xff0D9F0E),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 48,
            child: Container(
              height: 150,
              width: 2,
              color: Color(0xff0D9F0E),
            ),
          ),
          Positioned(
            bottom: 230,
            right: 15,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: Color(0xff2676BF),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 23,
            child: Container(
              height: 211,
              width: 2,
              color: Color(0xff2676BF),
            ),
          ),



          //top

          Positioned(
            top: 20,
            left: 23,
            child: Container(
              height: 211,
              width: 2,
              color: Color(0xff2676BF),
            ),
          ),
          Positioned(
            top: 230,
            left: 15,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: Color(0xff2676BF),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Positioned(
            top: 20,
            left: 48,
            child: Container(
              height: 150,
              width: 2,
              color: Color(0xff0D9F0E),
            ),
          ),
          Positioned(
            top: 160,
            left: 40,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: Color(0xff0D9F0E),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),



          Positioned(
            left: 85,
            bottom: 50,
            child: Text(
                "Powered by CropIntellix Pvt Ltd\n   Visit www.cropintellix.com",
                style: TextStyle(color: Colors.grey)),
          ),


          Center(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Image.asset("assets/crop.jpeg"),
            ),
          )
        ],
      ),
    );
  }

  Widget bottomLine() {
    return Container(
      height: 211,
      width: 2,
      color: Color(0xff2676BF),
    );
  }
}
