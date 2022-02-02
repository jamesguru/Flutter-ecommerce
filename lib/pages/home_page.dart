import 'package:ecommerce_app/pages/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_nullsafety/carousel_nullsafety.dart';
import 'package:flutter/painting.dart';
import 'package:ecommerce_app/pages/products.dart';



class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  final searchController = TextEditingController();


  bool searching = false;




  @override
  Widget build(BuildContext context) {
    return Scaffold(




      appBar: searching ? searchAppBar() : normalAppBar(),

      drawer: Drawer(


        child: ListView(

          children: [


            Container(

              padding: const EdgeInsets.all(10.0),
              
              color: Colors.red,

              width: double.infinity,

              height: 200,

              child: Column(

                children: const [

                CircleAvatar( backgroundColor: Colors.grey, radius: 50, backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2017/10/03/01/12/family-2811003_960_720.jpg'),),
                SizedBox(height: 5,),

                Text('Iflan kamar',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),), SizedBox(height: 5,),

               Text('Iflankamar@gmail.com',style: TextStyle(color: Colors.white),),


                ],
              )
            ),


            drawerMenu(function: null, icon: Icons.home, title: "Home",color: Colors.red),
            drawerMenu(function: null, icon: Icons.person, title: "Account",color: Colors.red),
            drawerMenu(function: null, icon: Icons.shopping_basket, title: "My orders",color: Colors.red),
            drawerMenu(function: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
            }, icon: Icons.shopping_cart, title: "Shopping cart",color: Colors.grey),
            drawerMenu(function: null, icon: Icons.favorite, title: "Favourites",color: Colors.grey),
            drawerMenu(function: null, icon: Icons.settings, title: "Settings",color: Colors.grey),
            drawerMenu(function: null, icon: Icons.help, title: "About",color: Colors.grey),
          ],
        ),
      ),


      body: ListView(


        children: [

          Container(

            color: Colors.white,

            height: MediaQuery.of(context).size.height * 0.4,

            child: const Carousel(

              images: [

                NetworkImage('https://cdn.pixabay.com/photo/2021/02/24/23/43/boy-6047786_960_720.jpg'),

                NetworkImage('https://cdn.pixabay.com/photo/2012/03/04/00/38/baby-21998_960_720.jpg'),

                NetworkImage('https://cdn.pixabay.com/photo/2015/05/20/14/23/baby-775503_960_720.jpg'),

                NetworkImage('https://cdn.pixabay.com/photo/2018/05/15/07/39/girl-3402351_960_720.jpg'),

                NetworkImage('https://cdn.pixabay.com/photo/2018/03/28/04/59/child-3268264_960_720.jpg'),

                NetworkImage('https://cdn.pixabay.com/photo/2016/10/07/02/03/children-1720484_960_720.jpg'),



              ],

              dotSize: 7.0,

              dotColor: Colors.grey,

              indicatorBgPadding: 2.0,

              autoplay: true,

            )
          ),

          const Padding(

            padding: EdgeInsets.all(15),

            child: Text("Recent Products",style: TextStyle(color: Colors.grey,fontSize: 15),),
          ),


          // const HorizontalListView(),


          SizedBox(

            height: 320.0,

            child: Products(),
          )




        ],
      ),
    );
  }

normalAppBar(){


    return AppBar(

      title: const Text("Toto",style: TextStyle(color: Colors.white),),

      centerTitle: true,


      backgroundColor: Colors.red,



      actions:  [


        IconButton(onPressed: (){

          setState(() {

            searching =true;
          });
        }, icon: const Icon(Icons.search,size: 20,color: Colors.white,) ),



        Stack(

          children: [


            IconButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));


            }, icon: const Icon(Icons.shopping_cart,size: 25,color: Colors.white,) ),


           Positioned(

               right: 5,

               top: 5,


               child: Container(

                 padding: const EdgeInsets.all(3),

                 decoration: BoxDecoration(

                   color: Colors.white,

                   borderRadius: BorderRadius.circular(40.0)
                 ),

                 child: const Text('3',style: TextStyle(color: Colors.red,),),

               ))
          ],
        )

      ],

    );
}


  searchAppBar(){


    return AppBar(

      title: TextFormField(

        style: const TextStyle( color: Colors.white),

        cursorColor: Colors.white,

        controller: searchController,

        decoration: const InputDecoration(

            hintText: "search",
            hoverColor: Colors.white,




            labelStyle: TextStyle(color: Colors.white),


            hintStyle: TextStyle(color: Colors.white),

            focusColor: Colors.white,



            enabledBorder: UnderlineInputBorder(

              borderSide: BorderSide(

                color: Colors.white,




              ),


            ),


            focusedBorder: UnderlineInputBorder(

              borderSide: BorderSide(color: Colors.white),







            ),

            filled: true,

            prefixIcon: Icon(Icons.search,color: Colors.white,size: 20,),





        ),


        onFieldSubmitted: null,


      ),



      backgroundColor: Colors.red,



      actions: [



        IconButton(





            onPressed: (){


          setState(() {

            searching = false;
          });


        }, icon: const  Icon(Icons.close,size: 20,color: Colors.white,) ),


      ],

    );
  }

  Widget drawerMenu({@required function, @required icon, @required title, @required color}){

    return InkWell(

      onTap: function,


      child: ListTile(

        leading: Icon(icon,size: 20, color: color,),

        title: Text(title,),
      ),
    );
  }
}
