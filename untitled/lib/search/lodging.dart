
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../homepages/login_create_add/sidebar.dart';

class LodgingScreen extends StatefulWidget {
  @override
  State<LodgingScreen> createState() => _LodgingScreenState();
}
class _LodgingScreenState extends State<LodgingScreen>
with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    var selectedValue;
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(33, 40, 68,1),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(

                  height:MediaQuery.of(context).size.height*0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:Colors.grey.shade300,
                  ),
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.only(
                    top: 8,
              ),
                  child: Column(
                     children: [
                       Row(
                         children: [

                           Text("\t\t\tSelect where you staying:\n",style: TextStyle(fontSize: 15),),
                         ],
                       ),
                       Container(
                         padding: const EdgeInsets.only(top:0,left: 10,right: 10,bottom: 0),
                         height: 40,
                         child:
                         const TextField(
                           autocorrect: true,
                           decoration: InputDecoration(
                             hintText: 'Search City/State/Zipcode',
                             prefixIcon: Icon(Icons.search),
                             suffixIcon: Icon(Icons.mic),
                             hintStyle: TextStyle(color: Colors.grey),
                             filled: true,
                             fillColor: Colors.white,
                             enabledBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.all(Radius.circular(12.0)),
                               borderSide: BorderSide(color: Colors.grey, width: 2),
                             ),
                             focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.all(Radius.circular(10.0)),
                               borderSide: BorderSide(color: Colors.blue, width: 2),
                             ),
                           ),)
                           ),
                        Row(
                          children: [
                            Text("\nStep 2: Select how long you stayingS:\n"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(onPressed: (){}, icon: const Icon(Icons.calendar_today), iconSize: 70, padding: const EdgeInsets.only(left:30,right: 20),),
                            IconButton(onPressed: (){}, icon:const Icon(Icons.edit_calendar),iconSize: 70,padding: const EdgeInsets.only(left: 20,right: 20),),
                          ],
                        ),
                       Row(
                         children: [
                           Text("\n\n Step 3: Select you requirements:"),
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           IconButton(onPressed: (){}, icon:const Icon(Icons.hotel),iconSize: 70,padding: const EdgeInsets.only(left:20,right:30)),
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                       DropdownButton<int>(
                       hint: const Text("Rooms"),
                        elevation:15,
                        value: selectedValue,
                        items: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((int value) {
                          return DropdownMenuItem<int>(value: value, child: Text(value.toString()), );
                        }).toList(),
                        onChanged: (newVal) {
                          setState(() {
                            selectedValue = newVal;
                          });
                        }),
                         ],
                       ),
                       Row(
                         children: [
                           IconButton(onPressed: (){}, icon: const Icon(Icons.man_rounded), iconSize: 70, padding: const EdgeInsets.only(left:30,right: 20),),
                           IconButton(onPressed: (){}, icon:const Icon(Icons.man),iconSize: 70,padding: const EdgeInsets.only(left: 20,right: 20),),
                           IconButton(onPressed: (){}, icon:const Icon(Icons.child_friendly),iconSize: 70,padding: const EdgeInsets.only(left:20,right:30)),

                         ],
                       ),
                       Row(
                         children: const [

                           Text("            Adults                    Children                Infants",),
                           ],),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                           DropdownButton<int>(
                             elevation: 9,
                               hint: const Text(""),
                               dropdownColor: Colors.white,
                               value: selectedValue,
                               items: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((int value) {
                                 return DropdownMenuItem<int>(value: value, child: Text(value.toString()), );
                               }).toList(),
                               onChanged: (newVal) {
                                 setState(() {
                                   selectedValue = newVal;
                                 });
                               }),
                          DropdownButton<int>(
                              hint: const Text(""),
                              value: selectedValue,
                              elevation: 9,
                              items: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((int value) {
                                return DropdownMenuItem<int>(value: value, child: Text(value.toString()), );
                              }).toList(),
                              onChanged: (newVal) {
                                setState(() {
                                  selectedValue = newVal;
                                });
                              }),
                          DropdownButton<int>(

                              value: selectedValue,
                              borderRadius: BorderRadius.circular(5),
                              elevation: 6,
                              items: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((int value) {
                                return DropdownMenuItem<int>(value: value, child: Text(value.toString()), );
                              }).toList(),
                              onChanged: (newVal) {
                                setState(() {
                                  selectedValue = newVal;
                                });

                              }),
                         ],
                       ),
                     ],
                  ),

              ),
            Container(
              color: Colors.grey.shade300,
              width: 800,
              alignment:Alignment.center,
              margin: const EdgeInsets.only( right: 15,left: 15,top: 5),
              height: 60,
              child: const Text("SEARCH",style: TextStyle( color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),

            ),// selection box// search box
          ],
        ),
      )
    );

  }
}