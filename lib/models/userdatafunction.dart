import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:screl_test/models/userdatamodel.dart';
import 'package:http/http.dart' as http;



class UserData {
  Future<Userdata> getuserdata(BuildContext context) async {
    var data = Uri.parse(
        " https://jsonplaceholder.typicode.com/users");
    var response = await http.get(data);
    var body = jsonDecode(response.body);
    return Userdata.fromJson(body);
  }
}
