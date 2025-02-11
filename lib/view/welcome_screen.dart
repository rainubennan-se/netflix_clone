import 'package:flutter/material.dart';
import 'package:netflix_clone/view/bottom.dart';

// ignore: must_be_immutable
class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);
  List images = [
    'https://img.freepik.com/premium-vector/logo-kid-gamer_573604-730.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOuWxHOWjt9RwC0njfgXO2xn3mN_3UJCo6HG7TNkoxTlzMVyMJLdIHu4M893zFh1gIifU&usqp=CAU',
    'https://img.freepik.com/premium-vector/logo-kid-gamer_573604-737.jpg',
    'https://img.freepik.com/premium-photo/cartoon-game-avatar-logo-gaming-brand_902820-465.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        // centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(
            left: 50,
          ),
          child: Image(
            image: AssetImage('assets/images/Netflix_name.png'),
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mode_edit_outline_outlined,
                color: Colors.white,
                size: 20,
              ))
        ],
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Expanded(
                flex: 1,
                child: Text(
                  "Who's Watching?",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
            Expanded(
              flex: 5,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // mainAxisSpacing: 5,
                  // crossAxisSpacing: 5,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      print(images[index]);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Bottom(
                                  profileimage: images[index],
                                )),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .08,
                        width: MediaQuery.of(context).size.width * .06,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(images[index]))),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
