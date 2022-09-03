import 'package:flutter/material.dart';
import 'package:tugas_akhir/constants.dart';
import 'package:tugas_akhir/detail_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tugas_akhir/model/dataclass.dart';
import 'package:tugas_akhir/iconfav.dart';

class TabletScafold extends StatelessWidget {
  const TabletScafold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Padding(
        padding: const EdgeInsets.symmetric(),
        child: Column(
          children: [
            // slide image
            CarouselSlider.builder(
                options: CarouselOptions(height: 300, autoPlay: true),
                itemCount: dataKeretaList.length,
                itemBuilder: (context, index, realIdx) {
                  final dataKereta train = dataKeretaList[index];
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(),
                              child: Image.asset(
                                train.imageAsset,
                                fit: BoxFit.cover,
                                width: width,
                                height: height,
                              ),
                            ),
                            Positioned(
                                bottom: 50,
                                left: 20,
                                child: RichText(
                                  text: TextSpan(
                                    text: train.namakereta,
                                    style: const TextStyle(
                                        shadows: <Shadow>[
                                          Shadow(
                                              color: Colors.black,
                                              offset: Offset(2, 2))
                                        ],
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28),
                                  ),
                                )),
                            Positioned(
                                bottom: 40,
                                left: 30,
                                child: RichText(
                                  text: TextSpan(
                                    text: train.fasilitas,
                                    style: const TextStyle(
                                        shadows: <Shadow>[
                                          Shadow(
                                              color: Colors.black,
                                              offset: Offset(1, 2))
                                        ],
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 10),
                                  ),
                                )),
                          ],
                        ),
                      );
                    },
                  );
                }),

            Padding(
              padding: const EdgeInsets.only(left: 8, top: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: const <Widget>[
                    Text(
                      "Pilihan Layanan",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            // list of previous days
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    final dataKereta train = dataKeretaList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailScreen(train: train);
                        }));
                      },
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: SizedBox(
                                  child: Image.asset(train.imageAsset,
                                      fit: BoxFit.fill)),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 5, top: 8, right: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      train.namakereta,
                                      style: const TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: ''),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        train.fasilitas,
                                        style: const TextStyle(
                                            fontSize: 12,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: const [FavoriteButton()],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: dataKeretaList.length,
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
