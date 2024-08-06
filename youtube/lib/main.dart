import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage_class(),
    );
  }
}

class MainPage_class extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage_class> {
  int _currentIndex = 0; // Index for the selected bottom navigation item

  // List of pages to display in the main content area
  final List<Widget> pages = [
    // Replace these with your own page widgets
    page1(),
    Page2(),
    Page3(),
    page4(),
  ];

  List<String> Categories = [
    'All',
    'TamilvCinema',
    'Flutter Conccepts',
    'Grid View',
    'Wipro',
    'TCS Interview',
    'News Today',
    'More...',
  ];
  String SelectedCategory = 'All';
  @override
  Widget build(BuildContext context) {
    var myVariable = Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "YouTube",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.connected_tv_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              // Implement notifications functionality here
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // Implement search functionality here
            },
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              // Implement notifications functionality here
            },
          ),
          IconButton(
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              // Implement notifications functionality here
            },
          ),
        ],
        // SECOND SUGGESSTIONBAR CODE

        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.explore_outlined,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Text(
                          "Explore",
                          
                        ),
                      ),
                    ],
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.grey.shade200),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: SizedBox(
                      height: 30,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.grey.shade200,
                      )),
                ),
                Wrap(
                    spacing: 5,
                    children: Categories.map((category) => FilterChip(
                        showCheckmark: false,
                        label: Text(
                          category,
                          style: TextStyle(
                              color: SelectedCategory == category
                                  ? Colors.white
                                  : Colors.black),
                        ),
                        backgroundColor: Colors.grey.shade200,
                        selectedColor: Colors.grey.shade600,
                        selected: SelectedCategory == category,
                        onSelected: (bool value) {
                          setState(() {
                            SelectedCategory = category;
                          });
                        })).toList())
              ],
            ),
          ),
        ),
      ),
      /* bottom: PreferredSize(
          preferredSize: Size(10, 50),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
          ),
        ),*/

      //DRAWER CODE

      drawer: Drawer(
        // Add your drawer content here
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('sona.rajendrean@gmail.com'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Login'),
              onTap: () {
                // Implement action for drawer item 1
              },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                // Implement action for drawer item 2
              },
            ),
            // Add more drawer items as needed
          ],
        ),
      ),
      body: pages[_currentIndex],

      //BOTTOM NAVIGATION BAR WITH ICONS

      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.play_arrow_outlined,
                color: Colors.white,
              ),
              label: 'Shorts',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.subscriptions_outlined,
                color: Colors.white,
              ),
              label: 'Subscriptions',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_library_outlined,
                color: Colors.white,
              ),
              label: 'Libraries',
            ),
          ],
        ),
      ),
    );
    return myVariable;
  }
  // ignore: non_constant_identifier_names,

  Type get newMethod => CustomScrollView;
}

//PAGE 1 CONTENT

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /* appBar: AppBar(
          title: Text('D E L I C I O U S D I S T I N Y'),
          backgroundColor: Colors.yellow,
        ),*/
        body: ListTextImage(),
      ),
    );
  }
}

class ListTextImage extends StatelessWidget {
  final List<String> imageURLs = [
    'https://tse2.mm.bing.net/th?id=OIP.2-ep7GVydS_MfuqoEtTAaQHaE8&pid=Api&P=0&h=220',
    'https://tse3.mm.bing.net/th?id=OIP.O6hPQjePPw7vTJe0U6XsygHaE6&pid=Api&P=0&h=220',
    'https://tse3.mm.bing.net/th?id=OIP.Z6YLDUqZmetpxo71JXp-LAHaE8&pid=Api&P=0&h=220',
    'https://dynamic.tourtravelworld.com/blog_images/the-famous-street-foods-of-hyderabad-20170831041014.jpg',
    'https://tse1.mm.bing.net/th?id=OIP.pqTAV6rHwGa8LDYtj1P7xQHaD4&pid=Api&P=0&h=220',
    'https://tse3.mm.bing.net/th?id=OIP.PB_IUQOHlfXfdK4NqFxgIAHaE8&pid=Api&P=0&h=220'
  ];

  final List<String> text = [
    'I N D I A N  T R A D I T I O N A L',
    'K E R A L A  S P E C I A L',
    'T A S T E  O F  R A J A S T A N',
    'S T R E E T  F O O D  I N  H Y D A R A B A D',
    'K A N Y A K U M A R I  F A M O U S',
    'M A N I P U R  F A M O U S'
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 16.0,
      ),
      itemCount: imageURLs.length,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.red,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'I N D I A N_F A M O U S',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                leading: Icon(Icons.food_bank),
              ),
              Image.network(imageURLs[index]),
              Text(text[index]),
              Container(
                color: Colors.red,
                child: Icon(Icons.star_half, color: Colors.white),
              ),
              Text('4.0 Rating'),
            ],
          ),
        );
      },
    );
  }
}

//PAGE 2 CONTENT

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String displayedText = '';

  get child => null;

  void displayText(String text) {
    setState(() {
      displayedText = text;
    });
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.thumb_up),
                  title: Text('Like'),
                  onTap: () {
                    displayText('You liked the item.');
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.thumb_down),
                  title: Text('Dislike'),
                  onTap: () {
                    displayText('You disliked the item.');
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        /* appBar: AppBar(
        title: Text('Flutter Bottom Sheet '),
      ),*/
        body: Container(
          child: Center(
            child: Row(
              children: [
                SizedBox(
                  height: 800,
                  width: 600,
                  child: Image.network(
                      'https://static.vecteezy.com/system/resources/thumbnails/010/376/655/small/technical-support-customer-help-global-international-tech-support-customer-service-business-and-technology-concept-earth-globe-in-wireframe-hands-illustration-vector.jpg'),
                ),
                Container(
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          displayedText,
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _showBottomSheet,
          child: Icon(Icons.add),
        ));
  }
}

//PAGE 3 CONTENT

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Image.network(
          'https://images01.nicepagecdn.com/page/45/81/website-template-preview-458174.jpg'),
    ));
  }
}

//PAGE 4 CONTENT

class page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Image.network(
          'https://images.pexels.com/photos/1261180/pexels-photo-1261180.jpeg?auto=compress&cs=tinysrgb&w=600'),
    ));
  }
}
