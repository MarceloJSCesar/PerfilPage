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
            leading: Container(
              child:Icon(Icons.menu,
              color: Colors.black,
              ), 
            ),
            actions: <Widget>[
              Container(
                margin: EdgeInsets.only(right:10,),
                child: Icon(Icons.settings,
                color: Colors.black,
                ),
              )
            ],
          ),
          body: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(top: 20, right: 60, left: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        child: Icon(Icons.person_pin_circle),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/me.jpg'),
                        ),
                      ),
                      CircleAvatar(
                        child: Icon(Icons.person_pin_circle),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'D Jordan',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'Flutter Dev',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(top: 40, left: 50, right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            '234',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Posts'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            '592K',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
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
                            '987',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Followers'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                delegate: SliverChildListDelegate(List.generate(9, (int i) {
                  return Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top:20,right: 10,left: 10),
                    child: Image.asset('assets/$i.jpg',
                    fit: BoxFit.cover,
                    ),
                  );
                })),
              ),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.blue,
            child: Icon(Icons.add),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                title: Text('Add'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                title: Text('Lovers'),
              ),
            ],
          ),
        ),
    );
  }
}
