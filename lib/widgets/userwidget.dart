import 'package:flutter/material.dart';
import 'package:screl_test/view/locationpage.dart';

class UserWidget extends StatelessWidget {
   UserWidget({super.key,required this.name,required this.street,required this.location});

  String name;
  String street;
  String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20,top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name:"),
            SizedBox(height: 10,),
            Text("street:"),
            SizedBox(height: 10,),

            Text("Location:"),

            Row(
              children: [
                Text(name),
                SizedBox(height: 10,),
                Text(street),
                SizedBox(height: 10,),
                InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => LocatinPage(),)),
                  child: Text(location)),


              ],
            )
          ],
        ),
      ),
      
    );
  }
}