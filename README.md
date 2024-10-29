# PAB1SI5A
**Kisi-Kisi UTS Flutter**
**1. Stateless widget**: widget yang nilai statenya tidak dapat berubah (immutable) maka widget tersebut lebih bersifat statis dan memiliki interaksi yang terbatas. Cocok untuk elemen UI yang statis, seperti teks, ikon, atau gambar yang tidak perlu berubah.
contoh:
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: Center(
          child: BiggerText(text: "Hello, World!"),
          ),
          ),
    );
  }
}
**2.Stateful widget**: widget yang state-nya dapat berubah-ubah nilainya, yg berarti statefulWidget bersifat dinamis dan memmiliki interaksi yang tak terbatas. nCocok untuk elemen UI yang interaktif atau dinamis, seperti tombol yang dapat mengubah teks, slider, form, atau elemen yang datanya berubah selama aplikasi berjalan.
contoh: 
class BiggerText extends StatefulWidget {
  final String text;
  const BiggerText({super.key, required this.text});

  @override
  _BiggerTextState createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText>{
  double _textSize = 16.0;

  @override

  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
          child: const Text("Perbesar"),
          onPressed: () {
            setState(() {
              _textSize = 32.0;
            });
          },
        )
      ],
    );
  }
}

**3. Scaffold** adalah widget yang membentuk struktur dasar sebuah halaman aplikasi Flutter. Di dalamnya, kamu bisa menambahkan elemen-elemen seperti AppBar, Body, dan FloatingActionButton.
contoh: 
home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Gambar Cover MDP
                Image.asset('images/cover_mdp.jpg'),
                // Judul
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  child: const Text(
                    'Universitas MDP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Staatliches',
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
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
contoh:
Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  child: const Text(
                    'Universitas MDP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Staatliches',
                        fontWeight: FontWeight.w300),
                  ),
                ),
                 
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
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
