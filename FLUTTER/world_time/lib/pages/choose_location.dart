import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


  List<WorldTime> locations = [
    WorldTime(location: 'Dhaka', flag: 'f1.png', url: 'Asia/Dhaka'),
    WorldTime(location: 'Berlin', flag: 'f2.png', url: 'Europe/Berlin'),
    WorldTime(location: 'Cairo', flag: 'f3.png', url: 'Africa/Cairo'),
    WorldTime(location: 'Nairobi', flag: 'f4.png', url: 'Africa/Nairobi'),
    WorldTime(location: 'New York', flag: 'f5.png', url: 'America/New_York'),
    WorldTime(location: 'Dhaka', flag: 'f1.png', url: 'Asia/Dhaka'),
    WorldTime(location: 'Berlin', flag: 'f2.png', url: 'Europe/Berlin'),
    WorldTime(location: 'Cairo', flag: 'f3.png', url: 'Africa/Cairo'),
    WorldTime(location: 'Nairobi', flag: 'f4.png', url: 'Africa/Nairobi'),
    WorldTime(location: 'New York', flag: 'f5.png', url: 'America/New_York'),
    WorldTime(location: 'Dhaka', flag: 'f1.png', url: 'Asia/Dhaka'),
    WorldTime(location: 'Berlin', flag: 'f2.png', url: 'Europe/Berlin'),
    WorldTime(location: 'Cairo', flag: 'f3.png', url: 'Africa/Cairo'),
    WorldTime(location: 'Nairobi', flag: 'f4.png', url: 'Africa/Nairobi'),
    WorldTime(location: 'New York', flag: 'f5.png', url: 'America/New_York'),

  ];

  void getTime(index) async{
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'time': instance.time,
      'location': instance.location,
      'flag': instance.flag,
      'isDay': instance.isDayTime,
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Build Function Run');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Choose LOcation'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
        child: ListView.builder(
            itemCount: locations.length,
            itemBuilder: (context, index){
              return Card(
                child: ListTile(
                  title: Text(locations[index].location),
                  onTap: (){
                    getTime(index);
                  },
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/day.jpg',),
                  ),
                ),
              );
            },
        ),
      ),
    );
  }
}
