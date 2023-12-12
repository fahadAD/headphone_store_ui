import 'package:flutter/material.dart';
class Detailpage extends StatelessWidget {
  const Detailpage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.black,

body: SafeArea(
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
  
  Container(
  
    width: MediaQuery.of(context).size.width,
  
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(30),
        bottomLeft: Radius.circular(30),),
      color: Colors.white,
    ),
  
    child: Column(
  
      children: [
  
        SizedBox(height: 10,),
  
        ListTile(
  
          leading: IconButton(
  
            icon: const Icon(Icons.arrow_back_outlined,color: Colors.black,size: 30),
  
            tooltip: 'Open Back Arrow',
  
            onPressed: () {
  
              Navigator.pop(context);
  
            },
  
          ),
  
          trailing: Stack(
  
            clipBehavior: Clip.none,
  
            children: [
  
              IconButton(
  
                 icon: const Icon(Icons.shopping_bag_outlined,color: Colors.black,size: 30),
  
                tooltip: 'Open Shoppin Bag',
  
                onPressed: () {
  
  
  
                },
  
              ),
  
              Positioned(
  
                right: 0,
  
                top: 0,
  
                child: Container(
  
                  height: 15,
  
                  width: 15,
  
                  decoration: BoxDecoration(
  
                    shape: BoxShape.circle,
  
                    color: Colors.green
  
                  ),
  
                  child: Center(child: Text("4",style: TextStyle(color: Colors.white))),
  
                ),
  
              )
  
            ],
  
          ),
  
        ),



        Container(
          width: MediaQuery.of(context).size.width,
          height: 240,
          child: Image.network("data:image/jpeg;base64,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",

            width: MediaQuery.of(context).size.width,

            height: 200,

            fit: BoxFit.contain,

          ),
        ),
  
        SizedBox(height: 10,),
 ListTile(
title: Text("Solo pro",style: TextStyle(color: Colors.black),),
 ),
        SizedBox(height: 5,),
   ListTile(
     title: Text("Noise Cancelling Wireless \nHeadphone ",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
   ),

     Padding(
       padding: const EdgeInsets.all(8.0),
       child: Row(
         children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               width:25,
               height:25,

               decoration: BoxDecoration(shape: BoxShape.circle,
                   color: Colors.green
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               width:25,
               height:25,

               decoration: BoxDecoration(shape: BoxShape.circle,
                   color: Colors.black
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               width:25,
               height:25,

               decoration: BoxDecoration(shape: BoxShape.circle,
                   color: Colors.red
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               width:25,
               height:25,

               decoration: BoxDecoration(shape: BoxShape.circle,
                   color: Colors.blue
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               width:25,
               height:25,

               decoration: BoxDecoration(shape: BoxShape.circle,
                   color: Colors.amber
               ),
             ),
           ),


         ],
       ),
     ),
        SizedBox(height: 10,),
ListTile(
  title: Text(". Active Noise Cancelling",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),

),
        ListTile(
          title: Text(". Transprency Mode",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
        ),
        ListTile(
          title: Text(". Up to 22 hours of listening time",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 20,),

      ],
  
    ),
  
  ),

      SizedBox(height: 10,),
  ListTile(
    title: Text("Price: \n \$248.99",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
 trailing: Container(
   width: 200,
   height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(40),
        topLeft: Radius.circular(40),
      ),

      color: Colors.orangeAccent,
    ),

   child: ListTile(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.shopping_cart_outlined,color: Colors.black,size: 30,),
      ),
     title: Text("Add to Cart",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20)),

   ),
 ),
  )
  
  
  
  
  
  
  
  
    ],
  
  ),
),
    );
  }
}
