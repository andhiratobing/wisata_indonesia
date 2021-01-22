import 'package:wisata_indonesia/models/Activity.dart';

class TempatWisata {
  String gambarUrl;
  String provinsi;
  String kota;
  String deskripsi;
  List<Activity> activities;

  TempatWisata({
    this.gambarUrl,
    this.provinsi,
    this.kota,
    this.deskripsi,
    this.activities,
  });
}

List<Activity> bali = [
  Activity(
    gambarUrl: 'assets/images/safari_parine_park.jpg',
    nama: 'Safari Marine Park',
    provinsi: 'Bali',
    kota: 'Kab.Gianyar',
    startTimes: ['05.00 - 21.00', 'WIB'],
    rating: 5,
    harga: '30.000',
  ),
  Activity(
    gambarUrl: 'assets/images/garuda_wisnu_kencanajpg',
    nama: 'Garuda Wisnu Kencana',
    provinsi: 'Bali',
    kota: 'Kab.Badung',
    startTimes: ['07.00 - 17.00', 'WIB'],
    rating: 5,
    harga: '25.000',
  ),
  Activity(
    gambarUrl: 'assets/images/pantai_kuta.jpg',
    nama: 'Pantai Kuta',
    provinsi: 'Bali',
    kota: 'Kab.Badung',
    startTimes: ['04.00 - 17.00', 'WIB'],
    rating: 5,
    harga: '20.000',
  ),
  Activity(
    gambarUrl: 'assets/images/pura_bekasih.jpg',
    nama: 'Pura Bekasih',
    provinsi: 'Bali',
    kota: 'Kab.Karangasem',
    startTimes: ['07.00 - 17.00', 'WIB'],
    rating: 5,
    harga: '10.000',
  ),
  Activity(
    gambarUrl: 'assets/images/tanah_lot.jpg',
    nama: 'Tanah Lot',
    provinsi: 'Jawa Timur',
    kota: 'Kab.Tabanan ',
    startTimes: ['06.00 - 17.00', 'WIB'],
    rating: 5,
    harga: '30.000',
  ),
  Activity(
    gambarUrl: 'assets/images/pure_uluwatu.jpg',
    nama: 'Pure Uluwatu',
    provinsi: 'Bali',
    kota: 'Kab.Badung',
    startTimes: ['06.00 - 17.00', 'WIB'],
    rating: 5,
    harga: '15.000',
  ),
];



List<Activity> jawa_timur = [
  Activity(
    gambarUrl: 'assets/images/gunung_bromo.jpg',
    nama: 'Gunung Bromo',
    provinsi: 'Jawa Timur',
    kota: 'Kab.Malang',
    startTimes: ['05.00 - 21.00', 'WIB'],
    rating: 5,
    harga: '25.000',
  ),
  Activity(
    gambarUrl: 'assets/images/kawah_ijen.jpg',
    nama: 'Kawah Ijen',
    provinsi: 'Jawa Timur',
    kota: 'Kab.Banyuwangi',
    startTimes: ['07.00 - 17.00', 'WIB'],
    rating: 5,
    harga: '30.000',
  ),
  Activity(
    gambarUrl: 'assets/images/taman_nasional_baluran.jpg',
    nama: 'Taman Nasional Baluran',
    provinsi: 'Jawa Timur',
    kota: 'Kab.Situbondo',
    startTimes: ['06.00 - 17.00', 'WIB'],
    rating: 5,
    harga: '20.000',
  ),
  Activity(
    gambarUrl: 'assets/images/goa_gong.jpg',
    nama: 'Goa Gong',
    provinsi: 'Jawa Timur',
    kota: 'Kab.Pacitan',
    startTimes: ['07.00 - 17.00', 'WIB'],
    rating: 5,
    harga: '10.000',
  ),
  Activity(
    gambarUrl: 'assets/images/gili_ketapang.jpg',
    nama: 'Gili Ketapang',
    provinsi: 'Jawa Timur',
    kota: 'Kab.Probolinggo',
    startTimes: ['06.00 - 17.00', 'WIB'],
    rating: 4,
    harga: '20.000',
  ),
  Activity(
    gambarUrl: 'assets/images/bukit_jadih.jpg',
    nama: 'Bukit Jadih',
    provinsi: 'Jawa Timur',
    kota: 'Kab.Bangkalan',
    startTimes: ['06.00 - 17.00', 'WIB'],
    rating: 5,
    harga: '15.000',
  ),
];

List<Activity> jawa_tengah = [
  Activity(
    gambarUrl: 'assets/images/candi_borobudur.jpg',
    nama: 'Candi Borobudur',
    provinsi: 'Jawa Tengah',
    kota: 'Kab.Magelang',
    startTimes: ['06.00 - 17.00', 'WIB'],
    rating: 5,
    harga: '25.000',
  ),
  Activity(
    gambarUrl: 'assets/images/bukit_sikunir.jpg',
    nama: 'Dieng',
    provinsi: 'Jawa Tengah',
    kota: 'Kab.Wonosobo',
    startTimes: ['06.00-17.00', 'WIB'],
    rating: 5,
    harga: '10.000',
  )
];



List<TempatWisata> ListWisata = [
  TempatWisata(
    gambarUrl: 'assets/images/tanah_lot.jpg',
    provinsi: 'Bali',
    kota: 'Kab.Tabanan ',
    deskripsi: 'Pesona Wisata Bali Memang Begitu Indah',
    activities: bali,
  ),

  TempatWisata(
    gambarUrl: 'assets/images/gunung_bromo.jpg',
    provinsi: 'Jawa  Timur',
    kota: 'Kab.Malang',
    deskripsi: 'Pesona Wisata Jawa Timur Memang Begitu Indah',
    activities: jawa_timur,
  ),

  TempatWisata(
    gambarUrl: 'assets/images/candi_borobudur.jpg',
    provinsi: 'Jawa Tengah',
    kota: 'Kab.Magelang',
    deskripsi: 'Pesona Wisata Jawa Tengah Memang Begitu Indah',
    activities: jawa_tengah,
  ),
];
