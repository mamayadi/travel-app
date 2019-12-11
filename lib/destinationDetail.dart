import 'package:first_app/destination.dart';
import 'package:flutter/material.dart';

class DestinationDetail extends StatelessWidget {
  final Destination detail;
  DestinationDetail({Key key, @required this.detail}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 300.0,
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(detail.imageURL),
            fit: BoxFit.cover,
          )),
          child: Stack(
            children: <Widget>[Container()],
          ),
        ),
      ),
    );
  }
}

// CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             pinned: true,
//             expandedHeight: 300.0,
//             flexibleSpace: FlexibleSpaceBar(
//               title: Text(detail.title.toUpperCase()),
//               background: Image.network(
//                 detail.imageURL,
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SliverFillRemaining(
//             child: Center(
//               child: Text('hello World'),
//             ),
//           )
//         ],
//       ),
