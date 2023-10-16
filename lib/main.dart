import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  // untuk menentukan apakah favourite icon filled atau tidak
  bool clicked = false;

  // function untuk toggle favourite icon filled atau tidak)
  void clickHeart() {
    setState(() {
      clicked = !clicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 30, 96),
          title: const Text("Mission 1"),
        ),
        body: Stack(
          children: [
            // layer pertama : background gradient
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 1),
                  colors: <Color>[
                    Color.fromARGB(255, 6, 0, 92),
                    Color.fromARGB(255, 8, 5, 44),
                    Color.fromARGB(255, 0, 30, 96),
                    Color.fromARGB(255, 8, 5, 44),
                    Color.fromARGB(255, 10, 14, 240),
                    Color.fromARGB(255, 8, 5, 44),
                    
                  ], // Gradient from https://learnui.design/tools/gradient-generator.html
                  tileMode: TileMode.mirror,
                ),
              ),
            ),
            // layer kedua : images and text
            Column(
              children: [
                Flexible(
                    flex: 2,
                    child: Container(
                        width: double.infinity,
                        child: Image.asset(
                          "images/banner.jpg",
                          fit: BoxFit.cover,
                        ))),
                // gambar row (4 gambar)
                Flexible(
                    flex: 1,
                    child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Flexible(
                                flex: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                      child:
                                          Image.asset("images/satoru_gojo.png")),
                                )),
                            Flexible(
                                flex: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                      child: Image.asset("images/itadori.jpg")),
                                )),
                            Flexible(
                                flex: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                      child: Image.asset("images/nobara.png")),
                                )),
                            Flexible(
                                flex: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                      child: Image.asset("images/megumi.jpg")),
                                ))
                          ],
                        ))),
                // Keterangan text 
                Flexible(
                  flex: 4,
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      child: Column(children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Jujutsu Kaisen",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              Text(
    """Jujutsu Kaisen (呪術廻戦, "Sorcery Fight") is a Japanese manga series written and illustrated by Gege Akutami. It has been serialized in Shueisha's shōnen manga magazine Weekly Shōnen Jump since March 2018, with its chapters collected and published in 24 tankōbon volumes as of October 2023. The story follows high school student Yuji Itadori as he joins a secret organization of Jujutsu Sorcerers to eliminate a powerful Curse named Ryomen Sukuna, of whom Yuji becomes the host. Jujutsu Kaisen is a sequel to Akutami's Tokyo Metropolitan Curse Technical School, serialized in Shueisha's Jump Giga from April to July 2017, later collected in a tankōbon volume, retroactively titled as Jujutsu Kaisen 0, in December 2018.\n
Jujutsu Kaisen is licensed for English-language release in North America by Viz Media, which has published the manga in print since December 2019. Shueisha publishes the series in English on the Manga Plus online platform. Two novels, written by Ballad Kitaguni, were published in May 2019 and January 2020, respectively. A 24-episode anime television series adaptation produced by MAPPA, aired on MBS from October 2020 to March 2021; a second season premiered in July 2023. The anime is licensed by Crunchyroll for streaming outside of Asia, which premiered an English dub in November 2020. The anime's original soundtrack was released in April 2021. A video game, subtitled Cursed Clash, is in development by Byking and Bandai Namco Entertainment.\n
By July 2023, the Jujutsu Kaisen manga had over 80 million copies in circulation, including related novels, digital versions and Jujutsu Kaisen 0, making it one of the best-selling manga series of all time.\n """),
                              Text(
          """In Jujutsu Kaisen, all living beings emanate energy called Cursed Energy (呪力, Juryoku), which arises from negative emotions that naturally flow throughout the body. Ordinary people cannot control this flow in their bodies. As a result, they continually lose Cursed Energy, resulting in the birth of Curses (呪い, Noroi), a race of spiritual beings whose primary desire is to bring harm to humanity. These Curses are shown as gruesome monsters, ghosts, and yōkai.\n
Jujutsu Sorcerers (呪術師, Jujutsushi, lit. "Cursed Technique Masters" or "Shamans") are people who control the flow of Cursed Energy in their bodies, allowing them to use it as they please and also to reduce its release. High-ranking Sorcerers and Curses can refine this energy and use it to perform Cursed Techniques (呪術式, Jujutsushiki), which tend to be unique to the user or their family. An advanced form of Cursed Technique is Domain Expansion (領域展開, Ryōiki Tenkai), which the users build a pocket dimension of variable size. Inside the domain, all of their attacks will always connect and grow in strength. """),
                            ],
                          ),
                        ),
                      ])),
                ),
              ],
            ),
            // layer ke-3 : floating action button
            Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.topRight,
                child: FloatingActionButton(
                  
                  onPressed: clickHeart,
                  backgroundColor: Color.fromARGB(255, 0, 30, 96),
                  child: Icon(
                    Icons.favorite,
                    color: clicked ? Colors.pink : Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
