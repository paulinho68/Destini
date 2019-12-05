import 'package:flutter/material.dart';
import 'storySeed.dart';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

StorySeed storySeed = StorySeed();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("imagem/fundo.png"),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Text(storySeed.getStory(),
                    style: TextStyle(
                      fontSize: 20.0,
                    )),
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storySeed.getNotFinshed(),
                  child: FlatButton(
                    color: Colors.deepPurple,
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.blueAccent,
                    child: Text(
                      storySeed.getChoice1(),
                      style: TextStyle(fontSize: 20.0),
                    ),
                    onPressed: () {
                      setState(() {
                        storySeed.nextStory(1);
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 50.0,
                height: 10.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storySeed.getNotFinshed(),
                  child: FlatButton(
                    color: Colors.blueGrey,
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.blueAccent,
                    child: Text(
                      storySeed.getChoice2(),
                      style: TextStyle(fontSize: 20.0),
                    ),
                    onPressed: () {
                      setState(() {
                        storySeed.nextStory(2);
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storySeed.getFinshed(),
                  child: FlatButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.blueAccent,
                    child: Text(
                      "Restart",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    onPressed: () {
                      setState(() {
                        storySeed.nextStory(2);
                      });
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
