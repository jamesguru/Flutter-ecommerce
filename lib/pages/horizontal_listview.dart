import 'package:flutter/material.dart';


class HorizontalListView extends StatelessWidget {

  const HorizontalListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 80,

      child: ListView(

        scrollDirection: Axis.horizontal,
        children: [


          Category(imageLocation: 'https://cdn.pixabay.com/photo/2020/12/29/18/07/baby-5871185_960_720.jpg', title: 'Gadgets'),

          Category(imageLocation: 'https://cdn.pixabay.com/photo/2017/02/08/02/56/booties-2047596_960_720.jpg', title: 'Clothes'),

          Category(imageLocation: 'https://cdn.pixabay.com/photo/2017/08/07/17/10/kid-2605810_960_720.jpg', title: 'Books'),


          Category(imageLocation: 'https://cdn.pixabay.com/photo/2021/05/24/15/58/pastries-6279692_960_720.jpg', title: 'Baby shower'),


          Category(imageLocation: 'https://cdn.pixabay.com/photo/2016/07/26/11/17/maternity-1542584_960_720.jpg', title: 'Maternity'),


          Category(imageLocation: 'https://cdn.pixabay.com/photo/2014/01/10/22/06/trampoline-241899_960_720.jpg', title: 'Events')




        ],

      ),
    );
  }
}


class Category extends StatelessWidget {



  final String? imageLocation;

  final String? title;


  Category({@required this.imageLocation, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(2.0),

      child: Container(

        height: 100,

        child: ListTile(

          title: Image.network(imageLocation! ,height: 80, width: 100,),

          subtitle: Text(title!) ,
        ),
      )

    );
  }
}
