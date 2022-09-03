import 'package:flutter/material.dart';
import 'package:tugas_akhir/constants.dart';
import 'package:tugas_akhir/detail_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tugas_akhir/iconfav.dart';
import 'package:tugas_akhir/model/dataclass.dart';

class MobileScafold extends StatelessWidget {
  const MobileScafold({Key? key}) : super(key: key);

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
            // first 4 boxes in grid

            CarouselSlider.builder(
                options: CarouselOptions(
                  height: 250,
                  autoPlay: true,
                ),
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
              padding: const EdgeInsets.only(
                bottom: 5,
                top: 8,
                left: 8,
              ),
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
            // tampilan untuk List

            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(255, 240, 240, 240)),
                child: ListView.builder(
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
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                  height: 140,
                                  child: Image.asset(
                                    train.imageAsset,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      train.namakereta,
                                      style: const TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      train.fasilitas,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontStyle: FontStyle.italic),
                                    ),

                                    //Icon Chat for Resesrvasi
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
