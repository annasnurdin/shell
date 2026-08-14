# Kadang sewaktu apt update ada peringatan error E: The repository 'https://downloads.cursor.com/aptrepo stable InRelease' is not signed.
# Cek repo
ls /etc/apt/sources.list.d/

# Kalau ada, hapus repo tsb.
sudo rm /etc/apt/sources.list.d/cursor.list
