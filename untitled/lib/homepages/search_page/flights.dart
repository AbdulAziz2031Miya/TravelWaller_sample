import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class FlightRound extends StatefulWidget {

  @override
  State<FlightRound> createState() => _FlightRoundState();
}

class _FlightRoundState extends State<FlightRound> {

  TextEditingController timeinput = TextEditingController();
  TextEditingController dateinput = TextEditingController();
  @override
  void initState() {
    dateinput.text = "";
    timeinput.text = "";
    super.initState();
  }
  Widget build(BuildContext context) {
    var selectedValue;
    var checkBoxValue = false;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(33, 40, 68,1),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            Container(
              height: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.shade300,
              ),
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(15
              ),
              child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        const Text("Departure:",
                          style: TextStyle(fontSize: 18,),),
                        Container(
                            padding: const EdgeInsets.only(
                                top: 10, left: 10, right: 10, bottom: 10),
                            width: 250,
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
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(12.0)),
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                      color: Colors.blue, width: 2),
                                ),
                              ),)
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 35,),
                        const Text("Arrival:",
                          style: TextStyle(fontSize: 18,),),
                        Container(
                            padding: const EdgeInsets.only(
                                top: 10, left: 10, right: 10, bottom: 10),
                            width: 250,
                            height: 60,
                            child:
                            const TextField(
                              autocorrect: true,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.flight),
                                hintText: 'To',
                                hintStyle: TextStyle(color: Colors.grey),
                                filled: true,
                                suffixIcon: Icon(Icons.map),
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(12.0)),
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                      color: Colors.blue, width: 2),
                                ),
                              ),)
                        ),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text('\n     Select Pick-up Time',
                            style: TextStyle(fontSize: 18),),
                        ]
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          height:60,
                          width: 150,
                          child:Center(
                              child:TextField(
                                controller: dateinput, //editing controller of this TextField
                                decoration: const InputDecoration(
                                    icon: Icon(Icons.calendar_today), //icon of text field
                                    labelText: "Pick-up date" //label text of field
                                ),
                                readOnly: true,  //set it true, so that user will not able to edit text
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context, initialDate: DateTime.now(),
                                      firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                      lastDate: DateTime(2101)
                                  );

                                  if(pickedDate != null ){
                                    print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                                    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                                    print(formattedDate); //formatted date output using intl package =>  2021-03-16
                                    //you can implement different kind of Date Format here according to your requirement

                                    setState(() {
                                      dateinput.text = formattedDate; //set output date to TextField value.
                                    });
                                  }else{
                                    print("Date is not selected");
                                  }
                                },
                              )
                          ),
                        ),

                        Container(
                          padding: const EdgeInsets.all(15),
                          height:60,
                          width: 150,
                          child:Center(
                              child:TextField(
                                controller: dateinput, //editing controller of this TextField
                                decoration: const InputDecoration(
                                    icon: Icon(Icons.calendar_today), //icon of text field
                                    labelText: "Drop-off date" //label text of field
                                ),
                                readOnly: true,  //set it true, so that user will not able to edit text
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context, initialDate: DateTime.now(),
                                      firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                      lastDate: DateTime(2101)
                                  );

                                  if(pickedDate != null ){
                                    print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                                    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                                    print(formattedDate); //formatted date output using intl package =>  2021-03-16
                                    //you can implement different kind of Date Format here according to your requirement

                                    setState(() {
                                      dateinput.text = formattedDate; //set output date to TextField value.
                                    });
                                  }else{
                                    print("Date is not selected");
                                  }
                                },
                              )
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("\n  Number of Passengers: ",
                          style: TextStyle(fontSize: 17,),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: () {},
                            icon: Image.asset('assets/images/infants.png'),
                            iconSize: 50,
                            padding: const EdgeInsets.only(
                                left: 30, right: 20)),
                        IconButton(onPressed: () {},
                            icon: Image.asset('assets/images/passengers.png'),
                            iconSize: 50,
                            padding: const EdgeInsets.only(
                                left: 20, right: 20)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DropdownButton<int>(
                            hint: const Text("Infants\n      0"),
                            elevation: 15,
                            value: selectedValue,
                            items: <int>[1, 2, 3, 4, 5, 6].map((int value) {
                              return DropdownMenuItem<int>(
                                value: value, child: Text(value.toString()),);
                            }).toList(),
                            onChanged: (newVal) {
                              setState(() {
                                selectedValue = newVal;
                              });
                            }),
                        DropdownButton<int>(
                            hint: const Text("Adults\n     0"),
                            iconSize: 25,
                            elevation: 15,
                            value: selectedValue,
                            items: <int>[1, 2, 3, 4, 5, 6].map((int value) {
                              return DropdownMenuItem<int>(
                                value: value, child: Text(value.toString()),);
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
                        Text("\n      Prefered Airline:     ",
                          style: TextStyle(fontSize: 18),),
                        Text("\n      Prefered Class",
                          style: TextStyle(fontSize: 18),),
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
                            elevation: 4,
                            value: selectedValue,
                            items: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((
                                int value) {
                              return DropdownMenuItem<int>(
                                value: value, child: Text(value.toString()),);
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
                            elevation: 15,
                            value: selectedValue,
                            items: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((
                                int value) {
                              return DropdownMenuItem<int>(
                                value: value, child: Text(value.toString()),);
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
                      children: [
                        Checkbox(
                          value: checkBoxValue,
                          activeColor: Colors.green,
                          onChanged: null,),
                        const Text("Redeem Miles        "),
                        Checkbox(value: checkBoxValue,
                            activeColor: Colors.green,
                            onChanged: null),
                        const Text("Flexibility"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(width: 80,),
                        Text("Airport Distance", textAlign: TextAlign.center,),
                      ],

                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: checkBoxValue,
                            activeColor: Colors.green,
                            onChanged: null),
                        const Text("Airports Nerby"),
                        const SizedBox(width: 45,),
                        DropdownButton<int>(
                            alignment: Alignment.centerLeft,
                            autofocus: true,

                            hint: const Text("Show all"),
                            iconSize: 25,
                            elevation: 15,
                            value: selectedValue,
                            items: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((
                                int value) {
                              return DropdownMenuItem<int>(
                                value: value, child: Text(value.toString()),);
                            }).toList(),
                            onChanged: (newVal) {
                              setState(() {
                                selectedValue = newVal;
                              });
                            }),
                      ],
                    ),

                  ]
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.shade300,
              ),
              width: 375,
              alignment:Alignment.center,
              height: 50,
              child: const Text("SEARCH",style: TextStyle( color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),

            ),

          ],
        ),
      ),
    );
  }
  }
