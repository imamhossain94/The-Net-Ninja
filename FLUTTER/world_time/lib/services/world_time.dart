import 'package:http/http.dart';
import 'dart:convert';

import 'package:intl/intl.dart';

class WorldTime{


  String time, location, flag, url;
  bool isDayTime = false;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async{
    try{
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);

      String dateTime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);

      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset)));

      isDayTime = now.hour>6 && now.hour<19? true:false;
      time = DateFormat.jm().format(now);
    }catch(e){
      time = 'Error';
    }

  }


}