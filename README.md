# PAB1SI5A
**Kisi-Kisi UTS Flutter**
**1. Stateless widget**: widget yang nilai statenya tidak dapat berubah (immutable) maka widget tersebut lebih bersifat statis dan memiliki interaksi yang terbatas. Cocok untuk elemen UI yang statis, seperti teks, ikon, atau gambar yang tidak perlu berubah.
contoh:
![image](https://github.com/user-attachments/assets/dc1ad633-9f0f-42b9-b69d-61e9adddb1f9)

**2.Stateful widget**: widget yang state-nya dapat berubah-ubah nilainya, yg berarti statefulWidget bersifat dinamis dan memmiliki interaksi yang tak terbatas. nCocok untuk elemen UI yang interaktif atau dinamis, seperti tombol yang dapat mengubah teks, slider, form, atau elemen yang datanya berubah selama aplikasi berjalan.
contoh: 
![image](https://github.com/user-attachments/assets/addb030a-6c6b-4583-89e0-67f44fbd3679)

**3. Scaffold** adalah widget yang membentuk struktur dasar sebuah halaman aplikasi Flutter. Di dalamnya, kamu bisa menambahkan elemen-elemen seperti AppBar, Body, dan FloatingActionButton.
contoh: 
![image](https://github.com/user-attachments/assets/5e4ef50b-85f4-4d3a-8079-295cf59d5e53)
![image](https://github.com/user-attachments/assets/bc459926-a43d-4fa8-ad1b-a2691388aabd)
![image](https://github.com/user-attachments/assets/0a9725b4-476f-4786-9f83-682065d44e59)
![image](https://github.com/user-attachments/assets/62ec3708-6c1a-4a25-ae8c-668a8bc19557)
![image](https://github.com/user-attachments/assets/cfa242eb-9955-45cb-9751-0fb780c092bc)
![image](https://github.com/user-attachments/assets/56c9fdc9-ddbf-4c8d-b1c9-5a5117f5d89f)

contoh lain: 
Scaffold(
  appBar: AppBar(
    title: Text("Contoh Scaffold"),
  ),
  body: Center(
    child: Text("Ini adalah Body dari Scaffold"),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
  ),
);

**4. Container** adalah widget serba guna yang bisa digunakan untuk menampilkan elemen UI dengan ukuran, margin, padding, dan warna yang dapat diatur.
**5. Column** adalah widget untuk menata elemen secara vertikal (dari atas ke bawah).
contoh:
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Text("Text pertama"),
    Text("Text kedua"),
    ElevatedButton(
      onPressed: () {},
      child: Text("Tombol dalam Column"),
    ),
  ],
);
Pada contoh di atas:
mainAxisAlignment digunakan untuk menempatkan elemen di tengah secara vertikal.
children berisi daftar widget yang disusun dari atas ke bawah.

**6. Row** adalah widget untuk menata elemen secara horizontal (dari kiri ke kanan).

**7. ElevatedButton** adalah widget untuk membuat tombol dengan efek elevasi (mengangkat dari permukaan).

**8. Image** adalah widget untuk menampilkan gambar. Kamu bisa menggunakan gambar dari aset lokal atau URL.
contoh: dari internet
Image.network('https://album.mdp.ac.id/albums/userpics/10001/Pelatihan-SLIMS_282029.jpg'),
                       
dari lokal:
Image.asset('images/cover_mdp.jpg'),

**9.Navigator** adalah widget yang membantu dalam menavigasi antar halaman atau layar di dalam aplikasi. 
Operasi Navigator Utama
- push: Menambahkan halaman baru ke atas tumpukan dan menampilkannya.
- pop: Menghapus halaman teratas dari tumpukan dan kembali ke halaman sebelumnya.
contoh:
1. tampil ke halaman baru:
Navigator.push(
context,
MaterialPageRoute(builder: (context) => HalamanBaru()),
);

3. Tampil ke halaman sebelumnya:
Navigator.pop(context);
