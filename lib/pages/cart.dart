import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ecommerce_app/pages/cart_products.dart';


class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: InkWell(

          onTap: (){


          },


          child: const Text("cart",style: TextStyle(color: Colors.white),),
        ),

        centerTitle: true,


        backgroundColor: Colors.red,



        actions:  [


          IconButton(onPressed: (){

          }, icon: const Icon(Icons.search,size: 20,color: Colors.white,) ),


        ],

      ),


      body: CartProducts(),


      bottomNavigationBar: Container(



        color: Colors.white,


        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceAround,


          children: const[


            Expanded(child: ListTile(

              title: Text('Total Amount :', style: TextStyle(fontWeight: FontWeight.bold),),


              subtitle: Text('Ksh 300'),
            )),

            Expanded(child: OutlinedButton(


                onPressed: null,

            child: Text('Checkout',style: TextStyle(color: Colors.red),),

            )


            )

          ],
        ),
      ),



    );
  }
}
