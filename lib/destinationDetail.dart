import 'package:first_app/destination.dart';
import 'package:flutter/material.dart';

class DestinationDetail extends StatelessWidget {
  final Destination detail;
  DestinationDetail({Key key, @required this.detail}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              // height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(detail.imageURL),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.1)
                        ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 16.0, top: 40.0),
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white54),
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
                      ],
                    ),
                    SizedBox(height: 25.0),
                    Text(
                      detail.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0),
                    ),
                    SizedBox(height: 6.0),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromRGBO(255, 255, 255, 0.45),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            detail.review.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'SF pro',
                            ),
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.white,
                            size: 18.0,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 100.0),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0.0, -40.0),
              child: Container(
                height: 800.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 15.0,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(35.0)),
                ),
                child: Center(
                  child: Text('test'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


