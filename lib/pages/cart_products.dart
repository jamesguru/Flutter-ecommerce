import 'package:flutter/material.dart';




class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {


  final cart_products =[

    {

      "name" : "Tablet",

      'price': 50,
      'picture' :  'https://cdn.pixabay.com/photo/2020/12/29/18/07/baby-5871185_960_720.jpg',

      'color': 'red',

      'size': 'medium',

      'quantity': '7'
    },

    {

      "name" : "kids clothes",

      'price': 100,


      'picture' :  'https://cdn.pixabay.com/photo/2017/02/08/02/56/booties-2047596_960_720.jpg',

      'color': 'black',

      'size': 'XL',

      'quantity': '2'
    },

    {

      "name" : "Bicycle",

      'price': 10000,


      'picture' :  'https://cdn.pixabay.com/photo/2016/11/23/15/38/augmented-reality-1853592_960_720.jpg',

      'color': 'black',

      'size': 'L',

      'quantity': '1'
    },



  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context,index){


          return SingleCartProduct(

            name: cart_products[index]['name'],

            price: cart_products[index]['price'],

            picture: cart_products[index]['picture'],

            size: cart_products[index]['size'],

            quantity: cart_products[index]['quantity'],

            color: cart_products[index]['color'],


          );
        },

      itemCount: cart_products.length,


    );
  }
}



class SingleCartProduct extends StatelessWidget {

  final name;

  final price;

  final quantity;

  final color;

  final size;

  final picture;

  SingleCartProduct({this.size,this.name,this.color,this.price,this.quantity,this.picture});
  @override
  Widget build(BuildContext context) {
    return Card(


      elevation: 1,

      child: ListTile(

        title: Text(name),


        trailing: const IconButton(


          onPressed: null,


          icon: Icon(Icons.delete, color: Colors.red,),
        ),


        leading: Container(
          color: Colors.grey,


          child: Image.network(picture,height: 100, width: 100,fit: BoxFit.cover,),

        ),

        subtitle: Column(


          children: [

            Row( children: [

                const Text("size:"),

                Padding(padding: const EdgeInsets.fromLTRB(5.0, 2.0, 12.0, 2.0),

                child: Text("$size"),

                )
            ],),

            Row( children: [

              const Text("Qty:"),

              Padding(padding: const EdgeInsets.fromLTRB(5.0, 2.0, 12.0, 2.0),

                child: Text("$quantity"),

              )
            ],),

            Row( children: [

              const Text("color"),

              Padding(padding: const EdgeInsets.fromLTRB(5.0, 5.0, 12.0, 12.0),

                child: Text("$color:"),

              )
            ],),


            Text(' ksh $price',style: const TextStyle(color: Colors.red,),)
          ],
        ),




      ),
    );
  }
}

