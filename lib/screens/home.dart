import 'package:fashion_app_ui/screens/details.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Discovery',
          style: TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_camera),
            color: Colors.grey,
            onPressed: () {},
            iconSize: 30.0,
          )
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: _controller,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
                icon: Icon(Icons.play_circle_outline,
                    color: Colors.grey, size: 25.0)),
            Tab(icon: Icon(Icons.navigation, color: Colors.grey, size: 25.0)),
            Tab(
                icon: Icon(Icons.supervised_user_circle,
                    color: Colors.grey, size: 25.0)),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 15.0),
        children: <Widget>[
          Container(
            height: 150.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                _listItem("assets/model-1.jpeg", "assets/brand-1.jpeg"),
                _listItem("assets/model-2.jpeg", "assets/brand-2.jpeg"),
                _listItem("assets/model-3.jpeg", "assets/brand-3.jpeg"),
                _listItem("assets/model-4.jpeg", "assets/brand-4.jpeg"),
                _listItem("assets/model-5.jpeg", "assets/brand-5.jpeg"),
                _listItem("assets/model-6.jpeg", "assets/brand-6.jpeg"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              elevation: 4.0,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    // Header
                    Row(
                      children: <Widget>[
                        Container(
                          height: 60.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            image: DecorationImage(
                                image: AssetImage("assets/emilia-1.jpeg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          width: MediaQuery.of(context).size.width - 130.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Emilia",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                  Text(
                                    "34 mins ago",
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.grey),
                                  ),
                                ],
                              ),
                              IconButton(
                                icon: Icon(Icons.more_vert),
                                color: Colors.grey,
                                onPressed: () {},
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15.0),
                    // Description
                    Text(
                      "This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temperament and is recommend to friends.",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    // Grid Images
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DetailsPage(
                                      heroTag: "assets/emilia-2.jpeg")));
                            },
                            child: Hero(
                              tag: "assets/emilia-2.jpeg",
                              child: Container(
                                height: 200.0,
                                width:
                                    (MediaQuery.of(context).size.width - 60.0) /
                                        2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/emilia-2.jpeg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => DetailsPage(
                                          heroTag: "assets/emilia-3.jpeg")));
                                },
                                child: Hero(
                                  tag: "assets/emilia-3.jpeg",
                                  child: Container(
                                    height: 95.0,
                                    width: (MediaQuery.of(context).size.width -
                                            80.0) /
                                        2,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/emilia-3.jpeg"),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => DetailsPage(
                                          heroTag: "assets/emilia-4.jpeg")));
                                },
                                child: Hero(
                                  tag: "assets/emilia-4.jpeg",
                                  child: Container(
                                    height: 95.0,
                                    width: (MediaQuery.of(context).size.width -
                                            80.0) /
                                        2,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/emilia-4.jpeg"),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ]),
                    SizedBox(height: 10.0),
                    // Chips
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 10.0),
                              child: Text('# Louis vuitton',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.brown)),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 10.0),
                              child: Text('# Chloe',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.brown)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Divider
                    Divider(
                      color: Colors.brown,
                      height: 30.0,
                    ),
                    SizedBox(height: 10.0),
                    // Action Buttons
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.reply),
                          color: Colors.grey.withOpacity(0.4),
                          iconSize: 25.0,
                          onPressed: () {},
                        ),
                        Text(
                          "1.7k",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(width: 5.0),
                        IconButton(
                          icon: Icon(Icons.comment),
                          color: Colors.grey.withOpacity(0.4),
                          iconSize: 25.0,
                          onPressed: () {},
                        ),
                        Text(
                          "325",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 220,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.favorite),
                                color: Colors.red,
                                iconSize: 25.0,
                                onPressed: () {},
                              ),
                              Text(
                                "2.3k",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _listItem(String imgPath, String logo) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 75.0,
                width: 75.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.5),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 50.0,
                left: 50.0,
                child: Container(
                  height: 25.0,
                  width: 25.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    image: DecorationImage(
                        image: AssetImage(logo), fit: BoxFit.cover),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10.0),
          Container(
            height: 30.0,
            width: 75.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.brown,
            ),
            child: Center(
              child: Text(
                "Follow",
                style: TextStyle(color: Colors.white, fontSize: 14.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
