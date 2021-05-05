import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: NinjaCard(),

));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel++;
          });
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/imam.jpeg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[600],
            ),
            Text(
              'NAME',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20.0,),
            Text(
              'Imam Hossain',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 40.0,),
            Text(
                'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 20.0,),
            Text(
              ninjaLevel.toString(),
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 40.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0,),
                Text(
                    'imamagun94@gmail.com',
                    style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
