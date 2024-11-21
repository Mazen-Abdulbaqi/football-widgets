import 'package:flutter/material.dart';
import 'package:football/ronaldo.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  
  final List<Widget> _pages = [
    DiscoverScreen(),
    CristianoRonaldo(), 
    Center(child: Text("Standings Page", style: TextStyle(color: Colors.white))),
    Center(child: Text("More Page", style: TextStyle(color: Colors.white))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], 
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Discover"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Standings"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
        ],
      ),
    );
  }
}

class DiscoverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double padding = screenWidth * 0.05; 
    double imageSize = screenWidth * 0.2; 

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Discover", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          Icon(Icons.search),
          SizedBox(width: padding),
          Icon(Icons.notifications),
          SizedBox(width: padding),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(padding),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.indigo],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.sports_soccer, color: Colors.white),
                              SizedBox(width: padding / 2),
                              Text(
                                "Football",
                                style: TextStyle(color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: padding),
                          Text(
                            "Zidane and Real Madrid: Where it went wrong and what's next",
                            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: padding / 2),
                          Text(
                            "Tomorrow, 06:30 PM",
                            style: TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'image/zidane.jpeg',
                      height: imageSize,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Text(
                "Popular Teams",
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TeamIcon(imagePath: 'image/real_madrid.png'),
                    TeamIcon(imagePath: 'image/barcelona.png'),
                    TeamIcon(imagePath: 'image/juventus.png'),
                    TeamIcon(imagePath: 'image/arsenal.png'),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Text(
                "Upcoming Matches",
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MatchCard(
                    title: "Real Madrid vs FC Barcelona",
                    field: "Strawberry Field",
                    team1Image: 'image/real_madrid.png',
                    team2Image: 'image/barcelona.png',
                  ),
                  MatchCard(
                    title: "Juventus vs Arsenal",
                    field: "Autumn Field",
                    team1Image: 'image/juventus.png',
                    team2Image: 'image/arsenal.png',
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text(
                "Latest News",
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              NewsCard(
                title: "Ronaldo pushing for Man City move",
                imagePath: 'image/ronaldo.jpeg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeamIcon extends StatelessWidget {
  final String imagePath;

  TeamIcon({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    double imageSize = MediaQuery.of(context).size.width * 0.15; 

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CircleAvatar(
        radius: imageSize / 2,
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }
}

class MatchCard extends StatelessWidget {
  final String title;
  final String field;
  final String team1Image;
  final String team2Image;

  MatchCard({
    required this.title,
    required this.field,
    required this.team1Image,
    required this.team2Image,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double horizontalPadding = screenWidth * 0.04; 
    double imageSize = screenWidth * 0.1; 

    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: horizontalPadding),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(team1Image, height: imageSize), 
                SizedBox(width: horizontalPadding),
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: horizontalPadding),
                Image.asset(team2Image, height: imageSize), 
              ],
            ),
            SizedBox(height: 8),
            Text(field, style: TextStyle(color: Colors.white70, fontSize: 14)),
          ],
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String title;
  final String imagePath;

  NewsCard({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double padding = screenWidth * 0.04;

    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.asset(imagePath, height: 60, width: 60),
          SizedBox(width: 12),
          Expanded(
            child: Text(title, style: TextStyle(color: Colors.white, fontSize: 16)),
          ),
        ],
),
);
}
}