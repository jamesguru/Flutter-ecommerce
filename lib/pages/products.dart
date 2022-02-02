import 'package:ecommerce_app/pages/product_details.dart';
import 'package:flutter/material.dart';


class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {


  final products =[

    {

      "name" : "Tablet",

      'price': 50,

      'old_price': 100,

      'picture' :  'https://cdn.pixabay.com/photo/2020/12/29/18/07/baby-5871185_960_720.jpg',
    },

    {

      "name" : "kids clothes",

      'price': 100,

      'old_price': 120,

      'picture' :  'https://cdn.pixabay.com/photo/2017/02/08/02/56/booties-2047596_960_720.jpg',
    },

    {

      "name" : "Books",

      'price': 10,

      'old_price': 30,

      'picture' :  'https://cdn.pixabay.com/photo/2017/08/07/17/10/kid-2605810_960_720.jpg',
    },


    {

      "name" : "Baby showers",

      'price': 160,

      'old_price': 220,

      'picture' :  'https://cdn.pixabay.com/photo/2021/05/24/15/58/pastries-6279692_960_720.jpg',
    },


    {

      "name" : "Bicycle",

      'price': 50,

      'old_price': 100,

      'picture' :  'https://cdn.pixabay.com/photo/2016/11/23/15/38/augmented-reality-1853592_960_720.jpg',
    },

    {

      "name" : "Events",

      'price': 100,

      'old_price': 120,

      'picture' :  'https://cdn.pixabay.com/photo/2017/02/08/02/56/booties-2047596_960_720.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

        itemCount: products.length,

        itemBuilder: (context, index){


          return SingleProducts(

            productName: products[index]['name'].toString(),

            productOldPrice: products[index]['old_price'],

            productPicture: products[index]['picture'],

            productPrice: products[index]['price'],


          );
        });
  }
}


class SingleProducts extends StatelessWidget {


  final String? productName;

  final dynamic productPicture;

  final dynamic productPrice;

  final dynamic productOldPrice;



  SingleProducts({@required this.productName, @required this.productOldPrice, @required this.productPicture, @required this.productPrice});


  @override
  Widget build(BuildContext context) {
    return SizedBox(


      height: 100,

      child: Card(

        child: Hero(

          tag: productName!,

          child: Material(

            child: InkWell(

              onTap: (){


                Navigator.push(context, MaterialPageRoute(builder: (context){



                  return ProductDetails(productPrice: productPrice, productPicture: productPicture, productOldPrice: productOldPrice, productName: productName);
                }));

              },

              child: GridTile(

                footer: Container(

                  color: Colors.white70,


                  child: ListTile(

                    leading: Text(productName!, style: const TextStyle(fontWeight: FontWeight.bold),),


                    title: Text('ksh $productPrice',style: const TextStyle(fontWeight: FontWeight.w800,color: Colors.red),),


                    subtitle: Text('ksh $productOldPrice',style: const TextStyle(fontWeight: FontWeight.w800,

                    decoration: TextDecoration.lineThrough


                    ),



                    ),



                  ),


                ),

                child: Image.network(productPicture,fit: BoxFit.cover,),


              ),
            ),
          ),
        ),
      ),
    );
  }
}

