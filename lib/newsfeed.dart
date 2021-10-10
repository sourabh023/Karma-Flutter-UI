import 'package:flutter/material.dart';

class NewsFeeds extends StatelessWidget {
  const NewsFeeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only( bottom: 10),
                child: Container(
                  margin: EdgeInsets.only(left: 22.0, top: 10),
                  width: MediaQuery.of(context).size.width,
                  child: Text("Karmas"),
                ),
              ),
              Expanded(
                child: ListView(
                  children:[
                    Container(
                      child: Stack(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Container(
                              margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                // color: Colors.black,
                              ),
                              height: 400,
                              width: MediaQuery.of(context).size.width,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/Jay.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20.0,
                            right: 20.0,
                            child: ClipRRect(
                              child: IconButton(
                                onPressed: () => {},
                                icon: Icon(Icons.add_circle_outline_rounded),
                                iconSize: 30.0,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 140.0),
                            child: Container(
                              margin: EdgeInsets.only(top: 300),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Jay Wheeler'),
                                  SizedBox(height: 10.0),
                                  Container(
                                    child: Text(
                                      'It is a long established fact \n that a reader will be distracted',
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color: Colors.black,
                            ),
                            height: 400,
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/Darell.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20.0,
                            right: 20.0,
                            child: ClipRRect(
                              child: IconButton(
                                onPressed: () => {},
                                icon: Icon(Icons.add_circle_outline_rounded),
                                iconSize: 30.0,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 140.0),
                            child: Container(
                              margin: EdgeInsets.only(top: 300),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Jay Wheeler'),
                                  SizedBox(height: 10.0),
                                  Container(
                                    child: Text(
                                      'It is a long established fact that a reader will be distracted.',
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color: Colors.black,
                            ),
                            height: 400,
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/Arcangel.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20.0,
                            right: 20.0,
                            child: ClipRRect(
                              child: IconButton(
                                onPressed: () => {},
                                icon: Icon(Icons.add_circle_outline_rounded),
                                iconSize: 30.0,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 140.0),
                            child: Container(
                              margin: EdgeInsets.only(top: 300),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Jay Wheeler'),
                                  SizedBox(height: 10.0),
                                  Container(
                                    child: Text(
                                      'It is a long established fact that a reader will be distracted.',
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color: Colors.black,
                            ),
                            height: 400,
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/nickyjame.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20.0,
                            right: 20.0,
                            child: ClipRRect(
                              child: IconButton(
                                onPressed: () => {},
                                icon: Icon(Icons.add_circle_outline_rounded),
                                iconSize: 30.0,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 140.0),
                            child: Container(
                              margin: EdgeInsets.only(top: 300),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Jay Wheeler'),
                                  SizedBox(height: 10.0),
                                  Container(
                                    child: Text(
                                      'It is a long established fact that a reader will be distracted.',
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color: Colors.black,
                            ),
                            height: 400,
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/Nio.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20.0,
                            right: 20.0,
                            child: ClipRRect(
                              child: IconButton(
                                onPressed: () => {},
                                icon: Icon(Icons.add_circle_outline_rounded),
                                iconSize: 30.0,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 140.0),
                            child: Container(
                              margin: EdgeInsets.only(top: 300),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Jay Wheeler'),
                                  SizedBox(height: 10.0),
                                  Container(
                                    child: Text(
                                      'It is a long established fact that a reader will be distracted.',
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color: Colors.black,
                            ),
                            height: 400,
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/Ozuna.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20.0,
                            right: 20.0,
                            child: ClipRRect(
                              child: IconButton(
                                onPressed: () => {},
                                icon: Icon(Icons.add_circle_outline_rounded),
                                iconSize: 30.0,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 140.0),
                            child: Container(
                              margin: EdgeInsets.only(top: 300),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Jay Wheeler'),
                                  SizedBox(height: 10.0),
                                  Container(
                                    child: Text(
                                      'It is a long established fact that a reader will be distracted.',
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color: Colors.black,
                            ),
                            height: 400,
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/Lenny.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20.0,
                            right: 20.0,
                            child: ClipRRect(
                              child: IconButton(
                                onPressed: () => {},
                                icon: Icon(Icons.add_circle_outline_rounded),
                                iconSize: 30.0,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 140.0),
                            child: Container(
                              margin: EdgeInsets.only(top: 300),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Jay Wheeler'),
                                  SizedBox(height: 10.0),
                                  Container(
                                    child: Text(
                                      'It is a long established fact that a reader will be distracted.',
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                          )
                        ],
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
