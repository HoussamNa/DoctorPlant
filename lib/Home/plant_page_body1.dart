import 'dart:async';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nasir_s_doctorplant_app/Home/icons_text.dart';
import 'package:nasir_s_doctorplant_app/plants.dart';
class PlantsMainPage extends StatefulWidget {
  const PlantsMainPage({Key? key}) : super(key: key);

  @override
  State<PlantsMainPage> createState() => _PlantsMainPageState();
}

class _PlantsMainPageState extends State<PlantsMainPage> {
  PageController pageController = PageController(viewportFraction: 1.0);
  var _currPageValue = 0.0;
  double  _scaleFacor = 0.8;
  double _height= 320;



  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue =pageController.page!;
        
      });
    });
  }


  @override
 void dispose(){
  pageController.dispose();

 }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
      padding: EdgeInsets.only(top: 20),
        height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position){
        return _buildPageItem(position);
      }),
    ),

    const SizedBox(
      height: 20,
    ),
    Container(
      margin: const EdgeInsets.only(left: 30, right: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Most Recommended',
          style: TextStyle(fontSize: 23,fontFamily:'CustomFont', color:Colors.green
          ),),
         
           Text('See ALL',
          style: TextStyle(fontSize: 15
          ),),
        ],
      ),
    ),

   Container(
    height: 400,
   
    child:  ListView.builder(
      physics: AlwaysScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index){
        return Container(
        padding: EdgeInsets.only(top: 10 ,left: 15, right: 15),
        child: Row(
          children: [ 
            Container(
              height: 90,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white30,
                image: const DecorationImage(
                  image:AssetImage('assets/images/aloe_vera.png') )
              ),
            ),

            const SizedBox(width: 3,),
            
           
            Expanded(
  child: Container(
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.only(left: 5),
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'flower classification',
            style: TextStyle(
              fontFamily: 'CustomFont',
              fontSize: 17,
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [ 
              Wrap(
                children: List.generate(5, (index) => Icon(Icons.star, color: Colors.green)),
              ),
              SizedBox(width: 10),
              const Text(
                '3.9',
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              const SizedBox(width: 3),
              const Text(
                '1500',
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              const SizedBox(width: 3),
              const Text(
                'comments',
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              IconsandText(
                icon: Icons.sunny,
                text: 'Normal',
                iconColor: Colors.yellow,
                color: Colors.black45,
              ),
              SizedBox(width: 0),
              IconsandText(
                icon: Icons.location_on,
                text: '3.6 Km',
                iconColor: Colors.green,
                color: Colors.black45,
              ),
              SizedBox(width: 0),
              IconsandText(
                icon: Icons.access_time,
                text: '3.6 Km',
                iconColor: Colors.red,
                color: Colors.black45,
              ),
            ],
          ),
        ],
      ),
    ),
  ),
)

          ],
        ),
        );
      }   
    )
   )

   
    ],
    );
  }

  Widget _buildPageItem(int index){
   Matrix4 matrix4= new Matrix4.identity();
   if (index == _currPageValue.floor()){
    var currScale = 1-(_currPageValue - index)*(1-_scaleFacor);
    var currTrans = _height*(1-currScale)/2;
    matrix4 =Matrix4.diagonal3Values(1, currScale, 1 )..setTranslationRaw(0, currTrans, 0);
       }
   else if(
    index == _currPageValue.floor()+1
   ){
    var currScale = _scaleFacor+(_currPageValue-index+1)*(1-_scaleFacor);
    var currTrans = _height*(1-currScale)/2;
     matrix4 =Matrix4.diagonal3Values(1, currScale, 1 ); 
   }

    return  Transform(
      transform: matrix4,
    child:Stack(
      children: [
         Container(
      height: Plants0p.PageTextContainer,
      margin: EdgeInsets.only(left: 10,right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color:index.isEven?  Colors.green : Colors.purple,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/aloe_vera.png'
          ) )

      ),
      ),

        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(padding: const EdgeInsets.only( top: 80.0),
          child: Container(
                height: 120,
                margin: EdgeInsets.only(left: 25,right: 25, bottom: 12),
                decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                  blurRadius: 5,
                  color: Colors.green,
                  offset:Offset(0 , 2),
                  ),
                ],  
          borderRadius: BorderRadius.circular(28),
          color:Colors.white 
                ),
               child:Container(
               padding: EdgeInsets.only(top:20, left: 16,right: 16),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('flower classification', style: TextStyle(
                  fontFamily: 'CustomFont', fontSize: 17,
                   ),),

                   SizedBox(height: 7,),
                   Row(children: [
                    Wrap(children:
                     List.generate(5, (index) => Icon(Icons.star,color: Colors.green,)),
                     ),
                     SizedBox(
                      width: 10,
                     ),
                     const Text('4,9', style: TextStyle(
                      color: Colors.black54
                     ),),
                    const SizedBox(
                      width: 4,
                     ),
                    const Text('1500',style: TextStyle(
                      color: Colors.black54
                     ),),
                    const SizedBox( width: 4,),
                     const Text('comments', style: TextStyle(
                      color: Colors.black54
                     ),),
                     ],
                    ),
                    
                    const SizedBox(
                      height: 10,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                      IconsandText( icon:Icons.sunny,
                        text: 'Normal',
                        iconColor: Colors.yellow,
                        color: Colors.black45,
                      ),
                       
                       SizedBox(width: 5,),

                       IconsandText( icon:Icons.location_on,
                        text: '3.6 Km',
                        iconColor: Colors.green,
                        color: Colors.black45,
                      ),

                      SizedBox(width: 5,),

                       IconsandText( icon:Icons.access_time,
                        text: '3.6 Km',
                        iconColor: Colors.red,
                        color: Colors.black45,
                      ),


                      ],)

                  
              ],)
              
               )
                ),
                ),
        ),
      ],
    )
    );
  
  }
}