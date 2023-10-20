import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'RegisterPage.dart';


class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
        backgroundColor: Colors.deepPurpleAccent[100],
        title: Text('Login Page',style:TextStyle(color: Colors.black)),

    ) ,
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(

              width:double.infinity,

              child: Image.asset('assets/images/vector.png')),
 Text('Log In Here',style: TextStyle(fontSize: 29,fontWeight:FontWeight.w600,color: Colors.deepPurple[300],
          )
          ),


          SizedBox(height: 12,),
          Container(
                width: 300,

                // Email text field

                child: const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Enter your email here...",
                      contentPadding: EdgeInsets.symmetric(vertical: 2),
                      border:OutlineInputBorder(borderSide: BorderSide(width: 5,color: Colors.black)
                      ),


                      prefixIcon: Icon(Icons.email_outlined)
                  ),

                )
            ),

          SizedBox(height: 8,),

        Container(
                width: 300,
                child: const TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      hintText: "Enter your password here...",
                      contentPadding: EdgeInsets.symmetric(vertical: 2),
                      border:OutlineInputBorder(borderSide: BorderSide(width: 5,color: Colors.deepOrange)
                      ),
                      prefixIcon: Icon(Icons.password)
                  ),

                )
            ),
          SizedBox(height: 12,),
          Container(
            width: 300,
            child: ElevatedButton(
                style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade300,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                ),
                onPressed:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute
                        (builder: (context)=>  RegisterPage(),
                      )
                  );
                } , child:Text('Sign In',style:TextStyle(color: Colors.white),)),
          ),
          Container(
            margin: EdgeInsets.only(left: 90,top: 10),
            width: double.infinity,
            child: Row(
                children: [
                  Text("Don't have an account?"),
                  SizedBox(width: 12,),
                 Text("Sign Up",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),
                 )
                ],
              ),
            ),

          Text("Forget Password")


     ] ),
    )


    );
  }


}