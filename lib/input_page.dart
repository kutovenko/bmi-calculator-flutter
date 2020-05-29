import 'package:flutter/material.dart';

const edgeInset = 15.0;
const borderRadius = 10.0;
const activeColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(edgeInset),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadius),
                      color: Color(0xFF1D1E33),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableContainer(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableContainer(),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableContainer(),
                ),
                Expanded(
                  child: ReusableContainer(),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Icon(Icons.add),
    );
  }
}

class ReusableContainer extends StatelessWidget {
  const ReusableContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(edgeInset),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: activeColor,
      ),
    );
  }
}
