import 'dart:js';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:screl_test/models/userdatafunction.dart';
import 'package:screl_test/models/userdatamodel.dart';
import 'package:screl_test/widgets/userwidget.dart';

class UserPage extends StatelessWidget {
   UserPage({super.key});
  UserData details =UserData();
  Userdata? data;
  // Future<void> Getdata() async {
  //   data = await details.getuserdata();
  // }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back,size: 30,)),
      ),
      body: 
       UserWidget(name: data!.name.toString(), street:data!.address.toString(),location: data!.address.geo.toString(),));
  }
}
