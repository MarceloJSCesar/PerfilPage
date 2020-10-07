import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: CustomScrollView(
          slivers: [
             SliverToBoxAdapter(
                  child: Container(
                margin: EdgeInsets.only(top: 50,right:60,left: 60),
                    child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(Icons.person_pin_circle),
                       ),
                       Container(
                         height:80,
                         width:80,
                         child: CircleAvatar(
                           backgroundImage: AssetImage('assets/me.jpg'),
                         ),
                       ),
                       CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(Icons.person_pin_circle),
                       )
                     ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: 15),
                child: Column(
                  children: <Widget>[
                    Text(
                      'D Jordan',
                    style: TextStyle(fontSize: 25),
                    ),
                    Text('Flutter Dev'),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
            margin: EdgeInsets.only(top: 30,right:40,left: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            '357',
                          style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),
                        ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Photos'),
                    ],
                  ),
                   Column(
                        children: <Widget>[
                          Text(
                            '357K',
                          style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),
                        ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Followers'),
                    ],
                  ),
                   Column(
                        children: <Widget>[
                          Text(
                            '216',
                          style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),
                        ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Following'),
                    ],
                  ),
                ],
              ),
            ),
            ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 5,mainAxisSpacing: 5),

            delegate: SliverChildListDelegate(List.generate(
              9,
              (int i){
                return Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  child: Image.asset('assets/$i.jpg',
                  fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.orange,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 3,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
