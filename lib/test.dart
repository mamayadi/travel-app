import 'package:first_app/destination.dart';
import 'package:first_app/destinationrec.dart';
import 'package:first_app/gridCard.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  final Destination detail;
  Test({Key key, @required this.detail}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  final List<GridCard> _hotelsList = [
    GridCard(
        imageURL:
            'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
        title: 'Chillax Heritage',
        startPrice: 310.00,
        rate: 4.9,
        like: false),
    GridCard(
        imageURL:
            'https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80',
        title: 'Hotel Bangkok Saran',
        startPrice: 230.00,
        rate: 5.0,
        like: false),
  ];
  final List<GridCard> _foodsList = [
    GridCard(
        imageURL:
            'https://images.unsplash.com/photo-1506354666786-959d6d497f1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
        title: 'Pizza',
        startPrice: 5.00,
        rate: 5.0,
        like: false),
    GridCard(
        imageURL:
            'https://images.unsplash.com/photo-1551183053-bf91a1d81141?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1403&q=80',
        title: 'Spaghetti',
        startPrice: 15.00,
        rate: 5.0,
        like: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: NetworkImage(widget.detail.imageURL),
            fit: BoxFit.contain,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.2)
              ])),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                leading: Container(
                  margin: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15.0),
                      color: Theme.of(context)
                          .scaffoldBackgroundColor
                          .withOpacity(0.4)),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 17.0,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                expandedHeight: 200.0,
                elevation: 0.0,
                backgroundColor: Colors.transparent,
                pinned: false,
                flexibleSpace: FlexibleSpaceBar(
                  title:
                      Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Text(
                      widget.detail.title.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SF pro',
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Theme.of(context)
                            .scaffoldBackgroundColor
                            .withOpacity(0.45),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 2.0, horizontal: 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            widget.detail.review.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'SF pro',
                                fontSize: 12.0),
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.white,
                            size: 12.0,
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 20.0,
                    // ),
                  ]),
                  centerTitle: true,
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 15.0,
                          ),
                        ],
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35.0),
                            topRight: Radius.circular(35.0)),
                      ),
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 0.0),
                          child: Column(
                            children: <Widget>[
                              DestinationRec(title: 'Best Hotels'),
                              SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: _hotelsList.map((hotel) {
                                  return GridCardComponent(card: hotel);
                                }).toList(),
                              ),
                              SizedBox(height: 20.0),
                              DestinationRec(title: 'Popular Foods'),
                              SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: _foodsList.map((food) {
                                  return GridCardComponent(card: food);
                                }).toList(),
                              ),
                              SizedBox(height: 30.0)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GridCardComponent extends StatefulWidget {
  final GridCard card;
  GridCardComponent({Key key, @required this.card}) : super(key: key);

  @override
  _GridCardComponentState createState() => _GridCardComponentState();
}

class _GridCardComponentState extends State<GridCardComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 160.0,
          width: 160.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(widget.card.imageURL),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadiusDirectional.circular(16.0),
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                gradient: LinearGradient(begin: Alignment.topRight, colors: [
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.1)
                ])),
            child: Transform.translate(
              offset: Offset(50, -52),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 60, vertical: 60),
                padding: EdgeInsets.all(0.5),
                child: IconButton(
                  icon: widget.card.like
                      ? Icon(Icons.favorite, color: Colors.red[300])
                      : Icon(Icons.favorite_border, color: Colors.white70),
                  onPressed: () {
                    setState(() {
                      widget.card.like = !widget.card.like;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          widget.card.title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 6.0),
        Text(
          'Starting From \$${widget.card.startPrice.toString()}',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).accentColor.withOpacity(0.4)),
        ),
        SizedBox(height: 6.0),
        Row(
          children: <Widget>[
            Text(widget.card.rate.toString(),
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(width: 6.0),
            Icon(
              Icons.star_border,
              size: 18.0,
              color: Colors.yellowAccent[700],
            ),
          ],
        )
      ],
    );
  }
}
