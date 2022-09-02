//Data Class Flutter
class dataKereta {
  String namakereta;
  String fasilitas;
  String deskripsi;
  String layanan;
  String hiburan;
  String jmlpenumpang;
  String imageAsset;
  List<String> imageUrls;

  dataKereta({
    required this.namakereta,
    required this.fasilitas,
    required this.deskripsi,
    required this.layanan,
    required this.hiburan,
    required this.jmlpenumpang,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var dataKeretaList = [
  dataKereta(
    namakereta: 'Kereta Wisata Imperial',
    fasilitas:
        'Fasiltas : Karaoke System, Mini Bar (termasuk makanan & minuman), jmlpenumpang (20 kg) dan Toilet.',
    deskripsi:
        'Kereta wisata Imperial, interior kereta terbaru ini didesain khusus untuk memberikan pengalaman perjalanan jarak jauh yang tak terlupakan bagi para penumpang, lengkap dengan kenyamanan tempat duduknya.Seri kereta baru yang diberi nama Imperial ini, memiliki tempat duduk yang dapat direbahkan hingga 135 derajat (reclining seat), dilengkapi dengan head rest fleksibel yang dapat disesuaikan untuk kenyamanan posisi istirahat Anda.Setiap kursi sudah dilengkapi meja portable. Tersedia juga power socket di sebelah kursi sehingga selama perjalanan Anda tetap dapat menyelesaikan pekerjaan dengan laptop atau gadget lainnya. Untuk menambah kenyamanan Anda dalam membaca, kami telah menyediakan lampu baca pada atap kursi.Fasiltas lain: Karaoke System, Mini Bar (termasuk makanan & minuman), jmlpenumpang (20 kg) dan Toilet.',
    layanan: 'Mini Bar(Coffe and Tea)',
    hiburan: 'Audio & Video',
    jmlpenumpang: '20 Orang',
    imageAsset: 'images/kereta_imperial.jpg',
    imageUrls: [
      'https://pbs.twimg.com/media/BtSt7hiCEAAWny5?format=jpg&name=small',
      'https://pbs.twimg.com/media/EO9031LVAAAtifG?format=jpg&name=small',
      'https://scontent.fbdo2-1.fna.fbcdn.net/v/t1.18169-9/10364039_574178879360524_5838801272033803611_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeEleb6FHG98o7lNuqrvovCw0iK-ahwEBZvSIr5qHAQFm8-8IzqGrvmVwhwAw6Kl2q1JUD2aOi_6OPyc4m2PylgM&_nc_ohc=OodvMXynog0AX-VU9E0&_nc_ht=scontent.fbdo2-1.fna&oh=00_AT9fKaF0-n4NbtrqfjDlXSg9l-4hDvoEb7HOPHhNYXC0CA&oe=6333EFC1'
    ],
  ),
  dataKereta(
    namakereta: 'Kereta Wisata Jawa',
    fasilitas: 'fasilitas :  Audio, Video/TV monitor, Bed Room 2 Person, Snack',
    deskripsi:
        'Kereta wisata Jawa, dengan desain interior dan segala pernak – perniknya menonjolkan seni dan keindahan dari budaya Jawa, membuat ketenangan seolah Anda berada di rumah. Kereta ini memiliki kapasitas tempat duduk ekslusif untuk 20 orang. Kamar tidur untuk 2 orang yang dilengkapi kaca rias, lampu tidur dan wastafel.Tersedia mini bar yang bersebelahan dengan ruang serba guna yang mana dapat digunakan sebagai tempat meeting atau menjadi meja makan keluarga. Ruangan menarik lain ada pada ruang utama yang ditata mewah dilengkapi Audio, Video/TV monitor, keseluruhan ruang kereta dilengkapi pendingin ruangan (AC), dan tak ketinggalan toilet yang bersih.',
    layanan: '1X Service eat',
    hiburan: 'AVOD',
    jmlpenumpang: '20 Orang',
    imageAsset: 'images/kereta_jawa.jpg',
    imageUrls: [
      'https://pbs.twimg.com/media/DaUQr6TVQAAL7Da?format=jpg&name=small',
      'https://pbs.twimg.com/media/DUMfZdEVwAEmrHI?format=jpg&name=medium',
      'https://pbs.twimg.com/media/DUMfbIlUQAE8fss?format=jpg&name=900x900',
    ],
  ),
  dataKereta(
    namakereta: 'Kereta Wisata Priority',
    fasilitas:
        'fasilitas :  Karaoke System, Mini Bar (termasuk makanan & minuman), Bagasi (20 kg),dan Toilet.',
    deskripsi:
        'Kereta wisata Priority, kereta seri ini dilengkapi dengan LCD TV layar sentuh pada tiap kursi, sehingga selama perjalanan, Anda dapat menikmati ragam pilihan hiburan Audio dan Video. Selain kursi yang sudah dilengkapi meja portable, tersedia juga power socket di sebelah kursi sehingga selama perjalanan Anda tetap dapat menyelesaikan pekerjaan dengan laptop atau gadget lainnya. Anda dapat bersantai dengan kenyamanan kursi ergonomis dengan ruang kaki yang lapang.',
    layanan: 'Eat & Drink',
    hiburan: 'Karaoke',
    jmlpenumpang: '20 Orang',
    imageAsset: 'images/kereta_priority.jpeg',
    imageUrls: [
      'https://pbs.twimg.com/media/DUM0FnQV4AENtAq?format=jpg&name=360x360',
      'https://pbs.twimg.com/media/DUM0DSfU0AImqS_?format=jpg&name=360x360',
      'https://pbs.twimg.com/media/DUM0GbeU8AAdNfJ?format=jpg&name=360x360'
    ],
  ),
  dataKereta(
    namakereta: 'Kereta Wisata Sumatera',
    fasilitas: 'fasilitas :  Audio, Video/TV monitor, Bed Room 2 Person, Snack',
    deskripsi:
        'Kereta wisata Sumatera, kereta ini memiliki kapasitas tempat duduk ekslusif untuk 22 orang. Meski bercorak sama dengan kereta wisata Jawa, namun kereta wisata Sumatera ini tidak dilengkapi kamar tidur, diganti dengan ruang privat yang dilengkapi fasilitas Audio-video untuk berkaraoke atau menonton film.',
    layanan: 'MiniBar',
    hiburan: 'LCD + Karaoke',
    jmlpenumpang: '22',
    imageAsset: 'images/kereta_sumatra.JPG',
    imageUrls: [
      'https://pbs.twimg.com/media/DUMnJ-iVwAAe4FD?format=jpg&name=medium',
      'https://pbs.twimg.com/media/DUMnLMQUQAEpIPf?format=jpg&name=medium',
      'https://pbs.twimg.com/media/DUMnNR1UMAAy4LY?format=jpg&name=medium'
    ],
  ),
  dataKereta(
    namakereta: 'Kereta Wisata Toraja',
    fasilitas: 'fasilitas : Mini Bar, kamar mandi (toilet), Audio/Video',
    deskripsi:
        'Kereta Wisata Toraja, interior kereta ini kental dengan nuansa budaya Toraja. Didesain secara cantik dan apik dengan bubuhan ukiran serta lukisan yang bernuansakan budaya Toraja.',
    layanan: 'Mini Bar',
    hiburan: 'Audio/Video',
    jmlpenumpang: '22',
    imageAsset: 'images/kereta_toraja.jpg',
    imageUrls: [
      'https://pbs.twimg.com/media/DGN0WIPUwAAUWXy?format=jpg&name=small',
      'https://pbs.twimg.com/media/Bj0LyQiCYAEc8KU?format=jpg&name=small',
      'https://pbs.twimg.com/media/EDCXXWOXUAANt4y?format=jpg&name=small'
    ],
  ),
  dataKereta(
    namakereta: 'Kereta Wisata Bali',
    fasilitas: 'fasilitas :  Audio, Video/TV monitor, Snack',
    deskripsi:
        'Kereta wisata Bali, interior kereta ini kental dengan nuansa budaya Bali. Didesain secara cantik dan apik dengan bubuhan ukiran serta lukisan yang bernuansakan Pulau Dewata itu. Kereta wisata bali bernomor seri S.67801 memiliki 20 tempat duduk ekslusif dalam 2 ruangan, 16 tempat duduk terletak di Meeting Room dan 6 tempat duduk di ruangan khusus (kabin). Fasilitas lainnya seperti Mini Bar, kamar mandi (toilet), Audio/Video dan pendingin ruangan (AC) tersedia di dalam kereta ini.',
    layanan: 'Metting Room',
    hiburan: 'AVOD',
    jmlpenumpang: '16 Orang',
    imageAsset: 'images/kereta_bali.jpg',
    imageUrls: [
      'https://pbs.twimg.com/media/DaUQyEdVMAA0akT?format=jpg&name=small',
      'https://pbs.twimg.com/media/DUMX-7DVwAInkRV?format=jpg&name=medium',
      'https://pbs.twimg.com/media/DUMYAD4U8AACGkE?format=jpg&name=medium'
    ],
  ),
  dataKereta(
    //belum
    namakereta: 'Kereta Wisata Nusantara',
    fasilitas:
        'fasilitas :  Bed Room, Audio, Video/TV monitor, Snack, Balkon VIP',
    deskripsi:
        'Kereta wisata Nusantara, desain interior dan segala pernak – perniknya menggambarkan seni dan keindahan dari berbagai pelosok pulau di nusantara, seolah saat kita berada di dalam kereta ini semua nuansa budaya nusantara dapat secara bersamaan kita nikmati. Kereta yang bernomor seri 67501 ini memiliki kapasitas tempat duduk eksklusif untuk 19 orang. Kamar tidur untuk 2 orang yang dilengkapi kaca rias, lampu tidur dan wastafel.',
    layanan: 'Eat & Drink',
    hiburan: 'Karaoke/AVOD',
    jmlpenumpang: '19',
    imageAsset: 'images/kereta_nusantara.jpg',
    imageUrls: [
      'https://pbs.twimg.com/media/EgOHqG3VAAAOdRf?format=jpg&name=small',
      'https://pbs.twimg.com/media/DJqkdonVwAAf_KC?format=jpg&name=small',
      'https://pbs.twimg.com/media/ECE1mwBU8AELfAT?format=jpg&name=small'
    ],
  ),
];
