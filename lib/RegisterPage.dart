import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';


class RegisterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar:AppBar(

      ) ,
      body:
      SingleChildScrollView(
        child: Column(
            children: [
             Image.asset('assets/images/vector2.png',width:double.infinity),

              Text('Register Here',style: TextStyle(fontSize: 29,fontWeight:FontWeight.w400,color: Colors.deepPurple[300],
              )
              ),


              SizedBox(height: 12,),
              SingleChildScrollView(
 scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        width: 150,

                        // Email text field

                        child: const TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              hintText: "Name..",
                              contentPadding: EdgeInsets.symmetric(vertical: 2),
                              border:OutlineInputBorder(borderSide: BorderSide(width: 5,color: Colors.black)
                              ),


                              prefixIcon: Icon(Icons.pest_control_rodent_outlined)
                          ),

                        )
                    ),
                    SizedBox(width: 10,),
                    Container(
                        width: 150,
                        child: const TextField(

                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "Number...",
                              contentPadding: EdgeInsets.symmetric(vertical: 2),
                              border:OutlineInputBorder(borderSide: BorderSide(width: 5,color: Colors.deepOrange)
                              ),
                              prefixIcon: Icon(Icons.password)
                          ),

                        )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Container(
                  width: 310,

                  // Email text field

                  child: const TextField(

                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Email...",
                        contentPadding: EdgeInsets.symmetric(vertical: 2),
                        border:OutlineInputBorder(borderSide: BorderSide(width: 5,color: Colors.black)
                        ),


                        prefixIcon: Icon(Icons.email_outlined)
                    ),

                  )
              ),
              SizedBox(height: 8,),
              Container(
                  width: 310,

                  // Email text field

                  child: const TextField(
                    obscureText: true,
                    obscuringCharacter: "*",
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        hintText: "Password...",
                        contentPadding: EdgeInsets.symmetric(vertical: 2),
                        border:OutlineInputBorder(borderSide: BorderSide(width: 5,color: Colors.black)
                        ),

                        prefixIcon: Icon(Icons.lock)
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
                            (builder: (context)=>  HomePage(),
                          )
                      );
                    } , child:Text('Sign Up',style:TextStyle(color: Colors.white),)),
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

              Text("Forget Password"),     SizedBox(height: 12,)


            ] ),
      )

    );
  }


}