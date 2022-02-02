import 'package:flutter/material.dart';

import 'package:ecommerce_app/pages/home_page.dart';




class ProductDetails extends StatefulWidget {




  final productName;


  final productPrice;


  final productOldPrice;


  final productPicture;




  ProductDetails({this.productOldPrice,this.productPrice,this.productPicture,this.productName});



  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      appBar: AppBar(

        title: InkWell(

          onTap: (){

            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
          },


          child: const Text("Toto",style: TextStyle(color: Colors.white),),
        ),

    centerTitle: true,


    backgroundColor: Colors.red,



    actions:  [


    IconButton(onPressed: (){

    }, icon: const Icon(Icons.search,size: 20,color: Colors.white,) ),



    Stack(

    children: [


    const IconButton(onPressed: null, icon: Icon(Icons.shopping_cart,size: 25,color: Colors.white,) ),


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

    ),



      body: ListView(


        children: [



          SizedBox(

            height: MediaQuery.of(context).size.height * 0.5,


            child: GridTile(


              child: Container(


                color: Colors.black,


                child: Image.network(widget.productPicture,fit: BoxFit.cover,),

              ),



              footer: Container(


                color: Colors.white70,


                child: ListTile(



                  leading: Text('${widget.productName}', style: const TextStyle(fontWeight: FontWeight.bold),),


                  title: Row(


                    children: [


                      Expanded(child: Text(' ksh ${widget.productOldPrice}', style: const TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),)),


                      Expanded(child: Text(' ksh ${widget.productPrice}', style: const TextStyle(color: Colors.red),))
                    ],
                  ),
                ),
              ),
            ),
          ),



          Row(

            children:  [



              Expanded(child:


              MaterialButton(





                onPressed: (){


                  showDialog(context: context, builder: (context){


                    return AlertDialog(

                      title: const Text('Size'),
                      content: const Text('Choose the size'),

                      actions: [

                        MaterialButton(




                            onPressed: (){

                          Navigator.of(context).pop();


                        },

                          child: const Text('close',style: TextStyle(color: Colors.red),),


                        )
                      ],
                    );
                  });
                },

                color: Colors.white,

                textColor: Colors.grey,

                elevation: 0.2,


                child: Row(


                  children: const [


                    Expanded( child: Text('Size'),),

                    Expanded( child: Icon(Icons.arrow_drop_down,))
                  ],
                ),




              )),


              Expanded(child: MaterialButton(


                onPressed: (){


                  showDialog(context: context, builder: (context){


                    return AlertDialog(

                      title: const Text('Color'),
                      content: const Text('Choose the color'),

                      actions: [

                        MaterialButton(




                          onPressed: (){

                            Navigator.of(context).pop();


                          },

                          child: const Text('close',style: TextStyle(color: Colors.red),),


                        )
                      ],
                    );
                  });
                },

                color: Colors.white,

                textColor: Colors.grey,

                elevation: 0.2,


                child: Row(


                  children: const [


                    Expanded( child: Text('Color'),),

                    Expanded( child: Icon(Icons.arrow_drop_down,))
                  ],
                ),




              )),

              Expanded(child: MaterialButton(


                onPressed: (){


                  showDialog(context: context, builder: (context){


                    return AlertDialog(

                      title: const Text('Quantity'),
                      content: const Text('Choose the Quantity'),

                      actions: [

                        MaterialButton(




                          onPressed: (){

                            Navigator.of(context).pop();


                          },

                          child: const Text('close',style: TextStyle(color: Colors.red),),


                        )
                      ],
                    );
                  });
                },


                color: Colors.white,

                textColor: Colors.grey,

                elevation: 0.2,


                child: Row(


                  children: const [


                    Expanded( child: Text('Qty'),),

                    Expanded( child: Icon(Icons.arrow_drop_down,))
                  ],
                ),




              ))
            ],

          ),


          const SizedBox(height: 20,),


          Row(

            children: const [



              Expanded(

                  child: OutlinedButton(


                  onPressed: null,

                  child: Text('Buy now',style: TextStyle(fontWeight: FontWeight.bold),)


              )
              ),


              IconButton(onPressed: null, icon: Icon(Icons.add_shopping_cart,color: Colors.red,)),


              IconButton(onPressed: null, icon: Icon(Icons.favorite_outline_outlined,color: Colors.red,))


            ],

          ),

          const Divider(),


          const ListTile(

            title: Text('Product details'),

            subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
          ),

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [

             const Padding( padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),

              child: Text("Product Name",style: TextStyle(color: Colors.grey),),

              ),

              Text("${widget.productName}")

            ],
          ),

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: const [

              Padding( padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),

                child: Text("Product Brand",style: TextStyle(color: Colors.grey),),

              ),

              Text("Brand X")

            ],
          ),

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: const [

              Padding( padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),

                child: Text("Product Condition",style: TextStyle(color: Colors.grey),),

              ),

              Text("New")

            ],
          ),

          const Divider(),


          const Padding(

            padding: EdgeInsets.all(10),

            child: Text('Similar Products',style: TextStyle(color: Colors.grey,fontSize: 14),),
          ),




          SizedBox(

            height: 350,

            child: SimilarProducts(),
          )
        ],
      )
    );
  }
}



class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {

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

      "name" : "Bicycle",

      'price': 160,

      'old_price': 220,

      'picture' :  'https://cdn.pixabay.com/photo/2016/11/23/15/38/augmented-reality-1853592_960_720.jpg',
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

        itemBuilder: (BuildContext context, int index){


          return SingleSimilarProducts(

            productName: products[index]['name'],

            productOldPrice: products[index]['old_price'],

            productPicture: products[index]['picture'],

            productPrice: products[index]['price'],


          );
        });
  }
}

class SingleSimilarProducts extends StatelessWidget {


  final dynamic productName;

  final dynamic productPicture;

  final dynamic productPrice;

  final dynamic productOldPrice;


  SingleSimilarProducts({@required this.productName, @required this.productOldPrice, @required this.productPicture, @required this.productPrice});
  @override
  Widget build(BuildContext context) {
    return SizedBox(


      height: 100,

      child: Card(

        child: Hero(

          tag: productName,

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

                    leading: Text(productName, style: const TextStyle(fontWeight: FontWeight.bold),),


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

