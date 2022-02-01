import 'package:flutter/material.dart';

class StartContainer extends StatefulWidget {
  const StartContainer({ Key key }) : super(key: key);

  @override
  _StartContainerState createState() => _StartContainerState();
}

class _StartContainerState extends State<StartContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(),
          Positioned(
              bottom: 220,
              left: 100,
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
                height: 180,
                width: 180,
              ),
            ),
            Positioned(
            left: 70,
            bottom: 165,
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  color: Color(0xff0D9F0E),
                  borderRadius: BorderRadius.circular(100)),
            ),
          ),
        ],
      ),
    );
  }
}