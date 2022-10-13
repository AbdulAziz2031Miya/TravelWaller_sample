import 'package:flutter/material.dart';

import '../../vipsignin/vip_sign_in.dart';
class CornerNavBar extends StatelessWidget {
  const CornerNavBar({Key? key}) : super(key: key);

  get onClicked => null;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:Colors.white,
      elevation: 4,
      child:ListView(
        children: <Widget>[

           UserAccountsDrawerHeader(accountName: const Text('Welcome Guest',style:  TextStyle( fontSize: 20),),
             accountEmail: const Text("guest@tesdrive.com \n\nPoints:0.00"),
           currentAccountPicture: CircleAvatar(
             child: ClipOval(
               child: Image.asset('assets/images/img_1.png',
               width: 50,
               height :50,
               fit: BoxFit.cover,

               ),
             ),
           ),
           ),
          ListTile(

            leading: const Icon(Icons.today),
            title: const Text('VIP',style:  TextStyle(
              color: Colors.black,),),
            onTap: () => selectedItem(context, 0),
          ),
          Divider(color: Colors.black),
          ListTile(
            leading: const Icon(Icons.amp_stories_rounded),
            title: const Text('Make a Reservation',style:  TextStyle(
              color: Colors.black,),),
            onTap: () => selectedItem(context, 1),
          ),
          ListTile(
            leading: const Icon(Icons.account_balance_wallet_rounded),
            title: const Text('My Reservations',style:  TextStyle(
              color: Colors.black,),),
            onTap: () => selectedItem(context, 3),
          ),
          ListTile(
            leading: const Icon(Icons.account_balance_wallet_rounded),
            title: const Text('My Wallet',style:  TextStyle(
              color: Colors.black,),),
            onTap: () => selectedItem(context, 4),
          ),
          ListTile(
            leading: const Icon(Icons.analytics_rounded),
            title: const Text('My Activity',style:  TextStyle(
              color: Colors.black,),),
            onTap: () => selectedItem(context, 5),
          ),
          Divider(color: Colors.black),
          ListTile(
            leading: const Icon(Icons.thumb_up_rounded),
            title: const Text('Favorites',style:  TextStyle(
              color: Colors.black,),),
            onTap: () => selectedItem(context, 6),
          ),
          ListTile(
            leading: const Icon(Icons.call),
            title: const Text('Contact Us /Partner',style:  TextStyle(
              color: Colors.black,),),
            onTap: () => selectedItem(context, 7),
          ),
          ListTile(
            leading: const Icon(Icons.text_snippet),
            title: const Text('Privacy policy',style:  TextStyle(
              color: Colors.black,),),
            onTap: () => selectedItem(context, 8),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Setting',style:  TextStyle(
              color: Colors.black,),),
            onTap: () => selectedItem(context, 9),
          )
        ],

      ),

    );
  }
  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VipLogin(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VipLogin(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VipLogin(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VipLogin(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VipLogin(),
        ));
        break;case 10:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => VipLogin(),
      ));
      break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VipLogin(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VipLogin(),
        ));
        break;

      case 7:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VipLogin(),
        ));
        break;
      case 8:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VipLogin(),
        ));
        break;
      case 9:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VipLogin(),
        ));
        break;
    }
  }
}
