import 'package:first_app/destinationDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'destination.dart';

class GridDest extends StatelessWidget {
  final List<Destination> _listItem = [
    Destination(
        title: 'Malawi',
        imageURL:
            'https://images.unsplash.com/photo-1493666835815-de6b83927e24?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1357&q=80',
        review: 4.8),
    Destination(
        title: 'Japan',
        imageURL:
            'https://images.unsplash.com/photo-1528164344705-47542687000d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1369&q=80',
        review: 5.0),
    Destination(
        title: 'Hawaii',
        imageURL:
            'https://images.unsplash.com/photo-1520116468816-95b69f847357?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
        review: 4.9),
    Destination(
        title: 'Paris',
        imageURL:
            'https://images.unsplash.com/photo-1440994956934-f0bfdab76867?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
        review: 4.6),
    Destination(
        title: 'Norway',
        imageURL:
            'https://images.unsplash.com/photo-1507272931001-fc06c17e4f43?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
        review: 4.9),
    Destination(
        title: 'Holland',
        imageURL:
            'https://images.unsplash.com/photo-1557110081-0996a3f41706?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80',
        review: 5.0),
    Destination(
        title: 'Moscow',
        imageURL:
            'https://images.unsplash.com/photo-1520106212299-d99c443e4568?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
        review: 5.0),
    Destination(
        title: 'China',
        imageURL:
            'https://images.unsplash.com/photo-1529921879218-f99546d03a9d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80',
        review: 4.8),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: new StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: _listItem.length,
        itemBuilder: (BuildContext context, int index) => new InkWell(
          child: new Hero(
            tag: _listItem[index].title,
            child: new Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(_listItem[index].imageURL),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(0.5),
                          Colors.black.withOpacity(0.05)
                        ])),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        _listItem[index].title.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SF pro',
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(255, 255, 255, 0.45),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              _listItem[index].review.toString(),
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
                    ],
                  ),
                ),
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      DestinationDetail(detail: _listItem[index])),
            );
          },
        ),
        staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(2, index.isEven ? 3 : 2),
        mainAxisSpacing: 15.0,
        crossAxisSpacing: 15.0,
      ),
    );
  }
}

// GridView.count(
//         crossAxisCount: 2,
//         padding: EdgeInsets.all(20),
//         crossAxisSpacing: 20,
//         mainAxisSpacing: 20,
//         children: _listItem
//             .map((item) => Card(
//                   child: Container(
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: NetworkImage(item), fit: BoxFit.cover)),
//                   ),
//                 ))
//             .toList(),
//       ),
