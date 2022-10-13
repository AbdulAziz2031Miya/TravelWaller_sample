
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class LodgingScreen extends StatefulWidget {
  @override
  State<LodgingScreen> createState() => _LodgingScreenState();
}
class _LodgingScreenState extends State<LodgingScreen>
    with SingleTickerProviderStateMixin{
  late TabController _tabController;
  TextEditingController dateinput = TextEditingController();
  TextEditingController timeinput = TextEditingController();
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    dateinput.text = "";
    timeinput.text = "";
    super.initState();
  }

  Widget build(BuildContext context) {
    var selectedValue;
    return Scaffold(
        resizeToAvoidBottomInset: true,

        backgroundColor: Color.fromRGBO(33, 40, 68,1),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height:550,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color:Colors.grey.shade300,
                ),
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text("  Step 1: Select where you staying:\n",style: TextStyle(fontSize: 17,),),
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 10,right: 10,),
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
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: Colors.grey, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              borderSide: BorderSide(color: Colors.blue, width: 2),
                            ),
                          ),)
                    ),
                    Row(
                      children: [
                        const Text("\n  Step 2: Select how long you staying:\n",style: TextStyle(fontSize: 17,),),
                      ],
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
                        const Text("\n  Step 3: Select you requirements:\n",style: TextStyle(fontSize: 17,),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: (){}, icon:const Icon(Icons.hotel),iconSize: 50,padding: const EdgeInsets.only(left:20,right:30)),
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
                        IconButton(onPressed: (){}, icon: const Icon(Icons.man_rounded), iconSize: 60, padding: const EdgeInsets.only(left:45,),),
                        IconButton(onPressed: (){}, icon:const Icon(Icons.man),iconSize: 60,padding: const EdgeInsets.only(left: 45,right:35),),
                        IconButton(onPressed: (){}, icon:const Icon(Icons.child_friendly),iconSize: 60,padding: const EdgeInsets.only(left:10,)),

                      ],
                    ),
                    Row(
                      children: const [

                        Text("                Adults                 Children                 Infants",),
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
              SizedBox(
                height: 10,
              ),// selection box
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

              ),// search box
            ],
          ),
        )
    );

  }
}