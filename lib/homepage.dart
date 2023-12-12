import 'package:flutter/material.dart';
import 'package:headphoneapps/modelclass.dart';
import 'package:headphoneapps/productlist.dart';
   class HomePage extends StatefulWidget {
   const HomePage({super.key});

   @override
   State<HomePage> createState() => _HomePageState();
 }
List<ModelData> brandList=[
  ModelData(
      brand_icon: "data:image/jpeg;base64,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",
      brand_name: "JBL"
  ),
  ModelData(
      brand_icon: "data:image/png;base64,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",
      brand_name: "Beats"
  ),
  ModelData(
      brand_icon: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOExVrxA0iz9UM5ZjhYf4lFkaT00Vem829Wg&usqp=CAU",
      brand_name: "Sony"
  ),
  ModelData(
      brand_icon: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY-2hdAyg3H_Y0d2y-LOXPz7sxmnsJQpwPjg&usqp=CAU",
      brand_name: "Boat"
  ),
  ModelData(
      brand_icon: "data:image/jpeg;base64,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",
      brand_name: "JBL"
  ),

  ModelData(
      brand_icon: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY-2hdAyg3H_Y0d2y-LOXPz7sxmnsJQpwPjg&usqp=CAU",
      brand_name: "Boat"
  )
];



 class _HomePageState extends State<HomePage> {
   int? brandiconIndex;

   @override
   Widget build(BuildContext context) {
     return   Scaffold(
       backgroundColor: Colors.black.withOpacity(0.1),
       appBar: AppBar(
         backgroundColor: Colors.transparent,
     elevation: 0,




         actions: [
           IconButton(
             icon: const Icon(Icons.settings_overscan_outlined,color: Colors.black),
             tooltip: 'Open Scanner',
             onPressed: () {
               // handle the press
             },
           ),

           IconButton(
             icon: const Icon(Icons.shopping_bag,color: Colors.black),
             tooltip: 'Open shopping bags',
             onPressed: () {
               // handle the press
             },
           ),
         ],
       ),

drawer: Container(
  color: Colors.black,
  height: MediaQuery.of(context).size.height,
  width: MediaQuery.of(context).size.width*0.7,

  child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(height: 10,),
      IconButton(
        icon: const Icon(Icons.arrow_back,color: Colors.white),
        tooltip: 'Open Scanner',
        onPressed: () {
           Navigator.pop(context);
        },
      ),
SizedBox(height: 20,),
      ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage("https://scontent.fdac157-1.fna.fbcdn.net/v/t1.6435-9/34838323_214901775976299_5894562831000403968_n.jpg?stp=dst-jpg_p526x296&_nc_cat=106&cb=99be929b-3346023f&ccb=1-7&_nc_sid=7f8c78&_nc_eui2=AeE3l6fxJ0HOh1jSWuFesL-pBAZ9C3XZGD4EBn0LddkYPhrSAL0vKPmhu_ofF4lwyF-1_0N-1Y3qNbf2VJItXIOd&_nc_ohc=zK7QSIRx49kAX8KMVlA&_nc_ht=scontent.fdac157-1.fna&oh=00_AfBTNguVfUBPFVepa7sYrLSR550MjPDJztg9J268hLTtnw&oe=64FEB7F4"),

        ),
        title: Text("MR Fahad",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        subtitle: Text("mrfahad26532@gmail.com",style: TextStyle(color: Colors.white70)),
 trailing: Icon(Icons.qr_code_scanner,color: Colors.white,size: 30),
      ),
      SizedBox(height: 40,),
      ListTile(
        leading: Icon(Icons.home_outlined,color: Colors.white,size: 30),
        title: Text("Home",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17)),
      ),
      ListTile(
        leading: Icon(Icons.person,color: Colors.white,size: 30),
        title: Text("Account",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17)),
      ),
      ListTile(
        leading: Icon(Icons.wallet,color: Colors.white,size: 30),
        title: Text("Wallet",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17)),
      ),
      ListTile(
        leading: Icon(Icons.notifications_active_outlined,color: Colors.white,size: 30),
        title: Text("Notification",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17)),
      ),
      ListTile(
        leading: Icon(Icons.nights_stay_outlined,color: Colors.white,size: 30),
        title: Text("Night Mode",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17)),
      ),
      ListTile(
        leading: Icon(Icons.logout,color: Colors.deepOrange,size: 30),
        title: Text("Log Out",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17)),
      ),
    ],
  ),
),


       body: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             children: [
               SizedBox(height: 10,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Container(
                     height: 40,
                     width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                     child: TextFormField(
                       decoration: InputDecoration(
                         // focusedBorder: InputBorder.none,
                         enabledBorder: InputBorder.none,
                         contentPadding: EdgeInsets.all(8.0),
                         hintText: "Search Here",
                           suffixIcon: Icon(Icons.search),
                           border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                         )
                       ),
                     ),
                   ),
                   IconButton(
                     icon: const Icon(Icons.mic_none_rounded,color: Colors.black,size: 30),
                     tooltip: 'Open Micrephone',
                     onPressed: () {
                       // handle the press
                     },
                   ),
                 ],
               ),
               SizedBox(height: 10,),
               ListTile(
                 title: Text("Choose Brand",style: TextStyle(color: Colors.black,fontSize: 20)),
                 trailing: Text("See All"),
               ),

SizedBox(
  height: 130,
  child:   ListView.builder(
    primary: false,
    shrinkWrap: true,
    itemCount: brandList.length,
    scrollDirection: Axis.horizontal,
    itemBuilder: (BuildContext context, int index) {
    return InkWell(
      onTap: () {
            setState(() {
              brandiconIndex=index;
            });
      },
      child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 130,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: brandiconIndex==index? Colors.orange:Colors.blueGrey,
              ),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius :BorderRadius.only(bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: Image.network("${brandList[index].brand_icon}",
                      height: 90,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text("${brandList[index].brand_name}",style: TextStyle(color:brandiconIndex==index? Colors.black:Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)
                ],
              ),
            ),
      ),
    );
  },),
),
               SizedBox(height: 10,),
 Container(
   width: MediaQuery.of(context).size.width,
   height: 40,

   child: Row(
     children: [
           Icon(Icons.arrow_right_alt,color: Colors.red,size: 40),
           InkWell(

             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("Popular",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
             ),
           ),
           InkWell(
             onTap: () {

             },
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("Exclusive",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
             ),
           ),
           InkWell(
             onTap: () {

             },
              child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("Discount",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
           ),
            ),


     ],
   ),
 ),
               SizedBox(height: 10,),

               ProductList(),



             ],
           ),
         ),
       ),
     );
   }
 }
