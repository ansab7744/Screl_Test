import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:screl_test/models/userdatafunction.dart';
import 'package:screl_test/models/userdatamodel.dart';
import 'package:screl_test/view/userpage.dart';
import 'package:screl_test/widgets/userwidget.dart';
// import 'package:http/http.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   UserData details =UserData();
  Userdata? data;
  Future<void> Getdata() async {
    data = await details.getuserdata(context);
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.sort,size: 40,),
        title: Text("Users List"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
        child: Column(
          children: [
            Container(
              height: 50,
              child: TextFormField(
                
                decoration: InputDecoration(
                  hintText: "Search User",
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  )
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: ListView.separated(itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserPage(),)),
                  child: UserWidget(name:data!.name[index],street: data!.address.street[index],location: data!.address.city[index],));
              }, separatorBuilder: (context, index) => Divider(color: Colors.transparent,), itemCount: 5)
            )
          ],
        ),
      ),
    );
  }
}