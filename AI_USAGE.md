# AI_USAGE.md

# Dokumentasi Penggunaan AI - Modul 02

## 1. Alat AI yang Digunakan

- **AI:** Claude
- **Model:** Claude
- **Peran:** Tutor, pemberi arahan implementasi, debugger/reviewer kode
- **Link percakapan AI:** https://claude.ai/share/419bf47f-cac0-48c5-a50b-0df36ccc9b45

Claude digunakan sebagai bantuan dalam memahami instruksi Modul 02, menyusun struktur kode Flutter, memberikan contoh implementasi, serta membantu melakukan review terhadap kode yang dibuat.

Claude tidak menjalankan Flutter SDK pada perangkat dan tidak melakukan pengujian langsung terhadap aplikasi. Pengujian seperti `flutter analyze`, `flutter test`, dan `flutter run` dilakukan secara langsung pada komputer.

## 2. Tujuan Penggunaan AI

AI digunakan untuk membantu:

1. Memahami tahapan pengerjaan Modul 02 tentang Declarative UI dan Responsive Layout.
2. Menentukan struktur file dan komponen yang diperlukan.
3. Membantu membuat model data `RoomSession`.
4. Membantu membuat tampilan dashboard RuangKita.
5. Membantu menerapkan responsive layout menggunakan `LayoutBuilder`.
6. Membantu menerapkan filter menggunakan `ChoiceChip` dan `setState`.
7. Membantu menerapkan interaksi `showModalBottomSheet`.
8. Membantu menerapkan Light Mode dan Dark Mode.
9. Membantu melakukan review terhadap kemungkinan masalah layout dan overflow.
10. Membantu memahami alasan penggunaan `Expanded`, `Flexible`, `Wrap`, `Stack`, dan `Positioned`.

## 3. Bagian Kode yang Dibantu AI

Bagian kode yang mendapat bantuan dari Claude meliputi:

### a. Model Data

File:

`lib/models/room_session.dart`

Claude memberikan rancangan model:

- `enum RoomStatus`
- class `RoomSession`
- data dummy `roomSessions`
- empat status:
  - Berlangsung
  - Akan Datang
  - Selesai
  - Tersedia

Data kemudian disesuaikan dengan domain **Ruang Praktikum** dan identitas tugas `M02-2042`.

### b. Halaman Utama

File:

`lib/modul02/studi_kasus/ruang_praktikum.dart`

Claude membantu menyusun:

- `StatefulWidget`
- daftar data ruangan
- filter status
- `ChoiceChip`
- `setState`
- `LayoutBuilder`
- responsive layout
- `GridView`
- `Stack` dan `Positioned`
- `Expanded`
- `maxLines` dan `TextOverflow.ellipsis`
- `showModalBottomSheet`

### c. Konfigurasi Tema

File:

`lib/main.dart`

Claude memberikan arahan mengenai:

- `ThemeData`
- Material 3
- `ColorScheme.fromSeed`
- Light Theme
- Dark Theme
- `ThemeMode`
- penggunaan `setState` untuk pergantian tema

### d. Widget Test

File:

`test/widget_test.dart`

Claude membantu memberikan contoh pengujian dasar untuk memastikan aplikasi dapat memuat identitas:

`RuangKita`

dan:

`M02-2042 • Ruang Praktikum`

## 4. Bentuk Bantuan yang Diberikan AI

Dalam percakapan, Claude memberikan bantuan dalam beberapa tahap.

### Tahap 1 - Memahami Struktur Modul

Claude menjelaskan tahapan pengerjaan Modul 02 dan struktur file yang diperlukan, yaitu:

```text
lib/
├── main.dart
├── models/
│   └── room_session.dart
└── modul02/
    └── studi_kasus/
        └── ruang_praktikum.dart