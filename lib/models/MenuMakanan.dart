class MenuMakanan {
  String gambarUrl;
  String nama;
  String alamat;
  String harga;

  MenuMakanan({
    this.gambarUrl,
    this.nama,
    this.alamat,
    this.harga,
  });
}

final List<MenuMakanan> ListMenu = [
  MenuMakanan(
    gambarUrl: 'assets/images/rawon.jpg',
    nama: 'Rawon Daging Sapi',
    alamat: 'Jl. Panglima Sudirman No.71A',
    harga: '78.000',
  ),
  MenuMakanan(
    gambarUrl: 'assets/images/rendang.jpg',
    nama: 'Rendang',
    alamat: 'Jl K.H. Samanhudi (Amlapura)',
    harga: '69.000',
  ),
  MenuMakanan(
    gambarUrl: 'assets/images/bakso.jpg',
    nama: 'Bakso Pak Tob',
    alamat: 'Jl. Ngawi-Paron',
    harga: '12.000',
  ),
];
