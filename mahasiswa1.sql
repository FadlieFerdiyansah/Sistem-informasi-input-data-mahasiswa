# Host: localhost  (Version 5.5.5-10.4.6-MariaDB)
# Date: 2019-10-17 19:55:56
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "detail_matkul"
#

DROP TABLE IF EXISTS `detail_matkul`;
CREATE TABLE `detail_matkul` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `nim` varchar(255) NOT NULL,
  `jns_nilai` varchar(255) NOT NULL,
  `nm_matkul` varchar(255) DEFAULT NULL,
  `dosen` varchar(40) DEFAULT NULL,
  `nilai` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=latin1;

#
# Data for table "detail_matkul"
#

INSERT INTO `detail_matkul` VALUES (1,'1718112','UTS','Jaringan Komputer','Yudhi Prabowo, S.ST','90','A'),(168,'0093473','TUGAS','PBO','Rizki','78','B'),(169,'080808','UTS','Pemrograman Web','Novyanti Dewi Wulandhari, M.Kom','65','C'),(170,'1718123','TUGAS','Desain Web','Misbah Zainil Annam, S.Kom','50','D'),(171,'1718811','UN','Basis Data','Ganjar Sukma S.Kom','30','E'),(173,'0093473','UN','Mobile Programing','Rizki','67','C');

#
# Structure for table "dosen"
#

DROP TABLE IF EXISTS `dosen`;
CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) NOT NULL,
  `nama_dosen` varchar(40) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `tempat_lahir` varchar(80) DEFAULT NULL,
  `tanggal_lahir` varchar(30) DEFAULT NULL,
  `dosen_matkul` varchar(20) DEFAULT NULL,
  `alamat` varchar(70) DEFAULT NULL,
  `telepon` varchar(13) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_dosen`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

#
# Data for table "dosen"
#

INSERT INTO `dosen` VALUES (1,'226554','Rizki','Laki-Laki','Jakarta Barat','2019-10-23','PBO','Singapure','08999141307','rizki@gmail.com','dosen','rizki','ce28eed1511f631af6b2a7bb0a85d636'),(2,'343534','Lily Alan Walker','Perempuan','Jakarta Barat','2019-08-21','Mobile Programming','jakarta barat , kembangan ,jalan lapangan merah rt 12 rw 03 ,','08999141307','udin@gmail.com','dosen','ss','3691308f2a4c2f6983f2880d32e29c84'),(3,'437567','Udin S,Kom','Perempuan','Jakarta Barat','2019-10-09','Pemrograman OOP','India','08999141307','udin@gmail.com','dosen','udin','ce28eed1511f631af6b2a7bb0a85d636'),(4,'445476','Racmat Budi Sulistiyo, S.Kom','Laki-Laki','Jakarta Barat','2019-10-30','Java Web','Jawa Tengah','08999141307','budi@gmail.com','dosen','budi','ce28eed1511f631af6b2a7bb0a85d636'),(5,'456464','Novyanti Dewi Wulandhari, M.Kom','Perempuan','Jakarta Barat','2019-09-25','Pemrograman Web','Bandung','08999141307','novi@gmaii.com','dosen','novi','ce28eed1511f631af6b2a7bb0a85d636'),(6,'675675','Yudhi Prabowo, S.ST','Laki-Laki','Jawa Tengah','2019-10-23','Jaringan Komputer','Pulaw Jawa','08999141307','Yudhi@gmail.com','dosen','yudhi','ce28eed1511f631af6b2a7bb0a85d636'),(7,'736742','Misbah Zainil Annam, S.Kom','Laki-Laki','Jakarta Barat','2019-08-06','Desain Web','Kembangan','08999141307','as@gmail.com','dosen','misbah','ce28eed1511f631af6b2a7bb0a85d636'),(8,'876575','Ganjar Sukma S.Kom','Laki-Laki','Jakarta Barat','2019-08-21','Basis Data','jakarta barat , kembangan ,jalan lapangan merah rt 12 rw 03 ,','08999141307','ganjar@gmail.com','dosen','ganjar','ce28eed1511f631af6b2a7bb0a85d636');

#
# Structure for table "matkul"
#

DROP TABLE IF EXISTS `matkul`;
CREATE TABLE `matkul` (
  `kd_matkul` int(11) NOT NULL AUTO_INCREMENT,
  `nm_matkul` varchar(255) NOT NULL,
  PRIMARY KEY (`kd_matkul`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

#
# Data for table "matkul"
#

INSERT INTO `matkul` VALUES (1,'Algoritma dan Pemrograman'),(2,'Basis Data'),(3,'Mobile Programing'),(4,'Pemrograman Visual / GUI'),(5,'Pemrograman OOP'),(6,'Pemrograman Web'),(7,'Jaringan Komputer'),(8,'Desain Web'),(9,'Java Web'),(10,'PBO');

#
# Structure for table "tbl_mahasiswa"
#

DROP TABLE IF EXISTS `tbl_mahasiswa`;
CREATE TABLE `tbl_mahasiswa` (
  `nim` varchar(7) NOT NULL DEFAULT '',
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat_asal` varchar(100) NOT NULL,
  `alamat_sekarang` varchar(100) NOT NULL,
  `no_telepon` varchar(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `fakultas` varchar(50) NOT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tbl_mahasiswa"
#

INSERT INTO `tbl_mahasiswa` VALUES ('0093473','jhon','ee11cbb19052e40b07aac0ca060c23ee','user','Jhonson','Laki-Laki','France','2019-09-28','France Island','Saturnuss','7876865875675','Jhons@gmail.com','Atheis','SI'),('009909','fadlie','0cc175b9c0f1b6a831c399e269772661','user','Fadlie ferdiyansah','Laki-Laki','Jakarta Barat','2019-09-25','Jepang','Shibuya','08999141307','fadlieferdiansyah62@gmail.com','islam','TI'),('080808','Amelia','ee11cbb19052e40b07aac0ca060c23ee','user','Amelia Putri','Perempuan','Jakarta Barat','2019-10-16','Paris','Medan','080943948854','Amelia@gmail.com','Hindu','IK'),('1718112','fadlie','21232f297a57a5a743894a0e4a801fc3','admin','Fadlie ferdiyansah','Laki-Laki','Jakarta Barat','2019-09-25','Jepang','Shibuya','08999141307','fadlieferdiansyah62@gmail.com','islam','TI'),('1718123','Abdul','ee11cbb19052e40b07aac0ca060c23ee','user','Abdul Hanif','Laki-Laki','Arab Saudi','2019-09-17','South Arabic','Indonesia','0099887766','abdul@gmail.com','islam','SI'),('1718811','Agung','21232f297a57a5a743894a0e4a801fc3','admin','Agung Hapsah','Laki-Laki','Australia','2019-09-08','Indonesia','Jakarta Selatan','009863i43783','agung@gmail.com','Islam','IK'),('3333333','fadlie','8277e0910d750195b448797616e091ad','user','Fadlie ferdiyansah','Laki-Laki','Jakarta Barat','2019-09-25','Jepang','Shibuya','08999141307','fadlieferdiansyah27@gmail.com','islam','TI'),('4645644','zahra','3691308f2a4c2f6983f2880d32e29c84','admin','Zahra','Perempuan','Jakarta Barat','2019-08-06','jakarta barat','Italia','76869679687','udin@gmail.com','Islam','TI');
