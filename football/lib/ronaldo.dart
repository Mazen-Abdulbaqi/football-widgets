import 'package:flutter/material.dart';

class CristianoRonaldo extends StatelessWidget {
  const CristianoRonaldo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('image/ronaldo.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.share, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "LIVE Transfer Talk: Ronaldo pushing for Man City move",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage('assets/author.png'),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Brian Imanuel",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          Text(
                            "May 15, 2020",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.favorite, color: Colors.red),
                      SizedBox(width: 4),
                      Text(
                        "1403",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 16),
                      Icon(Icons.comment, color: Colors.grey),
                      SizedBox(width: 4),
                      Text(
                        "976",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Cristiano Ronaldo has left Juventus' training session early on Wednesday morning after sustaining a blow to the arm.\n\n"
                    "After reportedly asking not to start for last Saturday's 2-2 draw at Udinese, could this mean he is ruled out for Saturday's home match against Empoli?\n\n"
                    "Juventus are due to hold a news conference at 13:00 BST today to unveil new signing Kaio Jorge.",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle read more action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        "Read More",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}