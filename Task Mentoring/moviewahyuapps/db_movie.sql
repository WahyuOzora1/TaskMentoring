-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2021 at 08:53 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_favorite`
--

CREATE TABLE `tb_favorite` (
  `id_favorite` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_favorite`
--

INSERT INTO `tb_favorite` (`id_favorite`, `id_movie`) VALUES
(53, 14),
(56, 18),
(58, 20),
(59, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tb_movie`
--

CREATE TABLE `tb_movie` (
  `id_movie` int(11) NOT NULL,
  `judul` text NOT NULL,
  `video` text NOT NULL,
  `deskripsi` text NOT NULL,
  `view` text NOT NULL,
  `gambar` text NOT NULL,
  `durasi` text NOT NULL,
  `produsen` text NOT NULL,
  `rating` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_movie`
--

INSERT INTO `tb_movie` (`id_movie`, `judul`, `video`, `deskripsi`, `view`, `gambar`, `durasi`, `produsen`, `rating`) VALUES
(12, 'Yuk Hijrah', 'hijrah.mp4', 'aat ini, sebagian umat Islam, ketika mendengar kata hijrah atau peristiwa hijrah Nabi shallallahu ‘alaihi wa sallam dari Mekah ke Madinah, menganggapnya sebagai suatu perpindahan biasa, layaknya migrasi penduduk dengan segala kerepotannya. Padahal tidaklah semudah itu. Ini adalah perjuangan yang besar. Bentuk perlawanan terhadap kaum musyrikin Mekah bahkan Jazirah Arab secara umum. Kehilangan nyawa sebuah resiko yang begitu terpapar di depan mata Rasulullah shallallahu ‘alaihi wa sallam dan para sahabatnya.\r\n\r\nHijrah bukanlah melarikan diri. Hijrah adalah persiapan membekali diri untuk kehidupan akhirat. Karena itulah, Allah Ta’ala berfirman,\r\n\r\nوَالَّذِينَ هَاجَرُوا فِي سَبِيلِ اللهِ ثُمَّ قُتِلُوا أَوْ مَاتُوا لَيَرْزُقَنَّهُمُ اللهُ رِزْقًا حَسَنًا وَإِنَّ اللهَ لَهُوَ خَيْرُ الرَّازِقِينَ * لَيُدْخِلَنَّهُمْ مُدْخَلاً يَرْضَوْنَهُ وَإِنَّ اللهَ لَعَلِيمٌ حَلِيمٌ\r\n\r\n“Dan orang-orang yang berhijrah di jalan Allah, kemudian mereka di bunuh atau mati, benar-benar Allah akan memberikan kepada mereka rezeki yang baik (surga). Dan sesungguhnya Allah adalah sebaik-baik pemberi rezeki. Sesungguhnya Allah akan memasukkan mereka ke dalam suatu tempat (surga) yang mereka menyukainya. Dan sesungguhnya Allah Maha mengetahui lagi Maha Penyantun.” (QS. Al-Hajj: 58-59).\r\n\r\nDitambah lagi, Nabi shallallahu ‘alaihi wa sallam barulah berhijrah tatkala semua sahabatnya telah berangkat menuju Madinah. Hal ini semakin menguatkan bahwa hijrah bukanlah bentuk melarikan diri. Nabi shallallahu ‘alaihi wa sallam jauh lebih mementingkan keselamatan dan keamanan umatnya dibanding keselamatan dirinya. Inilah jiwa seorang pemimpin. Seorang nahkoda bukanlah orang yang pertama meninggalkan kapal saat ia akan karam. Ia akan menjadi yang terakhir keluar setelah memastikan awak dan penumpangnya selamat terlebih dahulu. Tidaklah tersisa di Mekah kecuali Rasulullah, Abu Bakar, dan Ali bin Abi Thalib sebagai orang-orang yang paling akhir menempuh perjalanan.\r\n\r\n\r\n\r\n', '100.000', 'hijrah.png', '20 Menit', 'CatatanHijrah', '8.0/10.0'),
(13, 'Guardians of Ga’hoole', 'Guardians of Ga’hoole.mkv', 'Kisah burung hantu mencari pahlawan legendaris.Film ini lumayan lah untuk ditonton tidak begitu wajib.Seri ini mengikuti petualangan Soren, burung hantu lumbungmuda , untuk enam buku pertama, tetapi mengikuti Nyroc, keponakan Soren, yang kemudian berganti nama menjadi Coryn, untuk buku tujuh hingga delapan, dan dua belas hingga lima belas adalah buku yang menggambarkan Pemerintahan Raja Coryn. Buku sembilan sampai sebelas adalah setengah prekuel untuk buku-buku lain, mengikuti kisah Hoole, raja pertama Pohon Ga\'Hoole.\r\n\r\nPenangkapan\r\nSoren, yang tinggal di sarang dengan orang tuanya Noctus dan Marella dan saudara kandung Kludd dan Eglantine di kerajaan hutan bernama Tyto, jatuh dari sarang. (Kemudian terungkap bahwa ia didorong oleh Kludd, yang melakukan perbuatan untuk menjadi Yang Murni.) Ketika dia menangis kepada orang tuanya untuk meminta bantuan, Soren ditemukan dan dijambret oleh patroli burung hantu jahat dari Akademi St. Aegolius untuk Burung Hantu Yatim, atau St. Aggie. Soren dan burung hantu yang dijambret lainnya diperbudak ke dalam tugas-tugas seperti menyortir telur dan pelet, karena alasan mereka tidak cukup mengerti. Burung hantu di St. Aggie\'s adalah \"bulan berkedip\", teknik cuci otak yang disebabkan oleh tidur di bawah bulan purnama dan juga berbaris di bawah cahaya bulan purnama dan tanpa henti mengulangi nama asli mereka untuk melupakannya sehingga kehilangan rasa diri dan akan. Soren berteman dengan burung hantu elf muda bernama Gylfie (dari kerajaan gurun Kuneer), yang, seperti dia, tahan terhadap kedipan bulan, dengan tetap terjaga selama bersinar penuh, dan bersama-sama mereka merencanakan keduanya untuk menemukan sebanyak mungkin tentang tujuan sebenarnya di belakang St. Aggie dan melarikan diri. Keduanya juga berteman dengan burung hantu berbintik bernama Hortense. Mereka juga menemukan burung hantu boreal yang sebagian berkedip bulan bernama Grimble dan berencana untuk melarikan diri dengan bantuan Grimble. Grimble dibunuh pada malam Soren dan Gylfie melarikan diri oleh pemimpin St. Aggie Skench burung hantu bertanduk besar dan letnannya Spoorn burung hantu pekikan barat. Setelah melarikan diri, mereka kemudian bertemu Twilight,seekor burung hantu abu-abu besar yatim piatu yang mempelajari naluri bertahan hidupnya dari \"Sekolah Yatim Piatu Pembelajaran Yang Sulit\", Digger, seekor burunghantu yang menggali, yang kehilangan keluarganya dari perampok St. Aggie dan sangat sensitif dan filosofis, dan Ny. Dengan bantuan dua teman elang botak Hortense bernama Streak dan Zan,mereka membunuh dua patroli St. Aggie, sepupu Jatt dan Jutt burung hantu bertelinga panjang.\r\n\r\nPerjalanan\r\nKeempat burung hantu membentuk sebuah band dan terbang menjauh untuk mencari Pohon Ga\'Hoole Besar, di mana legenda mengatakan ksatria-burung hantu besar hidup yang berdedikasi untuk melakukan perbuatan baik dan akhirnya menemukannya. Segera setelah band tiba di pohon, mereka memulai pelatihan mereka sebagai wali dan segera mahir dalam chaws pilihan mereka, atau kelas, Mereka juga bertemu burung hantu lainnya, seperti Otulissa, burung hantu tutul, Primrose, burung hantu pygmy utara, Martin, burung hantu gergaji utara,dan belajar banyak rahasia seperti colliering, navigasi, pencarian dan penyelamatan dan navigasi cuaca. Ezylryb burung hantu tua berkumis melengking,cuaca chaw ryb atau guru,menjadi teman baik dengan Soren. Setelah jangka waktu yang lama berlalu, ratusan burung hantu ditemukan terbengkalai di tengah hutan yang tidak berpenghuni. Orang asing ternyata, bahwa semuanya \"mengoceh kemurnian Tyto\". Di antara burung hantu yang jatuh ini, yang kemudian disebut \"The Great Downing\", adalah Eglantine, saudara perempuan Soren yang hilang. Ketika dia dan yang lain sadar penuh, mereka tidak memiliki ingatan tentang apa yang telah terjadi, dari mana mereka berasal dan mengapa mereka berada di antah berantah harfiah.\r\n\r\nPenyelamatan\r\nKetika Ezylryb pergi untuk menyelidiki daerah The Great Downing dan tidak kembali, Pohon Besar tidak tenang. Setelah beberapa saat, band ini pergi untuk menyelidiki hilangnya dan mencari informasi tentang apa yang bisa terjadi. Octavia, Sarang-pelayan pribadi Ezylryb ular dan teman Kielian (spesiesnya, mampu menggali materi yang sulit dengan gigi mereka dan memperluas beberapa sisik di sekitar kepala mereka untuk menambahkan aneh dan menggertak, mirip warnanya dengan pembalap biru), memberi mereka informasi bahwa Ezylryb juga merupakan pejuang terkenal, Lyze of Kiel (Ezyl adalah Lyze dieja mundur) dan memiliki hubungan pribadi dengan Rogue Smith of Silverveil. Kemudian, selama waktu hujan mawar tembaga (Musim Gugur di Pohon Besar), band menyelinap pergi selama festival selama seminggu untuk pergi berbicara dengan Rogue Smith dengan harapan mereka tidak akan terlihat hilang. Ketika berbicara dengan Smith, mereka menemukan bahwa penyanyi terkenal di Pohon Besar, Madame Plonk, adalah saudara perempuan Smith dan bahwa ada sekelompok burung hantu mengerikan yang dikenal sebagai The Pure Ones dipimpin oleh Paruh Logam. Ketika mereka kembali ke pohon, tampaknya semua orang memperhatikan bahwa mereka hilang dan bahwa Soren melewatkan upacara Daging dan Tulang Pertama adiknya. Segera kemudian, Eglantine mulai mengingat di mana dia berada pada saat dia hilang dan memberi tahu band bahwa dia ingat berada di kastil selama penjara. Soren, Gylfie, Twilight, Digger, Eglantine, dan Otulissa, yang disebut Chaw of Chaws, keluar untuk menemukan kastil dengan harapan bahwa hilangnya Ezylryb mungkin terjawab. Setelah hampir menyerah, Chaw of Chaws menemukan Segitiga Iblis, segitiga yang terdiri dari cache besar partikel magnetik, atau \"bintik-bintik\", dimaksudkan untuk mengubah rasa arah burung hantu dan menjebak Ezylryb di dalamnya. Chaw menyadari bahwa cache ini dapat dihancurkan oleh api dan menghancurkan Segitiga Iblis. Sama seperti mereka membebaskan Ezylryb, sekelompok burung hantuLumbung, bagian dari rezim The Pure Ones menyerang Chaw, yang dipimpin oleh Paruh Logam. Chaw mengambil cabang dan mengatur mereka turun sehingga mereka dapat bertarung dengan api, dan sebagian jalan melalui pertempuran, Martin, dan Ruby, burunghantu bertelinga pendek,tiba. Ketika pertempuran mencapai akhir, Paruh Logam mengungkapkan identitasnya kepada Chaw, sekarang termasuk Martin dan Ruby, sebagai Kludd, saudara jahat Soren. Soren, karena putus asa, membakar topeng Kludd yang terbuat dari logam Mu, logam lunak yang meniadakan kekuatan magnetik bintik-bintik, dan dia berteriak saat logam meleleh di wajahnya. Ezylryb dan Chaw of Chaws terbang pulang dan bertemu dengan sorak-sorai, dan saat siang hari tiba, Ezylryb menulis puisi perang yang akan datang dengan Yang Murni.', '20.000', 'GuardiansofGa’hoole.jpg', '90 Menit', 'ZarehNalbandean', '8.6/10.0'),
(14, 'Kuroko No Basket “The Last Game”', 'kuroko.mkv', 'Kagami Taiga pindah ke sekolah menengah di Jepang, bergabung dengan klub basket mereka. Saat bermain dalam pertandingan latihan, ia mencetak keranjang tetapi secara tidak sengaja merobohkan pemain lain dalam prosesnya. Kagami mengulurkan tangannya untuk meminta maaf tetapi pemain lain mengatakan kepadanya bahwa dia memperhatikan betapa bosannya Kagami saat bermain basket.\r\n\r\nWaktu berlalu dan sesama siswa Kagami mencatat bagaimana dia selalu sendirian di sekolah karena klub basket tidak menyukainya. Kagami melihat ke luar jendela dan berharap untuk lebih banyak kegembiraan saat bermain basket.\r\n\r\nKembali ke masa sekarang, Kagami terlihat berjalan ke Seirin tetapi terkejut ketika Kuroko muncul di belakangnya dengan Nigou di tangan. Kuroko mengatakan kepadanya bahwa sekarang gilirannya untuk mengurus Nigou tetapi kemudian terganggu ketika Kagami menerima panggilan telepon. Alex memanggil Kagami dari Amerika Serikat saat didampingi pelatih. Dia memberi tahu pelatih Amerika betapa hebatnya seorang pemain Kagami dan bahwa dia mencintai bola basket lebih dari siapa pun. Pelatih sebagai imbalannya bertanya apakah dia bisa mengharapkan \"jawaban yang baik\" dari Kagami.\r\n\r\n\r\nTim Jabberwock\r\n\r\nSetelah panggilan telepon, Kuroko dan Kagami tiba di Seirin terlambat, tepat sebelum pertandingan antara Tim Strky dan Tim Jabberwock dimulai. Seirin mengomentari acara sebelum pertandingan dimulai, mencatat bagaimana mereka beruntung memiliki Kagetora untuk bimbingan dan bagaimana Hyūga dan Riko bisa mendapatkan tiket pertandingan. Tim Generasi Keajaiban lainnya bersiap untuk menonton juga, mengomentari penampilan dan keterampilan mantan rekan setim mereka. Hyūga ingat panggilan telepon yang dia miliki dengan Kiyoshi yang mengatakan kepadanya tentang reputasi buruk yang dilakukan Jabberwock, membuat Hyūga khawatir.\r\n\r\nPertandingan Tim Jabberwock vs Team Strky dimulai dengan Jabberwock menangkap bola saat tip-off. Emas menggiring bola, menyembunyikannya di belakang punggungnya sebelum mengopernya ke Allen yang mencetak keranjang. Pertandingan berlanjut tetapi atmosfer pengadilan berubah dengan permainan Jabberwock berubah menjadi provokatif. Generasi Keajaiban memperhatikan bahwa gaya permainan ini tidak hanya provokatif tetapi menunjukkan betapa terbukanya Jabberwock memandang ke bawah pada lawan-lawan mereka. Sangat merendahkan bahwa bahkan jika mereka mau, penonton tidak bisa menikmati pertandingan sama sekali.', '125.000', 'kuruko.png', '90 Menit', 'Shunsuke Tada', '9.0/10.0'),
(15, 'Spirited Away', 'SpiritedAway.mkv', 'Spirited Away (千と千尋の神隠し,Sen to Chihiro no Kamikakushi, literally translated as \"Sen and Chihiro\'s Spiriting Away\"), is an animated film written and directed Hayao Miyazaki and produced by Studio Ghibli, and was released on July 20, 2001.\r\nThe story is about the adventures of a young ten-year-old girl named Chihiro as she wanders into the world of the gods and spirits. She is forced to work at a bathhouse following her parents being turned into pigs by the witch Yubaba.\r\n\r\nThe film was made to please the ten-year-old daughter of Hayao Miyazaki\'s personal friend, Seiji Okuda, a Nippon TV movie producer. Okuda\'s daughter even became the model for the film\'s protagonist, Chihiro. During the film\'s planning phase, Miyazaki gathered the daughters of Ghibli\'s staff in a mountain hut in Shinshu to hold a training seminar. His experience led him to wanting to make a film for them, since he had never made a movie for girls at the age of 10.\r\n\r\nThe film grossed an unbeaten box office record in Japan, exceeding ¥30 billion. It received multiple international awards, including the Golden Bear Award at the 52nd Berlin International Film Festival and the second Oscar ever awarded for Best Animated Feature, the first anime film to win an Academy Award, and the only winner of that award to win among five nominees. Due to his efforts in promoting the film in North America, John Lasseter, one of the founding fathers of Pixar, became the executive producer of the English dub.\r\n\r\nIt won first place in the Studio Ghibli general poll held in 2016, and was re-screened in five movie theaters around Japan for seven days from September 10 to 16, 2016.', '160.000', 'SpiritedAway.jpg', '75 menit', 'Toshio Suzuki', '9.3/10.0'),
(16, 'UP', 'up.mkv', 'Up adalah sebuah film komedi animasi komputer Amerika Serikat tahun 2009 yang diproduksi oleh Pixar Animation Studios dan dirilis oleh Walt Disney Pictures. Film ini berpusat pada seorang duda tua bernama Carl Fredricksen (Ed Asner)dan seorang anak laki-laki yang sungguh-sungguh bernama Russell (Jordan Nagai); dengan mengisahkan ribuan balon ke rumahnya, Carl berangkat untuk memenuhi impiannya untuk melihat alam liar Amerika Selatan dan menyelesaikan janji yang dibuat untuk mendiang istrinya, Ellie. Film ini disutradarai oleh Pete Docter dan disutradarai oleh Bob Peterson, yang juga menulis skenario film dengan Docter, serta cerita dengan Tom McCarthy. Musik ini dikomposisikan oleh Michael Giacchino, yang juga telah menyusun musik untuk The Incredibles dan Ratatouille.\r\n\r\nDocter mulai mengerjakan cerita pada tahun 2004 yang disebut Heliums, yang didasarkan pada fantasi melarikan diri dari kehidupan ketika menjadi terlalu menjengkelkan. Dia dan sebelas seniman Pixar lainnya menghabiskan tiga hari di Venezuela mengumpulkan penelitian dan inspirasi. Desain karakter dikariikatur dan bergaya jauh, dan animator ditantang untuk membuat kain realistis. Ini adalah film pertama Pixar yang disajikan dalam Disney Digital 3-D. [3]\r\n\r\nUp dirilis pada 29 Mei 2009, dan membuka Festival Film Cannes 2009, menjadi film animasi dan 3-D pertama yang melakukannya. [4] Film ini meraup lebih dari $ 735 juta, menjadi film terlaris keenam tertinggi tahun 2009. Film ini mendapat pujian universal dari para kritikus dan penonton, dengan banyak yang menyebutnya sebagai salah satu film animasi terbaik sepanjang masa. [5] Penampilan vokal Asner dan skor Michael Giacchino dipuji, seperti montase Carl dan istrinya Ellie menjadi tua bersama. Film ini memenangkan dua Academy Awards, termasuk Best Animated Feature, dan dinominasikan untuk tiga lagi, termasuk Best Picture, menjadikannya film animasi kedua dalam sejarah yang menerima nominasi seperti itu (dan film Pixar pertama yang melakukannya), mengikuti Beauty and the Beast (1991)', '350.000', 'up.jpg', '125 menit', ' Pete Docter', '8.5/10.0'),
(17, 'The Incredibles', 'incredible.mkv', 'The Incredibles adalah sebuah film superhero animasi komputer Amerika Serikat tahun 2004 yang diproduksi oleh Pixar Animation Studios dan dirilis oleh Walt Disney Pictures. Ditulis dan disutradarai oleh Brad Bird, dibintangi oleh suara Craig T. Nelson, Holly Hunter, Sarah Vowell, Spencer Fox, Jason Lee, Samuel L. Jackson, dan Elizabeth Peña. Berlatar versi alternatif tahun 1960-an,[4][5][6] film ini mengikuti Parrs, keluarga pahlawan super yang menyembunyikan kekuatan mereka sesuai dengan mandat pemerintah, dan berusaha untuk menjalani kehidupan pinggiran kota yang tenang. Keinginan Tn. Incredibleuntuk membantu orang menarik seluruh keluarga ke dalam konfrontasi dengan musuh yang berubah menjadi penggemar yang pendendam.\r\n\r\nBrad Bird, yang merupakan sutradara luar pertama Pixar, mengembangkan film ini sebagai perpanjangan dari buku komik dan film mata-mata tahun 1960-an dari kehidupan keluarganya yang masih kecil dan pribadi. Dia melemparkan film ini ke Pixar setelah kekecewaan box office Warner Bros.dari fitur pertamanya, The Iron Giant (1999), dan membawa lebih banyak stafnya untuk mengembangkan The Incredibles. Tim animasi ditugaskan untuk menjiwai pemeran semua manusia, yang mengharuskan menciptakan teknologi baru untuk menghidupkan anatomi manusia yang terperinci, pakaian dan kulit dan rambut yang realistis. Michael Giacchino menyusun skor orkestra film ini.\r\n\r\nFilm ini tayang perdana pada 27 Oktober 2004, di FESTIVAL Film BFI London dan dirilis secara umum di Amerika Serikat pada 5 November 2004. Ini berkinerja baik di box office, meraup $ 633 juta di seluruh dunia selama pertunjukan teater aslinya. The Incredibles menerima persetujuan luas dari para kritikus dan penonton, memenangkan dua Academy Awards dan Annie Award untuk Fitur Animasi Terbaik. Ini adalah film animasi pertama yang memenangkan Hugo Award bergengsi untuk Presentasi Dramatis Terbaik. Sekuel, Incredibles 2, dirilis pada 15 Juni 2018.', '1.000.000', 'TheIncridible.jpg', '20 Menit', 'The SimS', '8.5/10.0'),
(18, 'Aladdin', 'up.mkv', 'Aladdin is a 2019 American live-action animated musical fantasy film produced by Walt Disney Pictures. Directed by Guy Ritchie, from a script he co-wrote with John August, it is a live-action adaptation of Disney\'s 1992 animated film of the same name, which itself is based on the eponymous tale from One Thousand and One Nights.[1][a] The film stars Will Smith, Mena Massoud, Naomi Scott, Marwan Kenzari, Navid Negahban, Nasim Pedrad, Billy Magnussen, and Numan Acar, as well as the voices of Alan Tudyk and Frank Welker, the latter of whom reprises his roles from all previous media. The plot follows Aladdin, a street urchin, as he falls in love with Princess Jasmine, befriends a wish-granting Genie, and battles the wicked Jafar.\r\n\r\nIn October 2016, Disney announced Ritchie would direct a live-action Aladdin remake. Smith was the first member of the cast to join, signing on to portray Genie in July 2017, and Massoud and Scott were confirmed for the two lead roles later that month. Principal photography began that September at Longcross Studios in Surrey, England, also filming in the Wadi Rum Desert in Jordan, and lasted until January 2018. Additional filming and pick-ups took place in August 2018.\r\n\r\nAladdin was theatrically released in the United States on May 24, 2019. It grossed $1 billion worldwide, becoming the ninth-highest-grossing film of 2019. The film received mixed reviews from critics, with praise for its music, costume design, and the performances of Smith, Massoud, and Scott, but criticism for Ritchie\'s direction, Kenzari\'s performance as Jafar,the CGI, and the screenplay. A sequel is in development.[7]', '100.000', 'aladdin.jfif', '120 menit', 'Guy Ritchie', '9.1/10.0'),
(19, 'The New Mutants', 'kuroko.mkv', 'The New Mutants is a 2020 American superhero horror film based on the Marvel Comics team of the same name and distributed by 20th Century Studios. It is the thirteenth and final installment in the X-Men film series. The film was directed by Josh Boone from a screenplay he wrote with Knate Lee, and stars Maisie Williams, Anya Taylor-Joy, Charlie Heaton, Alice Braga, Blu Hunt, and Henry Zaga. In the film, a group of young mutants held in a secret facility fight to save themselves.\r\n\r\nBoone and Lee first began work on the film after Boone completed The Fault in Our Stars (2014). The pair pitched a potential film trilogy to X-Men producer Simon Kinberg, and in May 2015 were officially signed on to the project. Taylor-Joy and Williams were rumored to be cast in March 2016, and were confirmed over a year later when the rest of the cast filled out. Filming took place in Boston, Massachusetts, from July to September 2017, primarily at Medfield State Hospital, with an April 2018 release in mind. The film was then delayed while reshoots were planned and Disney began the process of acquiring production company 20th Century Fox. After the acquisition was completed, Boone returned to work on the film, and it was completed without reshoots in March 2020.\r\n\r\nThe New Mutants was theatrically released in the United States on August 28, 2020, by 20th Century Studios, after facing many delays from its original April 2018 date. The film received mixed reviews, with critics considering the film competent but generic.', '90.000', 'thenewmutants.jfif', '100 menit', ' Josh Boone', '8.7/10.0'),
(20, 'Toy Story 4', 'hijrah.mp4', 'Toy Story 4 adalah sebuah film komedi animasi komputer Amerika Serikat tahun 2019 yang diproduksi oleh Pixar Animation Studios dan dirilis oleh Walt Disney Pictures. Ini adalah angsuran keempat dalam seri Toy Story Pixar dan sekuel dari Toy Story 3 (2010). Film tersebut disutradarai oleh Josh Cooley (dalam debut sutradara fiturnya)dari skenario karya Andrew Stanton dan Stephany Folsom; ketiganya juga mengandung cerita bersama John Lasseter, Rashida Jones, Will McCormack, Valerie LaPointe, dan Martin Hynes. [1] Tom Hanks, Tim Allen, Annie Potts, Joan Cusack, Don Rickles (melalui rekaman arsip),[a] Wallace Shawn, John Ratzenberger, Estelle Harris, Blake Clark, Bonnie Hunt, Jeff Garlin, Kristen Schaal dan Timothy Dalton mengulangi peran karakter mereka dari tiga film pertama. Mereka bergabung dengan Tony Hale, Keegan-Michael Key, Jordan Peele, Christina Hendricks, Keanu Reeves, dan Ally Maki, yang menyuarakan karakter baru.\r\n\r\nFilm ini secara langsung mengikuti Toy Story 3, sebagai Sheriff Woody, Buzz Lightyear, dan teman-teman mereka yang lain telah menemukan apresiasi baru yang hidup dengan Bonnie. Mereka bergabung dengan Forky, spork yang dibuat Bonnie menjadi toy, dan memulai petualangan perjalanan darat. Film ini didedikasikan untuk Rickles dan animator Adam Burke, yang masing-masing meninggal pada 6 April 2017 dan 8 Oktober 2018. [7][8]\r\n\r\nToy Story 4 tayang perdana pada 11 Juni 2019, di Los Angeles, dan dirilis di Amerika Serikat pada 21 Juni 2019. Film ini meraup $ 1,073 miliar di seluruh dunia, menjadi angsuran terlaris tertinggi dari waralaba, film terlaris kedelapan tahun 2019, dan film animasi terlaris kelima sepanjang masa selama pertunjukan teaternya. Seperti pendahulunya, film ini mendapat pujian kritis, dengan pujian atas cerita, humor, emosi, skor musik, animasi, dan pertunjukan vokalnya. Film ini memenangkan Critics\' Choice Movie Award untuk Fitur Animasi Terbaik dan Producers Guild of America Award untuk Film Animasi Terbaik. Di Academy Awards ke-92,lagu ini dinominasikan untuk Best Original Song, dan memenangkan Best Animated Feature,[9][10] menjadikannya waralaba pertama yang memenangkan penghargaan dua kali.', '250.000', 'toystory4.jfif', '125 menit', 'Walt Disney', '9.3/10.0'),
(21, 'One Piece', 'kuroko.mkv', 'One Piece (bahasa Jepang: ワンピース Hepburn: Wan Pīsu) adalah sebuah seri manga Jepang yang ditulis dan diilustrasikan oleh Eiichiro Oda. Manga ini telah dimuat di majalah Weekly Shōnen Jump milik Shueisha sejak tanggal 22 Juli 1997, dan telah dibundel menjadi 91 volume tankōbon. Ceritanya mengisahkan petualangan Monkey D. Luffy, seorang anak laki-laki yang memiliki kemampuan tubuh elastis seperti karet setelah memakan Buah Iblis secara tidak disengaja. Dengan kru bajak lautnya, yang dinamakan Bajak Laut Topi Jerami, Luffy menjelajahi Grand Line untuk mencari harta karun terbesar di dunia yang dikenal sebagai \"One Piece\" dalam rangka untuk menjadi Raja Bajak Laut yang berikutnya.\r\n\r\nManga ini telah diadaptasi menjadi sebuah animasi video asli (OVA) yang diproduksi oleh Production I.G pada tahun 1998, dan sebuah serial anime yang diproduksi oleh Toei Animation, yang mulai tayang di Jepang pada tahun 1999. Sebagai tambahan, Toei juga telah memproduksi tiga belas film animasi, satu OVA dan sebelas episode khusus televisi. Beberapa perusahaan telah mengembangkan berbagai jenis pernak-pernik seperti permainan kartu dagang dan beberapa permainan video. Versi manganya telah dilisensi untuk dirilis dalam bahasa Inggris di Amerika Utara dan Britania Raya oleh Viz Media dan di Australia oleh Madman Entertainment. Versi animenya telah dilisensi oleh 4Kids Entertainment untuk perilisan versi bahasa Inggris di Amerika Utara pada tahun 2004, sebelum lisensi tersebut dicabut dan kemudian diakuisisi oleh Funimation pada tahun 2007.\r\n\r\nOne Piece telah menerima pujian atas alur cerita, gambar, karakterisasi, dan humornya. Beberapa volume dari manga ini telah memecahkan rekor penerbitan, termasuk cetakan awal tertinggi dari buku apa pun di Jepang. Situs web resmi untuk manga One Piece karya Eiichiro Oda mengumumkan bahwa manga ini telah meraih Guinness World Record untuk kategori \"salinan terbanyak yang diterbitkan untuk seri buku komik yang sama oleh seorang penulis tunggal\". Hingga bulan Mei 2018, manga ini telah terjual hingga lebih dari 440 juta kopi di seluruh dunia, menjadikannya seri manga terlaris dalam sejarah. One Piece juga menjadi manga terlaris selama sepuluh tahun berturut-turut pada tahun 2017', '350.000', 'onepiece.jpg', '100 menit', ' Eiichiro Oda', '9.5/10.0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `email` text NOT NULL,
  `username` text NOT NULL,
  `password1` text NOT NULL,
  `password2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `email`, `username`, `password1`, `password2`) VALUES
(96, 'jojojo@gmail.com', 'jojojo', 'd0bafb7185f2acfd371c566cbae25af9', 'd0bafb7185f2acfd371c566cbae25af9'),
(119, 'jojojo@gmail.com', 'jojojo', 'd0bafb7185f2acfd371c566cbae25af9', 'd0bafb7185f2acfd371c566cbae25af9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_favorite`
--
ALTER TABLE `tb_favorite`
  ADD PRIMARY KEY (`id_favorite`),
  ADD KEY `fk_tb_favorite` (`id_movie`);

--
-- Indexes for table `tb_movie`
--
ALTER TABLE `tb_movie`
  ADD PRIMARY KEY (`id_movie`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_favorite`
--
ALTER TABLE `tb_favorite`
  MODIFY `id_favorite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tb_movie`
--
ALTER TABLE `tb_movie`
  MODIFY `id_movie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_favorite`
--
ALTER TABLE `tb_favorite`
  ADD CONSTRAINT `fk_tb_favorite` FOREIGN KEY (`id_movie`) REFERENCES `tb_movie` (`id_movie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
