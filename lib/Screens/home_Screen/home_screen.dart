import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class HomeScreen extends StatelessWidget {
  Widget Singleproduct(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
        color: Color(0xffd9dad9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Expanded(
            flex:2,
            child: Image.network('https://img.freepik.com/premium-photo/medicinal-holy-basil-tulsi-leaves-white_525574-12139.jpg'),

          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,
                vertical: 5),
            child: Expanded(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Holy Basil',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                    Text('Rs50/50g',style: TextStyle(
                      color: Colors.grey,
                    ),),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 10),

                            height: 30,
                            width:50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey) ,
                              borderRadius:BorderRadius.circular(8) ,
                            ),
                            // child: OutlinedButton(onPressed: () {  },
                            child: Row(
                              children: [
                                Expanded(child:Text('50gram',
                                  style: TextStyle( fontSize: 10),)
                                ),
                                Center(
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      size: 10,
                                      color: Colors.yellow,
                                    )
                                ),
                              ],
                            ),),),

                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            height: 30,
                            width: 120,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey) ,
                              borderRadius:BorderRadius.circular(8) ,
                            ), child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.remove,size: 15,color: Color(0xffd0b84c),),
                              Text('1',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffd0b84c)
                              ),),

                              Icon(Icons.add,size: 15,color: Color(0xffd0b84c),)
                            ],
                          ),),),

                      ],
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd4d181),
            child: Icon(Icons.search,size: 17,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xffd4d181),
              child: Icon(Icons.shop,size: 17,),
            ),
          ),
        ],
        backgroundColor: Color(0xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: ListView(
          children: [
            Container(
             height: 150,
              decoration: BoxDecoration(

                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://formnutrition.com/wp-content/uploads/2020/05/spices.jpeg')
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                      flex:2,
                    child: Container(

                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 130,bottom: 10),
                          child: Container(
                            height: 40,
                            width: 100,

                            decoration: BoxDecoration(
                              color: Color(0xffd1ad17),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                bottomLeft:  Radius.circular(50),
                              ),
                            ),
                            child: Center(
                              child: Text('FoodApp',
                                style: TextStyle(
                                  fontSize: 10,
                                color: Colors.white,
                                shadows: [
                                  BoxShadow(
                                    color: Colors.green,
                                    blurRadius: 3,
                                    offset: Offset(3,3),
                                  )
                                ],
                              ),),
                            ),
                          ),
                        ),
                        Text('30% off',style: TextStyle(
                          color: Colors.green[100],
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text('On all Food Products',style: TextStyle(
                            color: Colors.white,


                          ),),
                        )
                      ],
                    ),
                  ),),
                  Expanded(child: Container(),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
Text('Herbs Product'),
                  Text('View all',style: TextStyle(
                    color: Colors.grey,
                  ),),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Singleproduct(),
                  Singleproduct(),
                  Singleproduct(),
                  Singleproduct(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Fresh spices'),
                  Text('View all',style: TextStyle(
                    color: Colors.grey,
                  ),),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Singleproduct(),
                  Singleproduct(),
                  Singleproduct(),
                  Singleproduct(),
                ],
              ),
            )
          ],
        ),
      )
           );
  }
}
