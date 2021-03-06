import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String heroTag;

  DetailsPage({this.heroTag});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: widget.heroTag,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.heroTag), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            bottom: 15.0,
            left: 15.0,
            right: 15.0,
            child: Material(
              borderRadius: BorderRadius.circular(10.0),
              elevation: 3.0,
              child: Container(
                height: 210.0,
                width: MediaQuery.of(context).size.width - 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Container(
                            height: 115.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.4),
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                image: DecorationImage(
                                    image: AssetImage('assets/dress.jpeg'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "LAMINDATED",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Louis vuitton",
                              style:
                                  TextStyle(fontSize: 16.0, color: Colors.grey),
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              height: 35.0,
                              width: (MediaQuery.of(context).size.width + 45) / 2,
                              child: Text(
                                "One button V-neck sling, long-sleeved, waist female stiching dress",
                                style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.grey.withOpacity(0.4)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Divider(
                        color: Colors.brown.withOpacity(0.5),
                        height: 10.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "\$6500",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.brown
                              ),
                            ),
                            FloatingActionButton(
                              elevation: 0.0,
                              onPressed: () {},
                              child: Center(
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                              ),
                              backgroundColor: Colors.brown,
                              mini: true,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 50.0,
            top: MediaQuery.of(context).size.height / 2,
            child: Container(
              height: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.black.withOpacity(0.4)
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Row(
                    children: <Widget>[
                      Text(
                        'LAMINATED',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20.0,
            top: 40.0,
            child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 28.0)
          ),
          Positioned(
            left: (MediaQuery.of(context).size.width / 2) - 10,
            top: 40.0,
            child: Text(
              '1/3',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),
            )
          ),
        ],
      ),
    );
  }
}
