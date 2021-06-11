import 'package:dail_box/login/code_verification.dart';
import 'package:dail_box/login/create_password.dart';
import 'package:dail_box/util/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PhoneVerification extends StatefulWidget {
  @override
  _PhoneVerificationState createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Image(
                  image: AssetImage('assets/icons/logo_red.png'),
                  height: 50,
                ),
                InkWell(
                  onTap: () {

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Skip',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Text('Let\'s do your new habit',style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w400)),
                      Text('Phone verification',style: TextStyle(
                          color: blueColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w400)),

                      SizedBox(height: 10,),
                      Text(
                        'Register your bussiness with dialboxx to gain visibility in the marketplace.',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 50,
                      ),

                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Container(
                          // height: 100.0,
                          margin: const EdgeInsets.only(bottom: 6.0),
                          //Same as `blurRadius` i guess
                          padding: const EdgeInsets.all(6.0),
                          //Same as `blurRadius` i guess
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.grey[100],
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[400]!,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.text,
                            decoration: new InputDecoration(
                                prefixIcon: Icon(
                                  Icons.phone,
                                  color: greyColor,
                                ),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 15, bottom: 11, top: 11, right: 15),
                                hintStyle:
                                TextStyle(color: greyColor, fontSize: 14),
                                hintText: "Phone"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),


                      Container(
                        // margin: EdgeInsets.only(left: 30,right: 30),
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        child: RaisedButton(
                          color: blueColor,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CodeVerification()));
                          },
                          child: Text(
                            "NEXT",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
