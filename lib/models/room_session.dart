enum RoomStatus {
  ongoing('Berlangsung'),
  upcoming('Akan Datang'),
  finished('Selesai'),
  available('Tersedia');

  const RoomStatus(this.label);

  final String label;
}

class RoomSession {
  const RoomSession({
    required this.roomName,
    required this.activityName,
    required this.timeRange,
    required this.status,
    required this.description,
  });

  final String roomName;
  final String activityName;
  final String timeRange;
  final RoomStatus status;
  final String description;
}

const List<RoomSession> roomSessions = [
  RoomSession(
    roomName: 'Lab Pemrograman 1',
    activityName: 'Praktikum Pemrograman Dasar',
    timeRange: '07.30 - 09.30',
    status: RoomStatus.finished,
    description:
        'Latihan struktur kontrol, fungsi, dan list dasar untuk mahasiswa semester 1.',
  ),
  RoomSession(
    roomName: 'Lab Elektronika',
    activityName: 'Praktikum Rangkaian Listrik',
    timeRange: '08.00 - 10.00',
    status: RoomStatus.finished,
    description:
        'Pengukuran tegangan dan arus memakai multimeter pada rangkaian seri dan paralel.',
  ),
  RoomSession(
    roomName: 'Lab Pemrograman 1',
    activityName: 'Praktikum Pemrograman Perangkat Bergerak Kelas 2C',
    timeRange: '10.00 - 12.00',
    status: RoomStatus.ongoing,
    description:
        'Sesi praktikum membangun antarmuka Flutter dengan Row, Column, Stack, dan LayoutBuilder. Mahasiswa membawa laptop dan mengisi lembar kerja modul sebelum pertemuan berakhir.',
  ),
  RoomSession(
    roomName: 'Lab Desain',
    activityName: 'Praktikum Desain UI/UX',
    timeRange: '10.30 - 12.30',
    status: RoomStatus.ongoing,
    description:
        'Membuat wireframe dan prototipe layar aplikasi seluler dengan fokus pada hierarki visual.',
  ),
  RoomSession(
    roomName: 'Lab Elektronika',
    activityName: 'Praktikum Mikrokontroler',
    timeRange: '13.00 - 15.00',
    status: RoomStatus.upcoming,
    description:
        'Membaca sensor suhu dan menampilkan hasilnya pada layar serial dari papan mikrokontroler.',
  ),
  RoomSession(
    roomName: 'Lab Pemrograman 2',
    activityName: 'Praktikum Basis Data Lanjut',
    timeRange: '13.00 - 15.00',
    status: RoomStatus.upcoming,
    description:
        'Latihan query JOIN dan subquery pada basis data akademik dengan penekanan pada optimasi.',
  ),
  RoomSession(
    roomName: 'Lab Pemrograman 2',
    activityName: 'Slot Praktikum Mandiri',
    timeRange: '15.30 - 17.00',
    status: RoomStatus.available,
    description:
        'Ruang kosong pada jam ini dan dapat dipakai untuk praktikum mandiri.',
  ),
  RoomSession(
    roomName: 'Lab Desain',
    activityName: 'Slot Praktikum Mandiri',
    timeRange: '13.00 - 15.00',
    status: RoomStatus.available,
    description:
        'Ruang kosong pada jam ini dan dapat dipakai untuk praktikum mandiri.',
  ),
];