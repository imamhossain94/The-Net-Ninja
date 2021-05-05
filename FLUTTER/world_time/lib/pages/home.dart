import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isEmpty? ModalRoute.of(context).settings.arguments:data;
    String bgImage = data['isDay']? 'assets/day.jpg':'assets/night.jpg';
    Color bgColor = data['isDay']? Colors.limeAccent : Colors.black;
    Color textColor = data['isDay']? Colors.black87 : Colors.white;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(bgImage),
                fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: <Widget>[
                FlatButton.icon(
                    onPressed: () async{
                      dynamic result = await Navigator.pushNamed(context, '/location');
                      setState(() {
                        data = {
                          'time': result['time'],
                          'location': result['location'],
                          'flag': result['flag'],
                          'isDay': result['isDay'],
                        };
                      });
                    },
                    icon: Icon(
                      Icons.add_location,
                      color: textColor,
                    ),
                    label: Text(
                      'Edit Location',
                      style: TextStyle(
                        color: textColor,
                      ),
                    ),
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                        color: textColor,
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20.0,),
                Text(
                  data['time'],
                  style: TextStyle(
                      fontSize: 50.0,
                      letterSpacing: 2.0,
                      color: textColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
