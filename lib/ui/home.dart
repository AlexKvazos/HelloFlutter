import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.white,
            padding: EdgeInsets.only(top: 50.0, left: 10.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text("Pepperoni",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w400,
                                color: Colors.blue,
                                fontSize: 30.0,
                                decoration: TextDecoration.none))),
                    Expanded(
                        child: Text("Tomato, Pepperoni",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w400,
                                color: Colors.blue,
                                fontSize: 20.0,
                                decoration: TextDecoration.none)))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Marinara",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w400,
                              color: Colors.blue,
                              fontSize: 30.0,
                              decoration: TextDecoration.none)),
                    ),
                    Expanded(
                        child: Text("Tomato, Garlic",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w400,
                                color: Colors.blue,
                                fontSize: 20.0,
                                decoration: TextDecoration.none)))
                  ],
                ),
                PizzaImageWidget(),
                OrderButton()
              ],
            )));
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza.png');
    Image image = Image(image: pizzaAsset, width: 400.0, height: 400.0);
    return Container(child: image);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
        margin: EdgeInsets.only(top: 50.0),
        child: RaisedButton(
            child: Text("Order New Pizza"),
            color: Colors.blue,
            elevation: 5.0,
            onPressed: () {
              order(context);
            }));

    return button;
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
        title: Text("Order Completed"), content: Text("Thanks for your order"));
    showDialog(context: context, builder: (BuildContext context) => alert);
  }
}
