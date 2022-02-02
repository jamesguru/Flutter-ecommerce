import 'package:ecommerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      resizeToAvoidBottomInset: false,
      
      
      body: Stack(
        
        
        children: [
          
          
          Image.network("https://cdn.pixabay.com/photo/2016/03/18/00/07/boy-1264157_960_720.jpg",height: double.infinity, width: double.infinity,
          fit: BoxFit.cover,),





          Positioned(

            top: 100,

             bottom: 30,

              left: 30,

              right: 30,
              child: Container(

                padding: const EdgeInsets.all(13),

                color: Colors.black.withOpacity(0.4),


                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.center,

                  mainAxisAlignment: MainAxisAlignment.center,


                  children: [


                    const TextField(

                      autofocus: false,
                      cursorColor: Colors.white,

                      style: TextStyle(color: Colors.white),

                      decoration: InputDecoration(

                        hoverColor: Colors.white,

                        fillColor: Colors.white,

                        hintText: "Email",

                        hintStyle: TextStyle(color: Colors.grey),

                        labelStyle: TextStyle(color: Colors.grey),

                        focusColor: Colors.white,

                        enabledBorder: UnderlineInputBorder(

                          borderSide: BorderSide(color: Colors.grey)
                        )




                      ),
                    ),
                    const SizedBox(height: 20,),

                    const TextField(

                      autofocus: false,
                      cursorColor: Colors.white,

                      style: TextStyle(color: Colors.white),

                      decoration: InputDecoration(

                          hoverColor: Colors.white,

                          fillColor: Colors.white,

                          hintText: "password",

                          hintStyle: TextStyle(color: Colors.grey),

                          labelStyle: TextStyle(color: Colors.grey),

                          focusColor: Colors.white,



                          enabledBorder: UnderlineInputBorder(

                              borderSide: BorderSide(color: Colors.grey)
                          )




                      ),
                    ),



                    const SizedBox(height: 40,),
                    
                    
                    InkWell(

                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context){



                          return const HomePage();
                        })),


                      child: Container( padding : const EdgeInsets.all(10),color: Colors.red, child: const Center(


                        child: Text('Login',style: TextStyle(color: Colors.white),),
                      ),)
                      ,
                    ),








                  ],
                ),
          ))




        ],
      ),
    );
  }
}
