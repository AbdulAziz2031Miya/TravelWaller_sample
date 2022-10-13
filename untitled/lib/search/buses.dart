import 'package:flutter/material.dart';
class CarSlide2 extends StatefulWidget {

  @override
  State<CarSlide2> createState() => _CarSlide2State();
}
class _CarSlide2State extends State<CarSlide2> {
  var selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              color:Colors.grey.shade300,
              height:320,
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.only(
                top: 8,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                          width: 180,
                          height: 60,
                          child:
                          const TextField(
                            autocorrect: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: Icon(Icons.mic),
                              hintText: 'From',
                              hintStyle: const TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                borderSide: BorderSide(color: Colors.grey, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(const Radius.circular(10.0)),
                                borderSide: const BorderSide(color: Colors.blue, width: 2),
                              ),
                            ),)
                      ),
                      Container(
                          padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                          width: 180,
                          height: 60,
                          child:
                          const TextField(
                            autocorrect: true,
                            decoration: InputDecoration(
                              hintText: 'To ',

                              hintStyle: const TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                borderSide: BorderSide(color: Colors.grey, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(const Radius.circular(10.0)),
                                borderSide: const BorderSide(color: Colors.blue, width: 2),
                              ),
                            ),)
                      ),

                    ],
                  ),


                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.calendar_today), iconSize: 60, padding: const EdgeInsets.only(left:8,right: 8),),
                      IconButton(onPressed: (){}, icon:const Icon(Icons.edit_calendar),iconSize: 60,padding: const EdgeInsets.only(left:0,right: 12),),

                    ],
                  ),
                  Row(
                    children: const [
                      Text("     Depart       Return               ",),

                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                          width: 180,
                          height: 60,
                          child:
                          const TextField(
                            autocorrect: true,
                            decoration: InputDecoration(
                              hintText: 'Search ',

                              hintStyle: const TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                borderSide: BorderSide(color: Colors.grey, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(const Radius.circular(10.0)),
                                borderSide: const BorderSide(color: Colors.blue, width: 2),
                              ),
                            ),)
                      ),
                      Container(
                          padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                          width: 180,
                          height: 60,
                          child:
                          const TextField(
                            autocorrect: true,
                            decoration: InputDecoration(
                              hintText: '',
                              hintStyle: const TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                borderSide: BorderSide(color: Colors.grey, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(const Radius.circular(10.0)),
                                borderSide: const BorderSide(color: Colors.blue, width: 2),
                              ),
                            ),)
                      ),

                    ],
                  ),


                ],
              ),
            ),
            Container(
              color: Colors.grey.shade300,
              width: 370,
              alignment:Alignment.center,
              margin: const EdgeInsets.only( right: 15,left: 15,top: 5),
              height: 60,
              child: const Text("SEARCH",style: TextStyle( color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),

            ),
          ],
        ),

    );

  }
}