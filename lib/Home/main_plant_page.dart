import 'package:flutter/material.dart';
import 'package:nasir_s_doctorplant_app/Home/plant_page_body1.dart';

class MainPlantPage extends StatefulWidget {
  const MainPlantPage({Key? key}) : super(key: key);

  @override
  State<MainPlantPage> createState() => _MainPlantPageState();
}

class _MainPlantPageState extends State<MainPlantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
           Container( 
           
             child: Container(
               margin: EdgeInsets.only(top: 46,bottom: 18),
               padding: EdgeInsets.only(left:19 , right: 19),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
    
                     children: [
                       Text('Morocco',
                       style: TextStyle(fontSize: 20,fontFamily:'CustomFont', color:Colors.green
                       ),),
                       
                        Row(children: [
                         Text('El kelaa des sraghna',
                         style: TextStyle(fontSize: 14, color: Colors.black54
                        ),),
                   ],),
                   ],
                   ),
                  
                Center(
                child: Container(
                   height: 47,
                   width: 47,
                   child: Icon(Icons.search, color: Colors.white,size: 25,),
                   decoration: BoxDecoration(
                     borderRadius:  BorderRadius.circular(14),
                     color: Colors.green,
                   ),
                 ),
                 )
                 ],
               )
             )
           ),
    
      Expanded(child: SingleChildScrollView(child: PlantsMainPage(),))
    
    
       ],)
        );
   
  }
}