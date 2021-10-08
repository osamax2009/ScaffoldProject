import 'package:flutter/material.dart';
import 'package:untitled2/Components/GridViewItem.dart';
import 'package:untitled2/Models/Product.dart';

class DetailsScreen extends StatelessWidget {
//  const DetailsScreen({Key? key}) : super(key: key);

final  Product? product ;

DetailsScreen(this.product);



var mySagProductList  = [
  Product(
    id: 'p1',
    title: 'Red Shirt',
    description: 'A red shirt - it is pretty red!',
    price: 29.99,
    imageUrl:
    'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
  ),
  Product(
    id: 'p2',
    title: 'Trousers',
    description: 'A nice pair of trousers.',
    price: 59.99,
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
  ),
  Product(
    id: 'p3',
    title: 'Yellow Scarf',
    description: 'Warm and cozy - exactly what you need for the winter.',
    price: 19.99,
    imageUrl:
    'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
  ),
  Product(
    id: 'p4',
    title: 'A Pan',
    description: 'Prepare any meal you want.',
    price: 49.99,
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
  ),
];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product!.title!),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: Column(
         children: [
          Container(
            margin: EdgeInsets.all(15),
            height: 400,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.orange,
                width: 10
              ),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Image(
              image: NetworkImage(
              product!.imageUrl!
            ),
              fit: BoxFit.fill,
            ),
          ),
           Text(product!.description!,
              textAlign: TextAlign.center,
             style: TextStyle(
                 fontSize: 20,
                 color: Colors.blue
             ),
           ),
           SizedBox(
             height: 10,
           ),

           Text(
             "Item Price is :  ${product!.price.toString()!}",
             textAlign: TextAlign.center,

             style: TextStyle(
                 fontSize: 20,
                 color: Colors.red
             ),
           ),

            Container(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){},
                  child:  Text(
                    "Submit",
                    textAlign: TextAlign.center,

                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red
                    ),
                  ),
              ),
            ),
           SizedBox(
             height: 10,
           ),
      Expanded(
          child: GridViewItem(mySagProductList[0], (){}),
      )

         ],
        ),
      ),
    );
  }
}
