
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zag_system_task1/core/helpers/extantions.dart';

import '../../../core/routing/routs.dart';
import '../Widgets/AuthenticationTextFieldWidget.dart';

class SignUpScreen extends StatefulWidget {

State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
     body: SafeArea(

       child: SingleChildScrollView(
         child: Container(
           margin: EdgeInsetsDirectional.only(top: 65.h),
           width: double.infinity,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [

               Text("Sign Up",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),


               Container(
                 width: 300.w,
                 margin: EdgeInsetsDirectional.only(top: 55.h),
                 child: AuthenticationTextFieldWidget(Title: 'First Name'),
               ),

               Container(
                 width: 300.w,
                 margin: EdgeInsetsDirectional.only(top: 20.h),
                 child: AuthenticationTextFieldWidget(Title: 'Last Name'),
               ),

               Container(
                 width: 300.w,
                 margin: EdgeInsetsDirectional.only(top: 20.h),
                 child: AuthenticationTextFieldWidget(Title: 'Email'),
               ),

               Container(
                 width: 300.w,
                 margin: EdgeInsetsDirectional.only(top: 20.h),
                 child: AuthenticationTextFieldWidget(Title: 'User Name'),
               ),

               Container(
                 width: 300.w,
                 margin: EdgeInsetsDirectional.only(top: 20.h),
                 child: AuthenticationTextFieldWidget(Title: 'Password',isPassword: true,),
               ),


               Container(
                 width: 300.w,
                 height: 50.h,
                 margin: EdgeInsetsDirectional.only(top: 50.h),
                 child: ElevatedButton(
                     style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Color(0XFFF1C0F44))),
                     onPressed: (){

                       context.pushNamed(Routes.homePage);

                 }, child: Text('Create Account',style: TextStyle(color: Colors.white,fontSize: 15.sp),)),
               ),

               SizedBox(
                 height: 20.h,
               ),
               RichText(text: TextSpan(
                 text: 'Already have an account? ',
                 style: TextStyle(color: Colors.black,fontSize: 15.sp),
                 children: [
                   TextSpan(
                     text: 'Login',
                     style: TextStyle(color: Colors.blue,fontSize: 15.sp),
                     recognizer: TapGestureRecognizer()..onTap = (){
                       print('Navigates to Login Screen');
                     }
                   )
                 ]
               )),

               SizedBox(
                 height: 8.h,
               ),

               RichText(text: TextSpan(
                   text: 'Forgot your password? ',
                   style: TextStyle(color: Colors.black,fontSize: 15.sp),
                   children: [
                     TextSpan(
                       text: 'Reset',
                       style: TextStyle(color: Colors.blue,fontSize: 15.sp),
                       recognizer: TapGestureRecognizer()..onTap = (){
                         print('Navigates to Reset Password Screen');
                       },
                     )
                   ]
               ))
             ],
           ),
         ),
       ),
     ),
    );
  }
}