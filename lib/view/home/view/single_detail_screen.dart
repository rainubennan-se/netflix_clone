import 'package:flutter/material.dart';

class NetflixDetailScreen extends StatelessWidget {
  final Map<String, dynamic> netflixItem;

  const NetflixDetailScreen({Key? key, required this.netflixItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(netflixItem.toString());
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.download,
                color: Colors.white,
                size: 35,
              )),
          // IconButton(
          //     onPressed: () {},
          //     icon: const Icon(
          //       Icons.search,
          //       color: Colors.white,
          //       size: 35,
          //     ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: MediaQuery.of(context).size.height * .35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(netflixItem['image'])),
                )),
            const SizedBox(height: 10),
            Row(
              children: [
                const Image(
                    height: 30,
                    image: AssetImage('assets/images/logo_netflix.png')),
                Text(
                  netflixItem['type'],
                  style: const TextStyle(color: Colors.white38),
                )
              ],
            ),
            Text(
              netflixItem['name'],
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              netflixItem['totalSeasons'],
              style: const TextStyle(fontSize: 16),
            ),
            Column(
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: const BeveledRectangleBorder(),
                        fixedSize: const Size.fromHeight(50)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                        ),
                        Text(
                          'Play',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    )),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const BeveledRectangleBorder(),
                        backgroundColor: Colors.grey[900],
                        fixedSize: const Size.fromHeight(50)),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.download,
                          color: Colors.white,
                        ),
                        Text(
                          'Download',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ))
              ],
            ),
            Text(
              netflixItem['description'] ?? 'No description available.',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                const Text(
                  "Starring: ",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white54,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  netflixItem['Starring'],
                  style: TextStyle(color: Colors.white54, fontSize: 11),
                )
              ],
            ),
            Row(
              children: [
                const Text(
                  "Creator: ",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white54,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  netflixItem['Creators'],
                  style: TextStyle(color: Colors.white54, fontSize: 11),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    Text(
                      "My List",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                    ),
                    Text(
                      "Rated",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                    Text(
                      "Share",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.download,
                      color: Colors.white,
                    ),
                    Text(
                      "Download",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
            const Divider(
              color: Colors.grey,
            ),
            // Column(children: [
            //   netflixItem.keys.map(key){
            //     final episodeDetails = netflixItem[key];
            //     return Padding(padding: EdgeInsets.all(10),
            //     child:Column(children:[
            //       Row(children:[
            //         Container(decoration:BoxDecoration())
            //       ])
            //     ]));
            //   }
            // ],)
          ],
        ),
      ),
    );
  }
}
