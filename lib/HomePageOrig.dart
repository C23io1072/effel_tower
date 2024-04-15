//Doorhi bagshiin ugsun code-iig main.dart file--iinhaa derged HomePage.dart file shineer uusgeed
//dotor ni huulna.

// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
//Deerhi kod aldaa zaahaar doorhiig suulgana
//  $ flutter pub add flutter_rating_bar

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => MyAppState();
}

class MyAppState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  int starz = 3;
  Widget _starList({required int rating}) {
    List<Widget> starList = [];
    for (var i = 0; i < 5; i++) {
      if (i < rating) {
        starList.add(
          const Icon(Icons.star, color: Colors.yellow),
        );
      } else {
        starList.add(const Icon(Icons.star, color: Colors.grey));
      }
    }
    return Row(
      children: starList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Info",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () => {},
            color: Colors.black,
            icon: const Icon(Icons.account_circle),
          )
        ],
        leading: IconButton(
            onPressed: () => {},
            color: Colors.black,
            icon: const Icon(Icons.menu)),
        elevation: 0,
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 100.0),
                height: 230,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://media.wired.com/photos/59269cd37034dc5f91bec0f1/191:100/w_1280,c_limit/GoogleMapTA.jpg'),
                  ),
                ),
              ),
              Positioned(
                top: 120,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        width: 2, color: Colors.white.withOpacity(0.6)),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://cdn.britannica.com/54/75854-050-E27E66C0/Eiffel-Tower-Paris.jpg'),
                    ),
                  ),
                  height: 200,
                  width: 200,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Expanded(
                  child: Text(
                    'Eiffel Tower',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 95,
                ),
                _starList(rating: starz),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Broadcasting Tower',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Paris',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0, bottom: 50.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          "About Eiffel Tower",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          "The new version gained Eiffel's support: he bought the rights to the patent on the design which Koechlin, Nougier, and Sauvestre had taken out, and the design was put on display at the Exhibition of Decorative Arts in the autumn of 1884 under the company name. On 30 March 1885, Eiffel presented his plans to the Société des Ingénieurs Civils; after discussing the technical problems and emphasising the practical uses of the tower, he finished his talk by saying the tower would symbolise.",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://i.pinimg.com/564x/41/b8/a3/41b8a363af86a2ae5446841e46ad883a.jpg'),
                            ),
                          ),
                          height: 130,
                          width: 100,
                          margin: const EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          "After some debate about the exact location of the tower, a contract was signed on 8 January 1887. Eiffel signed it acting in his own capacity rather than as the representative of his company, the contract granting him 1.5 million francs toward the construction costs: less than a quarter of the estimated 6.5 million francs. Eiffel was to receive all income from the commercial exploitation of the tower during the exhibition and for the next 20 years. He later established a separate company to manage the tower, putting up half the necessary capital himself.",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        controller: _controller,
                        keyboardType: TextInputType.number,
                        obscureText: false,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Үнэлгээ',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Үнэлгээ өгнө үү 0-5 оноо",
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: SizedBox(
                        width: 500,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor:
                                const Color.fromARGB(255, 0, 57, 154),
                          ),
                          onPressed: () {
                            setState(() {
                              starz = int.parse(_controller.text);
                            });
                          },
                          child: const Text('Хадгалах'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
