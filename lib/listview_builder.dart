import 'package:flutter/material.dart';

void main() {
  runApp(const Listview());
}

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List names = [
      'ghalib.hassan',
      'samad.abdul',
      'haider.khan',
      'iftikhar.ahmad',
      'waqas.alishah',
      'danish.khan'
    ];
    List images = [
      'asset/1.jpg',
      'asset/2.jpg',
      'asset/3.jpg',
      'asset/4.jpg',
      'asset/5.jpg',
      'asset/6.jpg',
      'asset/7.jpg',
      'asset/8.jpg',
      'asset/9.jpg',
      'asset/10.jpg'
    ];
    List tags = ['tower', 'mooon', 'antarctic', 'parrot', 'temple', 'game'];
    List mention = ['ghalib', 'samad', 'haider', 'iftikhar', 'waqas', 'danish'];
    List capital = ['Ghalib', 'Samad', 'Haider', 'Iftikhar', 'Waqas', 'Danish'];
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Stories'),
                Row(
                  children: [
                    Icon(Icons.play_arrow_rounded),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Watchh all'),
                  ],
                )
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                height: 100,
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 80,
                        // height: 50,
                        // color: Colors.amber,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('${images[index]}'),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text('${capital[index]}'),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )),
          Divider(),
          Expanded(
            child: Container(
              width: 1240,
              child: ListView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('asset/ghalib-profile.jpg'),
                                  ),
                                  SizedBox(width: 10),
                                  Text('${names[index]}'),
                                ],
                              ),
                              Icon(Icons.more_horiz_outlined),
                            ],
                          ),
                          SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              '${images[index]}',
                              fit: BoxFit.fill,
                              width: 1240,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: index.isEven
                                        ? Colors.red
                                        : Colors.black,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(Icons.message),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(Icons.send),
                                ],
                              ),
                              Icon(Icons.bookmark)
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text('4,567 Likes'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('${mention[index]}'),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Hi'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '#${tags[index]}',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
