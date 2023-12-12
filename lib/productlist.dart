import 'package:flutter/material.dart';
import 'package:headphoneapps/detailPage.dart';

import 'modelclass.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}
List<ModelData> productList=[
  ModelData(
      product_image: "data:image/jpeg;base64,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",
      product_name: "Noise Cancelling\n Headphones",
      product_price: "150.96"
  ),
  ModelData(
      product_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMwmqtbTbToxvKfV8awCV_Vp1w3X8J7SW7gg&usqp=CAU",
      product_name: "Classic All Day\n Headphones",
      product_price: "140.86"
  ),
  ModelData(
      product_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREhNAFK-5sUdw3zGMnWHgrktKqYiqSw8o2BA&usqp=CAU",
      product_name: "Gamin \n Headphones",
      product_price: "190.56"
  ),
  ModelData(
      product_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSoO2WUwEyz4mXrNtDXZjyjBA0Zzl9lBFfng&usqp=CAU",
      product_name: "Noise Cancelling\n Headphones",
      product_price: "150.96"
  ),
  ModelData(
      product_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdTfgRLtm-K_GOa5GFoC5spHJ7t4nWtQsrpQ&usqp=CAU",
      product_name: "Classic All Day\n Headphones",
      product_price: "200.10"
  ),
];
class _ProductListState extends State<ProductList> {
int? productlistindex;
  @override
  Widget build(BuildContext context) {
    return   GridView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, // Number of columns
      mainAxisSpacing: 1, // Spacing between rows
      crossAxisSpacing: 6, // Spacing between columns

    ),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              productlistindex=index;
              Navigator.push(context, MaterialPageRoute(builder: (context) => Detailpage(),));
            });
          },

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              width:MediaQuery.of(context).size.width,
              height: 250,
               decoration: BoxDecoration(

                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(50),
                   topRight: Radius.circular(10),
                   bottomRight: Radius.circular(50),
                   bottomLeft: Radius.circular(0),

                 ),

                 color:productlistindex==index? Colors.orange[700]:Colors.white,

               ),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(

                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(0),
                        ),
                        child: Image.network("${productList[index].product_image}",
                        width: MediaQuery.of(context).size.width,
                          height: 160,
                         fit: BoxFit.cover,
                        ),
                      ),

                      Text(" ${productList[index].product_name}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color:productlistindex==index?Colors.white:Colors.black ),),
            SizedBox(height: 5,),
                      Text(" \$${productList[index].product_price}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: productlistindex==index?Colors.white:Colors.black ),),


                    ],
                  ),
                  Positioned(
                    right: 20,
                    bottom: 10,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: Colors.orange[700],
                          color: Colors.orange[700]
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.shopping_cart,color: Colors.white),
                        tooltip: 'Open Cart',
                        onPressed: () {
                          // handle the press
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },

    );
  }
}
