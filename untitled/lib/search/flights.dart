import 'package:flutter/material.dart';
import '../../homepages/login_create_add/sidebar.dart';
class FlightRound extends StatefulWidget {

  @override
  State<FlightRound> createState() => _FlightRoundState();
}

class _FlightRoundState extends State<FlightRound> {

  @override
  Widget build(BuildContext context) {
    var selectedValue;
    var  checkBoxValue =false;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [

            Row(
              children: [
                Container(
                  height: 8,
                  color: Colors.green,
                ),
                Container(
                    padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                    width: 180,
                    height: 60,
                    child:
                    const TextField(
                      autocorrect: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.flight),
                        hintText: 'From',
                        suffixIcon: Icon(Icons.map),
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
                Container(
                    padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                    width: 180,
                    height: 60,
                    child:
                    const TextField(
                      autocorrect: true,
                      decoration: InputDecoration(
                        hintText: 'To',

                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        suffixIcon: Icon(Icons.flight),
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

              ],
            ),
            Row(
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.calendar_today), iconSize: 60, padding: const EdgeInsets.only(left:8,right: 8),),
                IconButton(onPressed: (){}, icon:const Icon(Icons.edit_calendar),iconSize: 60,padding: const EdgeInsets.only(left:0,right: 12),),
                IconButton(onPressed: (){}, icon:Image.asset('assets/images/infants.png'),iconSize: 60,padding: const EdgeInsets.only(left:38,right:12)),
                IconButton(onPressed: (){}, icon: Image.asset('assets/images/passengers.png'),iconSize: 60,padding: const EdgeInsets.only(left:10,right:10)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Depart"),
                const Text("Return",),
                const SizedBox(width: 19,),
                DropdownButton<int>(
                    hint: const Text("Infants\n 0-2"),
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
                DropdownButton<int>(
                    hint: const Text("Passengers\n2 and up "),
                    iconSize: 25,
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
              children: const [
                Text("\n    Prefereed Airline:     ",style: TextStyle(fontSize: 18),),
                Text("\n     Preferred Class",style: TextStyle(fontSize: 18),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton<int>(
                    hint: const Text("Show all"),
                    iconSize: 25,
                    borderRadius: BorderRadius.circular(12),
                    focusColor: Colors.black,
                    elevation:4,
                    value: selectedValue,
                    items: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((int value) {
                      return DropdownMenuItem<int>(value: value, child: Text(value.toString()), );
                    }).toList(),
                    onChanged: (newVal) {
                      setState(() {
                        selectedValue = newVal;
                      });
                    }),
                const SizedBox(
                  width: 24,),
                DropdownButton<int>(
                    dropdownColor: Colors.grey,
                    hint: const Text("Show all"),
                    iconSize: 40,
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
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                Checkbox(
                  value: checkBoxValue,
                  activeColor: Colors.green,
                  onChanged:null,),
                const Text("Redeem Miles        "),
                Checkbox(value: checkBoxValue,
                    activeColor: Colors.green,
                    onChanged:null),
                const Text("Flexibility"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:const [
                SizedBox( width: 80,),
                Text("Airport Distance",textAlign: TextAlign.center,),
              ],

            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(value: checkBoxValue,
                    activeColor: Colors.green,
                    onChanged:null),
                const Text("Airports Nerby"),
                const SizedBox( width: 45,),
                DropdownButton<int>(
                    alignment:Alignment.centerLeft,
                    autofocus: true,

                    hint: const Text("Show all"),
                    iconSize: 25,
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
            Container(
              color: Colors.grey.shade300,
              width: 800,
              alignment:Alignment.center,
              margin: const EdgeInsets.only( right: 15,left: 15,top: 5),
              height: 60,
              child: const Text("SEARCH",style: TextStyle( color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),

            ),
          ],
        ),
      ),

    );

  }
}