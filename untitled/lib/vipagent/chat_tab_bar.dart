
import 'package:flutter/material.dart';
import '../homepages/login_create_add/sidebar.dart';
import 'screens/chat_screen.dart';
import 'models/message_data.dart';
import 'screens/details.dart';
import 'screens/history.dart';

class  ChatBar extends StatelessWidget {

  static Route route(MessageData data) =>
      MaterialPageRoute(
        builder: (context) =>
            ChatBar(
              messageData: data,
            ),
      );

  const ChatBar({
    Key? key,
    required this.messageData,
  }) : super(key: key);

  final MessageData messageData;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(
              color: Colors.black,
              size: 35,
            ),
            elevation: 8,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(onPressed: () {
                  Navigator.pushNamed(context, 'buttoms');
                },
                  icon: Image.asset(
                      'assets/images/img_5.png', height: 30, width: 30),),
                IconButton(onPressed: () {},
                  icon: Image.asset(
                      'assets/images/img_1.png', height: 30, width: 30),
                  padding: const EdgeInsets.only(left: 106),),
              ],
            ),
            bottom: const TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.green,
              tabs: [
                Tab(text: "DETAILS"),
                Tab(text: "MESSAGES"),
                Tab(text: "HISTORY"),
              ],
            ),

          ),
          endDrawer: const CornerNavBar(),
          body: const TabBarView(
            children: [
              Details(),
             // ChatScreen(messageData: messageData,),
              History(),
            ],
          ),
        ),
      ),
    );
  }
}

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const CustomerDetails();
  }
}
class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomerHistory();
  }
}




