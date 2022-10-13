import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../login_create_add/appbar.dart';
import '../login_create_add/sidebar.dart';
class CarSlide extends StatefulWidget {

  @override
  State<CarSlide> createState() => _CarSlideState();
}
class _CarSlideState extends State<CarSlide> {
  bool dropoff=false;
  TextEditingController dateinput = TextEditingController();
  TextEditingController timeinput = TextEditingController();
var selectedValue;

@override
  void initState() {
    dateinput.text = "";
    timeinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(context),
      endDrawer: const CornerNavBar(),
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromRGBO(33, 40, 68,1),
      body: SingleChildScrollView(
       child: Column(
        children: [

          Container(

            color:Colors.grey.shade300,
            height:650,

            margin: const EdgeInsets.all(15.0),

            child: Column(
              children: [
                SizedBox( height:40,),
                Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox( height:30,),

                const Text('Select Pick-up and Drop-off Location',style: TextStyle( fontSize:18),),]
             ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                        padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                        width: 350,
                        height: 70,
                        child:
                        const TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.pin_drop),
                            hintText: 'Pick-up and drop-off',
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


                    //add the code here********************************************

                  ],
                ),
                SizedBox( height:15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text('     Add a different drop-off location',style: TextStyle( fontSize:18),),
                    Container(
                       child: Switch(
                         activeColor: Colors.green,
                        value: dropoff,
                        onChanged: (bool? value) {
                          setState(() {
                            dropoff = value!;
                          });
                        },
                      ),),
                  ],
                ),
                if( dropoff!=false)
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            Container(
                                padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
                                width: 350,
                                height: 60,
                                child:
                                const TextField(
                                  autocorrect: true,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.pin_drop),
                                    hintText: 'Drop-off ',
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
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text('\n     Select Pick-up date and Drop-off date',style: const TextStyle( fontSize:18),),]
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text('\n     Select Pick-up Time',style: TextStyle( fontSize:18),),]
                ),
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(15),
                        height:60,
                        width: 360,
                        child:Center(
                            child:TextField(
                              controller: timeinput, //editing controller of this TextField
                              decoration: const InputDecoration(
                                  icon: Icon(Icons.timer), //icon of text field
                                  labelText: "Enter Pick-up Time" //label text of field
                              ),
                              readOnly: true,  //set it true, so that user will not able to edit text
                              onTap: () async {
                                TimeOfDay? pickedTime =  await showTimePicker(
                                  initialTime: TimeOfDay.now(),
                                  context: context,
                                );
                                if(pickedTime != null ){
                                  print(pickedTime.format(context));   //output 10:51 PM
                                  DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                                  //converting to DateTime so that we can further format on different pattern.
                                  print(parsedTime); //output 1970-01-01 22:53:00.000
                                  String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                                  print(formattedTime); //output 14:59:00
                                  //DateFormat() is from intl package, you can format the time on any pattern you need.
                                  setState(() {
                                    timeinput.text = formattedTime; //set the value of text field.
                                  });
                                }else{
                                  print("Time is not selected");
                                }
                              },
                            )
                        )
                    )
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text('\n     Select Drop-off Time',style: TextStyle( fontSize:18),),]
                ),
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(15),
                        height:60,
                        width: 360,
                        child:Center(
                            child:TextField(
                              controller: timeinput, //editing controller of this TextField
                              decoration: const InputDecoration(
                                  icon: Icon(Icons.timer), //icon of text field
                                  labelText: "Enter Drop Off Time" //label text of field
                              ),
                              readOnly: true,  //set it true, so that user will not able to edit text
                              onTap: () async {
                                TimeOfDay? pickedTime =  await showTimePicker(
                                  initialTime: TimeOfDay.now(),
                                  context: context,
                                );
                                if(pickedTime != null ){
                                  print(pickedTime.format(context));   //output 10:51 PM
                                  DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                                  //converting to DateTime so that we can further format on different pattern.
                                  print(parsedTime); //output 1970-01-01 22:53:00.000
                                  String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                                  print(formattedTime); //output 14:59:00
                                  //DateFormat() is from intl package, you can format the time on any pattern you need.
                                  setState(() {
                                    timeinput.text = formattedTime; //set the value of text field.
                                  });
                                }else{
                                  print("Time is not selected");
                                }
                              },
                            )
                        )
                    )
                  ],
                ),
              ],
            ),
          ),

          Container(
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey.shade300,
            ),

            alignment:Alignment.center,
            height: 30,
            child: const Text("SEARCH",style: TextStyle( color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),

          ),
        ],
      ),
    ),
    );


  }

}


