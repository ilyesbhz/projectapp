import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:test1/classes/language_constants.dart';
import 'package:test1/login.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        // brightness: Brightness.light,
        backgroundColor: Color(0xFFff7a3d),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    translation(context).welcomesignup,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    translation(context).descsignup,
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  inputFile(label: translation(context).companyname),
                  inputFile(label: translation(context).contactname),
                  inputFile(label:translation(context).email),
                  IntlPhoneField(
                    decoration: InputDecoration(
                      labelText: translation(context).phone,
                      border: OutlineInputBorder(
                        borderSide: BorderSide()
                      )
                    ),
                  )
                  /* inputFile(label: "Password", obscureText: true),
                  inputFile(label: "Confirm Password", obscureText: true), */
                  ],
              ),
              Container(
                /* padding: EdgeInsets.only(top: 30, left: 3), */
                /* decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )
                    ), */
                    child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {},
                  color: Color(0xFFff7a3d),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    translation(context).btnsignup,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),

                    ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(translation(context).noaccs),
                  TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));                  
                    },
                  child: Text(
                    translation(context).loginsystem,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                  ),
                  ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


//creating a widget for text field
Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                color: Colors.grey
                ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey
                  ) 
                )
                ),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}