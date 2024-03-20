# NoteApp Laravue
NoteApp Laravue adalah aplikasi berbasis web yang menggabungkan Laravel dan Vue. Aplikasi ini dirancang untuk memudahkan pengguna dalam mencatat dan mengelola informasi serta kegiatan sehari-hari.

## Tech Stack
- <b>Backend :</b> Laravel
- <b>Frontend :</b> Vue.js
- <b>Database :</b> MySQL
- <b>Pengujian API :</b> Postman
  
## Fitur Aplikasi
- Membuat catatan baru
- Mengedit catatan
- Menghapus catatan
- Mencetak catatan dalam format PDF

## Endpoint API

| Metode | Endpoint                                | Keterangan                                      |
|--------|----------------------------------------|------------------------------------------------|
| GET    | http://127.0.0.1:8000/api/notes        | Menampilkan semua catatan                      |
| POST   | http://127.0.0.1:8000/api/notes        | Menyimpan catatan                              |
| GET    | http://127.0.0.1:8000/api/notes/{id}   | Menampilkan catatan berdasarkan id             |
| GET    | http://127.0.0.1:8000/api/notes/{id}/edit | Mengedit catatan berdasarkan id              |
| PUT    | http://127.0.0.1:8000/api/notes/{id}/edit | Menyimpan perubahan pada catatan yang telah diedit berdasarkan id |
| DELETE | http://127.0.0.1:8000/api/notes/{id}/delete | Menghapus catatan berdasarkan id              |
| GET    | http://127.0.0.1:8000/api/notes/{id}/print | Mencetak catatan berdasarkan id               |

## Screenshot Aplikasi
Berikut adalah screenshot dari aplikasi NoteApp Laravue

### Melihat Semua Catatan
![Melihat semua catatan](https://github.com/ridhoabdi/noteapp-laravue/blob/main/dokumentasi/screenshot/NoteApp%20Laravue%20-%20View.jpg)

### Melihat Detail Catatan
![Melihat Detail Catatan](https://github.com/ridhoabdi/noteapp-laravue/blob/main/dokumentasi/screenshot/NoteApp%20Laravue%20-%20Detail.jpg)

### Hasil Export Catatan dalam Format PDF
![Hasil Export Catatan dalam Format PDF](https://github.com/ridhoabdi/noteapp-laravue/blob/main/dokumentasi/screenshot/NoteApp%20Laravue%20-%20Print.jpg)

