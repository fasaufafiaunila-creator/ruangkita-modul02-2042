# DEBUG NOTES — Modul 02

## Bug #1 — File `room_session.dart` Sempat Kosong Setelah Commit Awal

### Waktu Kejadian

Tahap 1, saat proses pembuatan model `RoomSession` dan dummy data.

### Gejala

Setelah proses commit awal, file `lib/models/room_session.dart` pada hasil commit pertama belum berisi implementasi model dan data yang seharusnya digunakan oleh aplikasi.

Akibatnya implementasi model `RoomSession`, enum `RoomStatus`, dan data `roomSessions` belum tersimpan pada commit tersebut.

### Dugaan Akar Masalah

File sudah dibuat dan perubahan dilakukan pada working directory, tetapi isi file belum masuk ke commit awal seperti yang diharapkan.

### Perbaikan yang Dilakukan

Isi `lib/models/room_session.dart` diperiksa kembali dan dilengkapi dengan:

- enum `RoomStatus`
- class `RoomSession`
- data lokal `roomSessions`

Setelah itu perubahan diperiksa kembali menggunakan Git dan dibuat commit perbaikan.

### Bukti Before

Bukti kondisi awal dapat ditunjukkan melalui pemeriksaan isi file pada commit awal.

### Bukti After

File `lib/models/room_session.dart` sudah berisi model `RoomSession`, enum status, dan 8 data lokal yang digunakan aplikasi.

### Hasil

Model dan dummy data sudah tersimpan dengan benar dan dapat digunakan oleh halaman `RuangPraktikumPage`.

---

## Bug #2 — Flutter Gagal Menghapus Folder `flutter_assets`

### Waktu Kejadian

Saat proses menjalankan aplikasi Flutter menggunakan Chrome pada tahap responsive layout dan pengujian Stage 4.

### Gejala

Saat menjalankan:

`flutter run -d chrome`

muncul pesan:

`Flutter failed to delete a directory at ... build/flutter_assets`

Flutter tidak dapat mengakses atau menghapus folder `build/flutter_assets`.

### Dugaan Akar Masalah

Masalah terjadi pada akses file atau file lock pada folder project. Project berada pada lokasi OneDrive sehingga terdapat kemungkinan file pada folder `build` sedang digunakan atau dikunci ketika Flutter melakukan proses build ulang.

Masalah ini merupakan masalah lingkungan atau file access, bukan kesalahan sintaks pada kode aplikasi.

### Perbaikan yang Dilakukan

Proses Flutter dihentikan terlebih dahulu menggunakan `Ctrl+C`.

Folder `build` kemudian dibersihkan agar Flutter dapat membuat ulang hasil build.

Setelah folder dapat diakses kembali, aplikasi dijalankan ulang menggunakan:

`flutter run -d chrome`

### Bukti Before

Pesan error yang muncul:

`Flutter failed to delete a directory at ... build/flutter_assets`

### Bukti After

Aplikasi dapat dijalankan kembali pada Chrome dan pengujian responsive serta Light/Dark Mode dapat dilakukan.

### Hasil

Masalah akses folder `flutter_assets` tidak lagi menghalangi proses pengujian aplikasi.

---

## Catatan Pengujian Tahap 5

Setelah penambahan filter, Bottom Sheet, dan Light/Dark Mode, aplikasi diuji kembali pada beberapa kondisi:

| Kondisi Pengujian | Hasil |
|---|---|
| Filter status, 360×800 Light Mode | Berhasil dan tidak ada overflow |
| Filter status, 360×800 Dark Mode | Berhasil dan tidak ada overflow |
| Responsive layout, 720×1024 | Berhasil menggunakan 2 kolom |
| Responsive layout, 1024×800 | Berhasil menggunakan 3 kolom |
| Bottom Sheet | Berhasil menampilkan detail ruang |
| Light Mode → Dark Mode | Berhasil |
| Dark Mode → Light Mode | Berhasil |
| Teks panjang pada card | Tidak menyebabkan overflow |
| `flutter analyze` | No issues found |
| `flutter test` | All tests passed |

Berdasarkan pengujian tersebut, tidak ditemukan bug layout baru pada Tahap 5.

## Kesimpulan

Dua masalah yang dicatat dalam dokumen ini merupakan masalah nyata yang muncul selama proses pengembangan Modul 02.

Masalah pertama berkaitan dengan proses penyimpanan perubahan file pada Git, sedangkan masalah kedua berkaitan dengan akses folder hasil build Flutter.

Setelah dilakukan pemeriksaan, perbaikan, dan pengujian ulang, kedua masalah tersebut tidak lagi menghambat pengembangan dan pengujian aplikasi.