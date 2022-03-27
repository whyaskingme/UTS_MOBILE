class resep {
  String name, htm, tutorial, image;

  resep(
      {required this.name,
        required this.htm, //Buat "like" yang pernah baca resep
        required this.tutorial,
        required this.image});
}

List<resep> dataResep = [
  resep(
      name: 'Nasi Goreng Mie',
      htm: '45K',
      tutorial:
          '1.Siapkan nasi dan mie(sudah direbus) secukupnya. Sebagai tambahan topping tambahkan sayur, telur ayam, daun bawang dan lainnya. 2.Untuk bumbu dapat disiapkan 2 butir bawang putih(sudah dihaluskan), 2 butir bawang merah, dan cabai rawit, garam, minyak, ayam goreng/panggang(sudah di suwir), air secukupnya dan kecap manis. 3. Tumis mie dan bumbu-bumbu hingga mendidih kemudian setelah mie tercampur rata dengan bumbu masukan nasi dan diaduk hingga tercampur rata. 4. Untuk cita rasa dapat disesuaikan sesuai keinginan. NasgorMie siap saji.',
      image: 'assets/images/NasgorMie.jpeg'),
  resep(
      name: 'Gabus Keju',
      htm: '55K',
      tutorial:
      'Bahan-bahan: 200 gram tepung kanji, 1 sdt garam, 1 sdm butter, minyak goreng yang banyak, 100 gram keju, 2 butir telur. Cara membuat: 1. Blender telur, keju parut, garam, dan mentega 2. Masukkan tepung kanji, uleni sampai kalis 3. Pilin adonan, masukkan ke wajan yang diberi minyak dingin 4. Nyalakan api lalu goreng sampai kuning. Setelah itu angkat.',
      image: 'assets/images/GabusKeju.jpg'),
  resep(
      name: 'Gurame Goreng Crispy',
      htm: '60K',
      tutorial:
      'Bahan:2 ekor gurame fillet, 2 sdt air jeruk nipis, 1/2 sdt garam, 1/4 sdt merica bubuk, 700 ml minyak goreng, 100 gr tepung terigu, 25 gr tepung sagu, 1/2 sdt garam, 1/2 sdt kaldu ayam bubuk, 250 ml air es, 75 gr tepung terigu, 15 gr tepung sagu, 1/2 sdm tepung beras, 1/4 sdt baking powder, 1/4 sdt garam. Cara Membuat: Lumuri ikan yang sudah dipotong dengan air jeruk nipis, garam, dan merica bubuk. Diamkan 30 menit dalam lemari es. Aduk rata tepung terigu, tepung sagu, garam, kaldu ayam, dan air es. Celup ikan ke dalam pencelup. Gulingkan di atas bahan pelapis sambil dicubit-cubit. Goreng dalam minyak yang sudah dipanaskan sampai matang dan kering. Sajikan bersama saus sambal.',
      image: 'assets/images/IkanGoreng.jpg'),
  resep(
      name: 'Es Krim Pop Ice',
      htm: '48K',
      tutorial:
      'Bahan-bahan: 2 saset pop ice, 2 saset susu kental manis, 5 sdm gula pasir, 2 sdm tepung maizena, 1 sdm SP pengemulsi, 400 ml air. Cara membuat: Cairkan SP terlebih dahulu. Cairkan tepung maizena dengan sedikit air. 2.Siapkan panci, masukan semua bahan kecuali SP pengemulsi, sambil diaduk hingga mendidih dan tidak menggumpal -+ 15 menit. 3.Tuang adonan ke wadah, diamkan hingga agak dingin. Kemudian masukan ke freezer buat agak beku sekitar 1-2 jam. 4.Ambil adonan es krim dari freezer. Masukan SP pengemulsi, lalu mixer hingga merata. 5.Tuangkan adonan es krim ke cetakan atau wadah yang diinginkan. Es krim siap untuk disajikan.',
      image: 'assets/images/IceCream.jpg'),
];
