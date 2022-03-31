import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

int counter = 1;
void incCounter()
{
  ++counter;
}

const Color bgColor = Colors.green;

void main() {

  MaterialApp ma = MaterialApp(
      home: Home()
    //Text('My first text'),
    );
  return runApp(ma);
}

class Home extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String myTitle = 'My title test qx quick';
    AppBar myAppbar = AppBar( title: Text(myTitle),
    centerTitle: true,
    backgroundColor: bgColor,
    );
    String bodySting = 'myBody text';
    Text bodyText = Text(bodySting);
    return Scaffold(
        appBar: myAppbar,
        body : Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Hole'),
            FlatButton(
              child: Text('Segundo\ntexto'),
              onPressed: () {},
              color: Colors.blue,
            ),
            RaisedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                      Icons.mail,
                  ),
                  label: Text('Click\nme!\nmore'),
                  color: bgColor,
              )
          ],
        ),

        //    Center(
        //           child: IconButton(
        //             onPressed: () { print('You clicked me!'); },
        //             icon: Icon(Icons.mail_outlined),
        //           )
                  // RaisedButton.icon(
                  //     onPressed: () {},
                  //     icon: Icon(
                  //         Icons.mail,
                  //     ),
                  //     label: Text('Click me!'),
                  //     color: bgColor,
                  // )
                  //   FlatButton(
                  //   onPressed: () { print('You clicked me!');  },
                  //   child: Text('Prue abc'),
                  //   color: bgColor,
                  // )
                  // Icon(
                  //     Icons.carpenter,
                  //     color: bgColor,
                  //     size: 100,
                  // )

                    // Image(
                    //image: NetworkImage('https://cdn.wallpapersafari.com/85/87/3JpDli.jpg')
                    // image: Image.asset('assets/mobile1.jpg'),
                    // image: AssetImage('assets/mobile1.jpg'),
                    // image: Image.asset('assets/mobile1.jpg'),
                    // )

                      // Text('Button pressed $counter times bbc',
                      //         style: const TextStyle(fontSize: 20,
                      //                               fontWeight: FontWeight.bold,
                      //                               fontFamily: 'FlorDeLeah',
                      //                               letterSpacing: 0,
                      //                               color: bgColor,
                      //                     ),
                      //         textAlign: TextAlign.right,
                      //         ),

        floatingActionButton:
                      const FloatingActionButton( onPressed: incCounter,
                                                  child : Text('*'),
                                                  backgroundColor: bgColor,
                                                ),
            );
  }
}
