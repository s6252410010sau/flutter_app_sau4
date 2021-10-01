
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_sau4/views/login_ui.dart';
import 'package:flutter_app_sau4/views/new_account_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 80.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                ),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.appStore,
                      size: 50.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'Start',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                 padding: const EdgeInsets.only(
                   left: 50.0,
                 ),
                 child: Row(
                   children: [
                     Text(
                      'your',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
              ),
                   ],
                 ),
               ),
              Padding(
                 padding: const EdgeInsets.only(
                   left: 50.0,
                 ),
                 child: Row(
                   children: [
                     Text(
                      'adevnture',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
              ),
                   ],
                 ),
               ),
              SizedBox(
                height: 180.0,
              ),
              ElevatedButton(
                onPressed: (){
                   Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginUI(),
                        ),
                      );
                },
                child: Text(
                  'Log in',
                  style: TextStyle(
                    fontFamily: 'Kaint',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 100.0,
                    60.0,
                  ),
                  primary: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      60.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You don\'t have account?',
                    style: TextStyle(
                      fontFamily: 'Kanit',
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewAccountUI(),
                        ),
                      );
                    },
                    
                    child: Text(
                      'Sign up here',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}