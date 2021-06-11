import 'package:dail_box/home_screen.dart';
import 'package:dail_box/login/forgot_password.dart';
import 'package:dail_box/login/sign_up.dart';
import 'package:dail_box/util/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back,size: 30,),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
                Image(image: AssetImage('assets/icons/logo_red.png'),height: 50,),
                InkWell(
                  onTap: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomeScreen()), (route) => false);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Skip',
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
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
                    SizedBox(height: 50,),
                    Text('SIGN IN',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600
                      ),),
//            Padding(
//              padding: const EdgeInsets.only(left:30.0,right: 30),
//              child: Text('Register your bussiness with dialboxx to gain visibility in the marketplace. Showcase your bussiness information.',
//                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
//            ),
                    SizedBox(height: 30,),
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
                                  Icons.email,
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
                                hintText: "Email"),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
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
                            obscureText: true,
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.text,
                            decoration: new InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock_outline,
                                  color: greyColor,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: (){},
                                  icon: Icon(
                                    Icons.remove_red_eye,
                                    color: greyColor,
                                  ),
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
                                hintText: "Password"),
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
                        },
                        child: Text('Forgot Password ?',
                        style: TextStyle(color: redColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                     // margin: EdgeInsets.only(left: 30,right: 30),
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      child: RaisedButton(
                        color: blueColor,
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomeScreen()), (route) => false);
                        },
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 5),
                              height: 1,
                              width: MediaQuery.of(context).size.width,
                              color: greyColorlight,
                            ),
                          ),
                          Text('Or Sign in with',style: TextStyle(
                            color: Colors.black,fontWeight: FontWeight.w500
                          ),),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 5),
                              height: 1,
                              width: MediaQuery.of(context).size.width,
                              color: greyColorlight,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Card(
                            elevation: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image(
                                height:30,
                                image: AssetImage('assets/icons/google.png'),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image(
                                height:30,
                                image: AssetImage('assets/icons/facebook.png'),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image(
                                height:30,
                                image: AssetImage('assets/icons/twitter.png'),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 40,),
                      Align(
                        alignment: Alignment.center,
                        child: RichText(
                          text: new TextSpan(text: 'Don\'t have an account?', style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),children: [
                            new TextSpan(
                              text: ' Sign Up ',
                              style: TextStyle(color: blueColor),
                              recognizer: new TapGestureRecognizer()..onTap = () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                              },
                            ),

                          ]),
                        ),
                      ),
                  ],),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
