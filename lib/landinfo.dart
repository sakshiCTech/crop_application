import 'package:avatar_glow/avatar_glow.dart';
import 'package:crop_application/locationinfo.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class LandInfoPage extends StatefulWidget {
  const LandInfoPage({ Key key }) : super(key: key);

  @override
  _LandInfoPageState createState() => _LandInfoPageState();
}

class _LandInfoPageState extends State<LandInfoPage> {

  TextEditingController farName = TextEditingController();
  TextEditingController fatherName = TextEditingController();
  TextEditingController mobileNo = TextEditingController();
  TextEditingController landOwner = TextEditingController();
  TextEditingController other= TextEditingController();

  bool listen1=false;
  bool listen2=false;
  bool listen3=false;
  bool listen4=false;
  bool listen5 = false;

  stt.SpeechToText _speech;
  bool _isListening = false;
  String _text = 'Press the button and start speaking';
  String _farName = "";
  String _fatherName = "";
  String _mobileNo = "";
  String _landOwner = "";
  double _confidence = 1.0;
  String _other="";

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff049D05))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 35, left: 35, top: 5, bottom: 5),
                    child: Text(
                      "Land Info",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Farm Area"),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 7, bottom: 7),
                child: TextField(
                  readOnly:  true,
                  controller: farName,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          _listenFarName();
                        },
                        child: AvatarGlow(
                          animate: listen1,
                          glowColor: Colors.blue,
                          endRadius: 20.0,
                          duration: const Duration(milliseconds: 2000),
                          repeatPauseDuration:
                              const Duration(milliseconds: 100),
                          repeat: true,
                          child: Icon(
                            Icons.mic,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      labelText: "What is the area of our farm in acres..??",
                      border: OutlineInputBorder(
                        
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("State"),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 7, bottom: 7),
                child: TextField(
                  readOnly:  true,
                  controller: fatherName,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          _listenFatherName();
                        },
                        child: AvatarGlow(
                          animate: listen2,
                          glowColor: Colors.blue,
                          endRadius: 20.0,
                          duration: const Duration(milliseconds: 2000),
                          repeatPauseDuration:
                              const Duration(milliseconds: 100),
                          repeat: true,
                          child: Icon(
                            Icons.mic,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      labelText: "What is the name of your State..??",
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("District"),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 7, bottom: 7),
                child: TextField(
                  readOnly:  true,
                  // keyboardType: Text
                  controller: mobileNo,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          _listenMobileNo();
                        },
                        child: AvatarGlow(
                          animate: listen3,
                          glowColor: Colors.blue,
                          endRadius: 20.0,
                          duration: const Duration(milliseconds: 2000),
                          repeatPauseDuration:
                              const Duration(milliseconds: 100),
                          repeat: true,
                          child: Icon(
                            Icons.mic,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      labelText: "When is the name of your District..??",
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Taluka"),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 7, bottom: 7),
                child: TextField(
                  readOnly:  true,
                  controller: landOwner,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          _listeLandOwner();
                        },
                        child: AvatarGlow(
                          animate: listen4,
                         glowColor: Colors.blue,
                          endRadius: 20.0,
                          duration: const Duration(milliseconds: 2000),
                          repeatPauseDuration:
                              const Duration(milliseconds: 100),
                          repeat: true,
                          child: Icon(
                            Icons.mic,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      labelText: "What is the name of your Village..??",
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Village"),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 7, bottom: 7),
                child: TextField(
                  readOnly:  true,
                  controller: landOwner,
                  decoration: InputDecoration(
                    labelText: "What is the name of your Village..??",
                      suffixIcon: GestureDetector(
                        onTap: () {
                          _listeLandOwner();
                        },
                        child: AvatarGlow(
                          animate: listen5,
                         glowColor: Colors.blue,
                          endRadius: 20.0,
                          duration: const Duration(milliseconds: 2000),
                          repeatPauseDuration:
                              const Duration(milliseconds: 100),
                          repeat: true,
                          child: Icon(
                            Icons.mic,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      farName.text = _farName;
                      fatherName.text = _fatherName;
                      mobileNo.text = _mobileNo;
                      landOwner.text = _landOwner;
                    });
                    print("Farmer name----> $farName");
                    print("Father name----> $fatherName");
                    print("Mobile number----> $mobileNo");
                    print("Land Ownership----> $landOwner");


                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext ctx)=>LocationInfo()));

                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 25, left: 25, top: 5, bottom: 5),
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff3582B6))),
                ),
              ),
              SizedBox(height: 20),
              Center(
                  child: Text(
                      "Powered by CropIntellix Pvt Ltd\n   Visit www.cropintellix.com",
                      style: TextStyle(color: Colors.grey)))
            ],
          ),
        ),
      ),
    );
  }



  void _listenFarName() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => listen1 = true);
        _speech.listen(
          onResult: (val) => setState(() {
            // _text = val.recognizedWords;
            farName.text = _farName;
            _farName = val.recognizedWords;
            // _fatherName = val.recognizedWords;
            // _mobileNo = val.recognizedWords;
            // _landOwner = val.recognizedWords;

            if (val.hasConfidenceRating && val.confidence > 0) {
              _confidence = val.confidence;
            }
          }),
        );
      }
    } else {
      setState(() => listen1 = false);
      _speech.stop();
    }
  }

  void _listenFatherName() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => listen2 = true);
        _speech.listen(
          onResult: (val) => setState(() {
            // _text = val.recognizedWords;
            // _farName = val.recognizedWords;
            fatherName.text = _fatherName;
            _fatherName = val.recognizedWords;
            // _mobileNo = val.recognizedWords;
            // _landOwner = val.recognizedWords;

            if (val.hasConfidenceRating && val.confidence > 0) {
              _confidence = val.confidence;
            }
          }),
        );
      }
    } else {
      setState(() => listen2 = false);
      _speech.stop();
    }
  }

  void _listenMobileNo() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => listen3 = true);
        _speech.listen(
          onResult: (val) => setState(() {
            // _text = val.recognizedWords;
            // _farName = val.recognizedWords;
            // _fatherName = val.recognizedWords;
            mobileNo.text = _mobileNo;
            _mobileNo = val.recognizedWords;
            // _landOwner = val.recognizedWords;

            if (val.hasConfidenceRating && val.confidence > 0) {
              _confidence = val.confidence;
            }
          }),
        );
      }
    } else {
      setState(() => listen3 = false);
      _speech.stop();
    }
  }

  void _listeLandOwner() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => listen4 = true);
        _speech.listen(
          onResult: (val) => setState(() {
            // _text = val.recognizedWords;
            // _farName = val.recognizedWords;
            // _fatherName = val.recognizedWords;
            // _mobileNo = val.recognizedWords;
            landOwner.text = _landOwner;
            _landOwner = val.recognizedWords;

            if (val.hasConfidenceRating && val.confidence > 0) {
              _confidence = val.confidence;
            }
          }),
        );
      }
    } else {
      setState(() => listen4 = false);
      _speech.stop();
    }
  }


  void _others() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => listen5 = true);
        _speech.listen(
          onResult: (val) => setState(() {
            // _text = val.recognizedWords;
            // _farName = val.recognizedWords;
            // _fatherName = val.recognizedWords;
            // _mobileNo = val.recognizedWords;
            other.text = _other;
            _other = val.recognizedWords;

            if (val.hasConfidenceRating && val.confidence > 0) {
              _confidence = val.confidence;
            }
          }),
        );
      }
    } else {
      setState(() => listen5 = false);
      _speech.stop();
    }
  }
}