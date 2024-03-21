import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tbreeapp/features/login_page/widget/login_button_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
              Image.asset('assets/logo/tbree.png',
                          width: 128,
                          height: 128,
                          cacheHeight: 128,
                          cacheWidth: 128,) ,
              const SizedBox(
                width: 60.0,
                child: Divider(
                    color: Colors.white,
                    thickness: 4.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('LOGIN' , style: TextStyle(fontSize: 20.sp, color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              const Column(
                children: [
                  TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Enter mobile number',
                      hintStyle: TextStyle(
                        color: Colors.white
                      )
                    ),
                    
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Custome ID(optional)',
                      hintStyle: TextStyle(
                        color: Colors.white
                      )
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: LoginButtonWidget(),
              )
          
            ],
          ),
        ),
      ),
    );
  }
}