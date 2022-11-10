-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Lis 2022, 13:13
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `mysql_giereczkowo`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `game`
--

CREATE TABLE `game` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `developerId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `releaseDate` datetime(3) DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `game`
--

INSERT INTO `game` (`id`, `name`, `developerId`, `releaseDate`, `description`, `image`) VALUES
('016ae04f-5c61-40da-b124-4f9bdf389c3c', 'Pentiment', 'ed964a26-49fe-467b-ac96-6071efe90d6b', '2022-11-15 00:00:00.000', 'Gra przygodowa, za której opracowaniem stoi studio Obsidian Entertainment. W Pentiment wcielamy się w rolę artysty, który zostaje uwikłany w sprawę tajemniczych morderstw w niemieckim opactwie. Cechą charakterystyczną gry jest grafika inspirowana średniowiecznymi drzeworytami.', '3eb69aa5-4aa9-48cc-885a-fee7c7918474.jpeg'),
('0aab38d8-4021-4e5d-aa3c-057d4eaae758', 'Halo 5: Guardians', 'c3bcc8f5-30cc-43bb-8bb3-626728188e3e', '2015-10-27 00:00:00.000', 'Halo 5: Guardians to bezpośrednia kontynuacja Halo 4 z Xboxa 360. Akcja toczy się w roku 2558, dokładnie osiem miesięcy po wydarzeniach ukazanych w czwartej części, po których Master Chief zniknął w dziwnych okolicznościach. Halo 5 przedstawia historię z dwóch punktów widzenia - Spartanina Jamesona Locke’a oraz wspomnianego Master Chiefa właśnie.', '54e86b21-62c0-40a6-8f2d-d0d32dfdff9d.png'),
('11686130-4a68-4560-86e7-90d48eeed6ef', 'Halo: The Master Chief Collection', 'c3bcc8f5-30cc-43bb-8bb3-626728188e3e', '2014-11-11 00:00:00.000', 'Pakiet gier z serii Halo, w którego skład wchodzą: Halo: Combat Evolved Anniversary, Halo 2 (również w wersji Anniversary), Halo 3, Halo 4 oraz Halo 3: ODST. Dodatkowo wersja na komputery osobiste zawiera prequel cyklu, zatytułowany Halo: Reach.', '21c13322-0a65-4181-8a1c-0b7d683e1319.webp'),
('13b3afed-5da8-4f70-b4b4-5dd77b5925e7', 'Bleeding Edge', '54b595b9-108b-4935-8b6f-80e7b6b6f10f', '2021-03-24 00:00:00.000', 'Bleeding Edge to nowy projekt studia Ninja Theory, czyli twórców Hellblade: Senua\'s Sacrifice. To trzecioosobowa, wieloosobowa gra akcji, w której rywalizują dwie drużyny, składające się z czterech bohaterów. Choć gra przypomina nieco hero shootery - jak np. Overwatch - to stawia w znacznej mierze na walkę wręcz.', '389b0bd8-5881-4d80-a7b1-83de4768e0f2.png'),
('15a80ea1-7dd6-40c2-8e3d-d56f01a3cc7a', 'Forza Horizon 5 ', '8129e7f1-c601-406b-b79b-1053da0d139e', '2021-11-05 00:00:00.000', 'Forza Horizon 5 to piąta odsłona bestsellerowego cyklu gier wyścigowych z otwartym światem, zapoczątkowanego w 2012 roku jako spin-off serii Forza Motorsport. W trakcie zabawy bierzemy udział w tytułowym Festiwalu Horizon, który stanowi swego rodzaju muzyczno-samochodowe święto.', '3b80a9b8-e84d-4e93-ac26-dd0d9a3dde03.png'),
('180bb194-3691-4cb1-8fec-4b3e1c7e6e66', 'Forza Horizon 3', '8129e7f1-c601-406b-b79b-1053da0d139e', '2016-09-27 00:00:00.000', 'Forza Horizon 3 to kolejna gra ze znanej serii wydawanej do tej pory jedynie na konsole Xbox. Jest to dynamiczna gra samochodowa, która łączy elementy zręcznościówki jak i symulatora, a całość zamknięta jest w otwartym świecie, wypełnionym wyścigami i wyzwaniami.', '4daeb2bb-a1d2-4059-8826-37420050ebdd.png'),
('21d0ca4d-f3e8-41b9-bb95-47af720824a1', 'Ghost of Tsushima ', '2abd4f90-119d-4a35-9fae-3d2ee5f3ef46', '2020-07-17 00:00:00.000', 'Ghost of Tsushima opowiada historię Jina, który po najeździe Mongołów na wyspę Cuszima, będącą tak naprawdę odzwierciedleniem całej ówczesnej Japonii, rusza w podróż, by odbić uwięzionego Pana Shimurę, swojego wuja. Główną fabułę gry przeplatają opowieści poboczne.', '11f33079-7390-4ee0-b3b0-a1b7789941c4.png'),
('26c7e351-8182-4c26-b102-56fa6e0f0784', 'Gears 5', 'bef12e96-6e93-4f62-b9e3-84f17313904c', '2019-09-06 00:00:00.000', 'Gears 5 to strzelanka TPP, która kładzie duży nacisk na korzystanie z osłon terenowych. Na początku oferuje kilka klasycznych misji w stylu znanym z poprzednich części, ale później przedstawia nam zupełnie inną dla serii, nieco bardziej otwartą strukturę.', 'b52681f7-291f-4c4d-a534-62d36933f214.png'),
('27fcb720-ed32-429e-a5ea-dcabeeafc39c', 'Horizon Forbidden West', 'e289bd19-0785-42a9-affb-b4724943337c', '2022-02-18 00:00:00.000', 'Horizon Forbidden West to gra RPG akcji z 2022 roku, opracowana przez Guerrilla Games i wydana przez Sony Interactive Entertainment. Kontynuacja Horizon Zero Dawn z 2017 roku, gra osadzona jest w postapokaliptycznej wersji zachodnich Stanów Zjednoczonych, które odbudowują się po wymieraniu spowodowanym przez rój zbuntowanych robotów. Gracz może eksplorować otwarty świat i wykonywać zadania, używając broni dystansowej i białej przeciwko wrogim maszynowym stworzeniom.', 'ec267200-1065-4e57-975f-ba405d4c46f7.png'),
('2b6cf5ab-f8b1-4130-aab0-5c3f85663820', 'Grounded', 'ed964a26-49fe-467b-ac96-6071efe90d6b', '2022-09-27 00:00:00.000', 'Grounded to gra action-adventure stawiająca nacisk na survival. Podczas zmagań wydarzenia możemy obserwować z perspektywy pierwszej lub trzeciej osoby. Nasze zadanie sprowadza się w pierwszej kolejności do przeżycia. Funkcjonujące w przydomowym ogródku, próbujemy radzić sobie z rozmaitymi niebezpieczeństwami.', '3120f53c-caeb-48d9-851e-dc72842957d0.webp'),
('38befb35-c384-4330-b4a0-ca20d65f88ec', 'Minecraft Dungeons', 'bc5660ca-dbea-40eb-a13a-622e13b859bf', '2020-05-20 00:00:00.000', 'Minecraft Dungeons to opracowana przez Mojang AB przygodowa gra akcji będąca spin-offem kultowego Minecrafta. Tytuł osadzony został w realiach fantasy. W czasie zabawy musisz zmierzyć się ze złoczyńcą znanym jako Arch-Illager i jego armia potworów, którzy chcę zniszczyć Twoją wioskę.', '48fc96f7-ffc5-404f-973b-6507cabab3bc.png'),
('3b7c47d2-3e38-4755-9d39-da1f2d7eec38', 'Uncharted 4', 'e55ef349-f01e-48ff-8c6b-0e7b690e6d24', '2016-05-10 00:00:00.000', 'Akcja gry rozgrywa się trzy lata po wydarzeniach z poprzedniej odsłony serii – Uncharted 3: Oszustwo Drake\'a. Gracz ponownie wcieli się w poszukiwacza przygód, Nathana Drake\'a, który porzucił swój dotychczasowy styl życia, aby móc wieść spokojne życie ze swoją żoną, Eleną.', 'ddea8119-684e-4c20-b6ad-3bbae7ec4daf.png'),
('41d3e71d-ef86-45fc-8670-c09c7a4b61f2', 'Halo Infinite', 'c3bcc8f5-30cc-43bb-8bb3-626728188e3e', '2021-11-15 00:00:00.000', 'Halo Infinite to kolejna część znanej serii strzelanek. Gracze ponownie wcielą się w postać Master Chiefa z elitarnego oddziału Spartan, który musi powstać przeciwko tyranii frakcji Banished i znaleźć sposób, by ponownie uratować ludzkość.', '4479ac04-09bc-41cc-9176-5bbecd8b69ec.png'),
('46e51a16-9426-4198-9664-f67de8c732ae', 'Forza Motorsport 7', '91fdd6dc-e71f-41ce-961f-d8f329c967e7', '2017-10-03 00:00:00.000', 'Siódma pełnoprawna odsłona bestsellerowego cyklu gier wyścigowych, rozwijanego we współpracy Turn 10 Studios z firmą Microsoft.', 'f3c8dff4-828a-4703-acc1-6bd046dea68e.webp'),
('54af206d-f0e0-4ae8-ba32-221c4dc3230d', 'Gears Ractics', 'bef12e96-6e93-4f62-b9e3-84f17313904c', '2020-04-28 00:00:00.000', 'Gears Tactics to pierwsza gra z uniwersum Gears of War zmieniająca formę na bardziej strategiczną oraz taktyczną. Gra została obdarta z większości zarządzania znanego z XCOM, by bardziej skupić się na innych elementach. Przez to może powodować pewne problemy w zrozumieniu.', '1bc4278d-a1d9-4561-ad60-e33d5ecb851f.webp'),
('54e43a84-56fd-4380-ae63-ae371412df82', 'Demon\'s Souls', '6493a8f8-d969-4f14-b103-8fee930d7e44', '2020-11-12 00:00:00.000', 'Demon\'s Souls to gra RPG akcji opracowana przez Bluepoint Games i wydana przez Sony Interactive Entertainment na PlayStation 5. Gra została wydana jako tytuł startowy na PlayStation 5 w listopadzie 2020 roku. Jest to remake Demon\'s Souls, pierwotnie opracowany przez FromSoftware na PlayStation 3 w 2009 roku.', '12ec9223-9675-4631-95d3-1c4ab03b56a6.png'),
('60b1154f-3a27-443a-bfca-debbc0ae394a', 'Returnal ', 'acdc1521-5065-4d91-a828-58afffcf11e8', '2021-04-30 00:00:00.000', 'Returnal to gra akcji od studia Housemarque, w której wcielamy się w postać astronautki przeżywającej po wielokroć rozbicie swojego statku na nieznanej planecie. Gracz ma za zadanie odkryć tajemnice tego świata i wyrwać się z pętli czasu.', '833cd42d-e60d-48e1-9040-7499bd1a0527.png'),
('6230cf24-cf66-4ce5-ba4b-9db2556b2311', 'Forza Horizon 4', '8129e7f1-c601-406b-b79b-1053da0d139e', '2018-09-28 00:00:00.000', 'Forza Horizon 4 oddaje do dyspozycji gracza rozległy otwarty świat zawierający wirtualne reprezentacje Edynburga, Lake District, Cotswolds oraz innych miejsc. Produkcja oferuje ponad 700 licencjonowanych samochodów do wyboru. Do użytku gracza został też oddany kreator własnych tras wyścigowych.', '6541405b-a2be-4b2c-998a-809445e91dfc.png'),
('63a09889-b8da-4417-b008-b3bede19bf7b', 'Forza Motosport', '91fdd6dc-e71f-41ce-961f-d8f329c967e7', '2023-05-09 00:00:00.000', 'Ósma część kultowej serii gier wyścigowych, pomyślana jako jej swoisty restart. Forza Motorsport jest dziełem zespołu Turn 10 Studios i powstała niemal w całości od podstaw. Tytuł może się pochwalić nowymi torami i samochodami, dopracowaną fizyką oraz m.in. obsługą ray tracingu.', 'bc5bb92d-d381-4b19-a25a-f026e75ea373.png'),
('644ecff6-802c-43fc-9d6b-d3d98b34ebb5', 'God Of War', '45189c11-89dd-482d-a838-6bd837697aca', '2018-04-20 00:00:00.000', 'Gra opowiada historię Kratosa, dawniej spartańskiego wojownika, który jest teraz na usługach bogów. Bogowie chcą użyć Kratosa dla swoich potrzeb. Grecki bóg wojny, Ares, siał w Atenach spustoszenie i zamęt. Wypuścił na całą Grecję hordy wściekłych zombie i innych potworów.', 'f21d2218-ee78-49f9-8785-eaddcb8c8026.png'),
('6673bc23-06a2-4cb1-9285-41d057f6bd1f', 'Psychonauts 2 ', '501e48be-24b0-4d33-8f95-955a964ce0b4', '2021-08-25 00:00:00.000', 'Psychonauts 2 to klasyczna gra platformowa, w której wydarzenia obserwowane są zza pleców bohatera. Jej głównym założeniem jest eksplorowanie obszernego świata, unikanie licznych pułapek i przeszkód oraz walka z niezwykłymi przeciwnikami.', '81002cc1-c1da-4457-a981-4583b1cd778d.png'),
('78aa0ad0-662e-4cd6-af75-1b2becb0375b', 'Halo Wars 2', 'c3bcc8f5-30cc-43bb-8bb3-626728188e3e', '2017-02-21 00:00:00.000', 'Halo Wars 2 to kontynuacja gry strategicznej, która ukazała się w 2009 roku na konsoli Xbox 360. Za pierwszą część serii odpowiada nieistniejący już zespół Ensemble Studios, który wcześniej zasłynął przede wszystkim cyklem Age of Empires, chociaż na swoim koncie miał także grę Star Wars: Galactic Battlegrounds. Dwójka została wyprodukowana przez dwie ekipy - 343 Industries  oraz zespół Creative Assembly.', '61ddc36b-db3e-4017-858b-1a539568e90b.png'),
('7bc57910-1fba-4403-8465-583dc527446a', 'We Happy Few', 'e5a96e73-8a56-4170-bf8c-a3b3a6c97d45', '2017-07-26 00:00:00.000', 'We Happy Few to osadzona w napędzanym narkotykami retrofuturystycznym angielskim mieście w latach 60. przygodowa gra akcji. Aby stawić czoła ogarniętej obsesją narkotyku Joy społeczności, możesz się ukrywać, walczyć lub próbować się dostosować.', '5863a557-cc91-4644-b793-cdcba5f11c2e.jpeg'),
('8b9a61e0-d67c-4788-9303-504da049672f', 'State of Decay 2', 'a7921c48-b6b9-4f69-8c6b-a89b8b9934da', '2018-05-18 00:00:00.000', 'Fabuła. State of Decay 2 przenosi nas do świata po apokalipsie zombie, mniej więcej półtora roku po wydarzeniach z pierwszej części. Na gruzach dotychczasowej cywilizacji nieliczni ocalali prowadzą codzienną walkę o przetrwanie, jednocześnie poszukując bezpiecznego schronienia przed atakami hord nieumarłych.', 'e6c13c31-fc93-47ea-9fd6-2bfd2e1a3ddb.png'),
('8d7ec9d5-bf57-42ae-834d-1428afacac22', 'Battletoads ', 'b890adc2-5c44-4cb9-ab77-d11a1b9de688', '2020-08-20 00:00:00.000', 'Battletoads to chodzona bijatyka wyprodukowana przez Rare i wydana przez Microsoft na konsolę Xbox One oraz komputery osobiste. Tytuł był rebootem serii Battletoads, której korzenie sięgają czasów NES-a.', '19319a3f-d086-4a32-ae15-de1a084f09b7.png'),
('96839c81-b291-441e-acc6-d235f578427b', 'The Outer Worlds', 'ed964a26-49fe-467b-ac96-6071efe90d6b', '2019-10-25 00:00:00.000', 'Pierwszoosobowa gra RPG stworzona przez studio Obsidian Entertainment. The Outer Worlds przedstawia retrofuturystyczną wizję przyszłości, a rozgrywa się w kontrolowanej przez korporacje kolonii Arkadia, będącej najdalej wysuniętą ziemską placówką.', 'c1e0a008-ef34-4508-9434-0909f4cef11d.png'),
('991f6a28-396c-465d-a30a-7c5eb1c0308f', 'The Last of Us Part I ', 'e55ef349-f01e-48ff-8c6b-0e7b690e6d24', '2022-09-02 00:00:00.000', 'The Last of Us Part I to przygodowa gra akcji z 2022 roku opracowana przez Naughty Dog i wydana przez Sony Interactive Entertainment. Remake gry The Last of Us z 2013 roku, zawiera poprawioną rozgrywkę, w tym ulepszoną walkę i eksplorację oraz rozszerzone opcje dostępności. Historia dla jednego gracza podąża za Joelem, który ma za zadanie eskortować młodą Ellie przez postapokaliptyczne Stany Zjednoczone i bronić się przed kanibalistycznymi stworzeniami zarażonymi zmutowanym szczepem grzyba Cordyceps.', '6e41b3e8-2031-44d9-9fca-0a0a45ac200d.webp'),
('a62fc7e5-788d-4045-86a6-b32d974b81a2', 'Gran Turismo 7', 'b682b16d-ef9a-46fe-ad35-a0772030c13a', '2022-03-04 00:00:00.000', 'Gran Turismo 7 pozwala na zabawę w pojedynkę w rozbudowanym trybie kariery oraz w tzw. Rajdach muzycznych. Tytuł umożliwia także branie udziału w sieciowych wyścigach z innymi użytkownikami – przede wszystkim w trybie Sport (przeniesionym z poprzedniej odsłony cyklu), który ma na poły profesjonalny charakter.', '2214c195-6815-4d0d-a1ea-b91767a44c4f.png'),
('af5a61ea-cd5e-42ba-a213-5307991fc4f9', 'Gears of War 4', 'bef12e96-6e93-4f62-b9e3-84f17313904c', '2016-10-11 00:00:00.000', 'Czwarta pełnoprawna odsłona kultowej serii futurystycznych strzelanin TPP. Za produkcję tytułu odpowiada studio The Coalition, założone przez wieloletniego producenta serii, Roda Fergussona.', 'b6876fae-5c80-4f5b-8dab-88710a530661.jpeg'),
('bfa18ec2-2f20-4426-b313-931e8c0b8674', 'Horizon Zero Dawn', 'e289bd19-0785-42a9-affb-b4724943337c', '2017-02-28 00:00:00.000', 'Horizon Zero Dawn to fabularna gra akcji przedstawiona z perspektywy trzeciej osoby, umieszczona w otwartym świecie. Gracz wciela się w Aloy, która przemierza świat należący do mechanicznych zwierząt, zwanych „Maszynami”. Aloy, podczas potyczek z przeciwnikami, używa wielu rodzajów broni i amunicji.', 'ec5e3844-c4ee-4fdb-a579-00add38b2a46.png'),
('bfbbcfa8-9ebb-4699-85c8-35a88bdbab47', 'Marvel\'s Spider-Man', 'b90c93da-0be4-4915-b97c-d9bd9c748737', '2018-09-07 00:00:00.000', 'Marvel\'s Spider-Man to seria przygodowych gier akcji opracowana przez Insomniac Games i wydana przez Sony Interactive Entertainment na konsole PlayStation. Oparte na postaciach pojawiających się w wydawnictwach Marvel Comics, gry inspirowane są wieloletnią tradycją komiksową, a dodatkowo wywodzą się z różnych adaptacji w innych mediach. ', 'a7a96992-4d93-403e-969b-0154fc3e0b8c.png'),
('c14e0f0a-4387-4d4b-ba94-ad02848a23bf', 'Days Gone', '6e8d2fff-1155-4f58-8410-d97c516384c3', '2019-04-26 00:00:00.000', 'Days Gone to trzecioosobawa gra akcji osadzona w postapokaliptycznym świecie. Zadaniem gracza jest wcielenie się w byłego członka gangu motocyklowego, Deacona St. Johna. W jego skórę przyjdzie nam wcielić się niecałe dwa lata po wybuchu wirusa.', 'd96ddd02-0385-4404-8c2b-51e39cfe42ec.jpeg'),
('c19b7855-07b8-4cb1-977b-f490a29fbe60', 'The Last of Us: Part II', 'e55ef349-f01e-48ff-8c6b-0e7b690e6d24', '2020-06-19 00:00:00.000', 'The Last of Us: Part II to przygodowa gra akcji będącą kontynuacją przeboju z 2013 roku. Tytuł przenosi nas do zniszczonego przez zabójczą epidemię, postapokaliptycznego świata, w którym przetrwanie wymaga wielu poświęceń. Produkcja została opracowana przez znane studio Naughty Dog.', '410347c8-bb92-4ee1-b040-fb6dc0d2981f.png'),
('d3af2f04-59c4-4846-b6e0-1127d05a7627', 'Rare Replay', 'b890adc2-5c44-4cb9-ab77-d11a1b9de688', '2015-08-04 00:00:00.000', 'Rare Replay - opis gry. Rare Replay to składanka zawierająca trzydzieści gier wyprodukowanych przez brytyjskie studio Rare na przestrzeni blisko trzech dekad. Za jej wydanie odpowiadał Microsoft. Kompilacja ukazała się tylko na Xboxie One.', '6aa651d4-5dac-4e28-aeb2-18263c128a04.webp'),
('d89ad260-f5c6-41a5-af02-f6f071a2642b', 'Sea of Thieves', 'b890adc2-5c44-4cb9-ab77-d11a1b9de688', '2018-03-20 00:00:00.000', 'Sea of Thieves to sieciowa, przygodowa gra akcji w pirackich klimatach. Grę tworzy studio Rare. W Sea of Thieves akcję obserwujemy z perspektywy pierwszej osoby, a w samej grze nie brakuje typowo pirackich atrybutów: od graczy wyposażonych w pistolety i szable, aż po pirackie statki taranujące statki innych graczy.', 'ccda5a4b-55aa-4021-b7fe-f0a3c4c8a84a.png'),
('d974c9af-ef86-4b5a-bf32-de704da06677', 'Forza Motosport 5', '91fdd6dc-e71f-41ce-961f-d8f329c967e7', '2013-11-22 00:00:00.000', 'Forza Motorsport 5. Piąta odsłona popularnego cyklu symulacji wyścigów samochodowych. Tytuł wyprodukowany został przez należące do koncernu Microsoft studio Turn 10. Podobnie jak wcześniejsze gry z serii, Forza Motorsport 5 pozwala graczom spróbować swoich sił za kierownicą superszybkich samochodów.', '66a2f3d1-f539-4a12-a394-338d7069a348.png'),
('dea44ce0-a0e5-4232-b49b-cc45a9d3926b', ' Uncharted: The Nathan Drake Collection ', 'e55ef349-f01e-48ff-8c6b-0e7b690e6d24', '2015-10-07 00:00:00.000', 'W skład kolekcji wchodzą trzy przygodowe gry akcji – Uncharted: Drake\'s Fortune z 2007 roku, wydane dwa lata później Uncharted 2: Among Thieves oraz debiutujące w 2011 r. Uncharted 3: Drake\'s Deception.', '6f9a04b8-2100-42ce-8a74-f5330d760e83.jpeg'),
('e71307d0-8ba3-4b4c-a0ce-251fb5afdaf2', 'God Of War Ragnarok ', '45189c11-89dd-482d-a838-6bd837697aca', '2022-11-09 00:00:00.000', 'God of War Ragnarök to nadchodząca przygodowa gra akcji opracowana przez Santa Monica Studio i wydana przez Sony Interactive Entertainment. Jego światowa premiera zaplanowana jest na 9 listopada 2022 roku na PlayStation 4 i PlayStation 5, co oznacza pierwsze wydanie międzygenowe w serii. Będzie to dziewiąta odsłona serii God of War, dziewiąta chronologicznie i kontynuacja God of War z 2018 roku. Luźno oparta na mitologii nordyckiej gra osadzona zostanie w starożytnej Skandynawii, a główny bohater serialu Kratos i jego nastoletni syn Atreus. Będąc finałem nordyckiej ery serii, gra obejmie Ragnarök, serię wydarzeń, które przynoszą koniec dni i przedstawiają śmierć niektórych nordyckich bogów.', '4aac5989-63fa-4545-8f2c-7392898fc456.webp'),
('ec9d78e1-c988-4952-bdc6-104c889d0c71', 'Hellblade: Senua’s Sacrifice', '54b595b9-108b-4935-8b6f-80e7b6b6f10f', '2017-08-08 00:00:00.000', 'Hellblade: Senua’s Sacrifice to gra akcji wyprodukowana i wydana przez brytyjskie studio Ninja Theory. Tytuł ukazał się na komputerach oraz na PlayStation 4 i Xboksie One. Twórcy określali go jako “niezależną grę AAA”.', 'b2507963-12a9-49ec-a70b-23cdf30223e6.png'),
('f5d8c507-9ec2-4386-8a11-f1c5baea2142', 'Forza Motorsport 6', '91fdd6dc-e71f-41ce-961f-d8f329c967e7', '2015-09-15 00:00:00.000', 'Tryb dla pojedynczego gracza w Forza Motorsport 6 zabiera nas w podróż przez historię motosportu w postaci pięciu kolejnych tomów. Ich historyczność jest trochę umowna, bo już w pierwszym z nich możemy jeździć najnowszymi autami, a równie dobrze w trzecim wybrać sobie Mustanga z lat 70-tych', '56c0e6a4-88ba-4b19-9e84-073eba9b5689.png'),
('f8d55155-ecd2-4a4d-bb95-c67baf1b8e23', 'Pillars of Eternity II: Deadfire', 'ed964a26-49fe-467b-ac96-6071efe90d6b', '2018-05-08 00:00:00.000', 'Pillars of Eternity 2: Deadfire to gra RPG wyprodukowana przez studio Obsidian Entertainment i wydana przez Versus Evil. Tytuł ukazał się w pierwszej kolejności na komputerach, a później trafił też na konsole PlayStation 4, Xbox One i Nintendo Switch', 'ad588042-81e8-42d8-978b-163be76a71da.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gameonplatform`
--

CREATE TABLE `gameonplatform` (
  `gameId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platformId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `gameonplatform`
--

INSERT INTO `gameonplatform` (`gameId`, `platformId`) VALUES
('016ae04f-5c61-40da-b124-4f9bdf389c3c', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('016ae04f-5c61-40da-b124-4f9bdf389c3c', '61e4fd0d-aec9-49e7-89f0-28affe7cac45'),
('0aab38d8-4021-4e5d-aa3c-057d4eaae758', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('11686130-4a68-4560-86e7-90d48eeed6ef', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('13b3afed-5da8-4f70-b4b4-5dd77b5925e7', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('15a80ea1-7dd6-40c2-8e3d-d56f01a3cc7a', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('15a80ea1-7dd6-40c2-8e3d-d56f01a3cc7a', '61e4fd0d-aec9-49e7-89f0-28affe7cac45'),
('180bb194-3691-4cb1-8fec-4b3e1c7e6e66', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('21d0ca4d-f3e8-41b9-bb95-47af720824a1', 'eb1ddd62-7836-4980-9548-e265dc968db2'),
('26c7e351-8182-4c26-b102-56fa6e0f0784', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('27fcb720-ed32-429e-a5ea-dcabeeafc39c', 'a0a82644-7325-4c5c-9b35-66619853088b'),
('27fcb720-ed32-429e-a5ea-dcabeeafc39c', 'eb1ddd62-7836-4980-9548-e265dc968db2'),
('2b6cf5ab-f8b1-4130-aab0-5c3f85663820', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('2b6cf5ab-f8b1-4130-aab0-5c3f85663820', '61e4fd0d-aec9-49e7-89f0-28affe7cac45'),
('38befb35-c384-4330-b4a0-ca20d65f88ec', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('3b7c47d2-3e38-4755-9d39-da1f2d7eec38', 'eb1ddd62-7836-4980-9548-e265dc968db2'),
('41d3e71d-ef86-45fc-8670-c09c7a4b61f2', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('41d3e71d-ef86-45fc-8670-c09c7a4b61f2', '61e4fd0d-aec9-49e7-89f0-28affe7cac45'),
('46e51a16-9426-4198-9664-f67de8c732ae', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('54af206d-f0e0-4ae8-ba32-221c4dc3230d', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('54e43a84-56fd-4380-ae63-ae371412df82', 'a0a82644-7325-4c5c-9b35-66619853088b'),
('60b1154f-3a27-443a-bfca-debbc0ae394a', 'a0a82644-7325-4c5c-9b35-66619853088b'),
('6230cf24-cf66-4ce5-ba4b-9db2556b2311', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('63a09889-b8da-4417-b008-b3bede19bf7b', '61e4fd0d-aec9-49e7-89f0-28affe7cac45'),
('644ecff6-802c-43fc-9d6b-d3d98b34ebb5', 'eb1ddd62-7836-4980-9548-e265dc968db2'),
('6673bc23-06a2-4cb1-9285-41d057f6bd1f', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('6673bc23-06a2-4cb1-9285-41d057f6bd1f', '61e4fd0d-aec9-49e7-89f0-28affe7cac45'),
('6673bc23-06a2-4cb1-9285-41d057f6bd1f', 'eb1ddd62-7836-4980-9548-e265dc968db2'),
('78aa0ad0-662e-4cd6-af75-1b2becb0375b', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('7bc57910-1fba-4403-8465-583dc527446a', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('7bc57910-1fba-4403-8465-583dc527446a', 'eb1ddd62-7836-4980-9548-e265dc968db2'),
('8b9a61e0-d67c-4788-9303-504da049672f', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('8d7ec9d5-bf57-42ae-834d-1428afacac22', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('96839c81-b291-441e-acc6-d235f578427b', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('96839c81-b291-441e-acc6-d235f578427b', 'eb1ddd62-7836-4980-9548-e265dc968db2'),
('991f6a28-396c-465d-a30a-7c5eb1c0308f', 'a0a82644-7325-4c5c-9b35-66619853088b'),
('a62fc7e5-788d-4045-86a6-b32d974b81a2', 'a0a82644-7325-4c5c-9b35-66619853088b'),
('a62fc7e5-788d-4045-86a6-b32d974b81a2', 'eb1ddd62-7836-4980-9548-e265dc968db2'),
('af5a61ea-cd5e-42ba-a213-5307991fc4f9', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('bfa18ec2-2f20-4426-b313-931e8c0b8674', 'eb1ddd62-7836-4980-9548-e265dc968db2'),
('bfbbcfa8-9ebb-4699-85c8-35a88bdbab47', 'eb1ddd62-7836-4980-9548-e265dc968db2'),
('c14e0f0a-4387-4d4b-ba94-ad02848a23bf', 'eb1ddd62-7836-4980-9548-e265dc968db2'),
('c19b7855-07b8-4cb1-977b-f490a29fbe60', 'eb1ddd62-7836-4980-9548-e265dc968db2'),
('d3af2f04-59c4-4846-b6e0-1127d05a7627', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('d89ad260-f5c6-41a5-af02-f6f071a2642b', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('d974c9af-ef86-4b5a-bf32-de704da06677', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('dea44ce0-a0e5-4232-b49b-cc45a9d3926b', 'eb1ddd62-7836-4980-9548-e265dc968db2'),
('e71307d0-8ba3-4b4c-a0ce-251fb5afdaf2', 'a0a82644-7325-4c5c-9b35-66619853088b'),
('e71307d0-8ba3-4b4c-a0ce-251fb5afdaf2', 'eb1ddd62-7836-4980-9548-e265dc968db2'),
('ec9d78e1-c988-4952-bdc6-104c889d0c71', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('ec9d78e1-c988-4952-bdc6-104c889d0c71', 'eb1ddd62-7836-4980-9548-e265dc968db2'),
('f5d8c507-9ec2-4386-8a11-f1c5baea2142', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('f8d55155-ecd2-4a4d-bb95-c67baf1b8e23', '2d46e2ed-a50a-4169-bd28-cb881a155a39'),
('f8d55155-ecd2-4a4d-bb95-c67baf1b8e23', 'eb1ddd62-7836-4980-9548-e265dc968db2');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `platform`
--

CREATE TABLE `platform` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `platform`
--

INSERT INTO `platform` (`id`, `name`, `description`) VALUES
('2d46e2ed-a50a-4169-bd28-cb881a155a39', 'Xbox One', 'Opis'),
('61e4fd0d-aec9-49e7-89f0-28affe7cac45', 'Xbox Series X/S', 'Opis'),
('a0a82644-7325-4c5c-9b35-66619853088b', 'Playstation 5', 'Opis'),
('eb1ddd62-7836-4980-9548-e265dc968db2', 'Playstation 4', 'Opis');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `publisher`
--

CREATE TABLE `publisher` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `publisher`
--

INSERT INTO `publisher` (`id`, `name`, `description`) VALUES
('bd702b05-d471-4732-81c0-35f96c32d5dd', 'Xbox ', 'Xbox to odział firmy Microsoft zajmujący się produkcją gier wideo, odpowiedzialny za rozwój i wydawanie gier na platformy takie jak Xbox, Xbox 360, Xbox One, Xbox Series S/X Steam i Windows Store.'),
('f480f5af-c1e4-498b-9b4f-4f7d025bbf7b', 'playstation', 'PlayStation odpowiada za powstanie wyjątkowych i wciągających gier firmy Sony Interactive Entertainment, w tym niektóre z najpopularniejszych i cieszących się uznaniem krytyków tytułów w historii rozrywki.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `studio`
--

CREATE TABLE `studio` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ownerId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `founded` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employees` int(11) NOT NULL,
  `description` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `studio`
--

INSERT INTO `studio` (`id`, `name`, `ownerId`, `country`, `founded`, `employees`, `description`, `image`) VALUES
('0594e549-cd86-4199-982e-8b0f5e4a480b', 'Arkane Studios ', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Francja', '1999', 300, 'Arkane Studios – z biurami w Lyonie we Francji i Austin w Teksasie – zostało założone w 1999 roku i zyskało godną pozazdroszczenia reputację dzięki tworzeniu wyróżniających się gier ze szczegółowymi, wciągającymi światami. Wielokrotnie nagradzany zespół programistów znany jest z innowacyjnej serii akcji z perspektywy pierwszej osoby, Dishonored, która obejmuje tytuł „Gry roku 2012” oraz docenioną przez krytyków kontynuację Dishonored 2. Po premierze w listopadzie 2016 roku Dishonored 2 zdobył ponad 100 nagród „Best of 2016 Awards”, w tym „Najlepsza przygodowa gra akcji” podczas The Game Awards 2016. Arkane Studios zostało założone w 1999 roku przez Raphaela Colantonio.\r\n\r\n', '4cbd033d-9ff4-4e68-9ff6-51d0ae5bc654.png'),
('0cb0c875-a819-4160-8071-d739ee5faf07', 'Alpha Dog Games', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Kanada', '2012', 50, 'Alpha Dog to butikowe studio gier tworzące najwyższej klasy gry 3D na urządzenia mobilne, komputery PC i konsole. Nasza pierwsza gra „Wraithborne” zdobyła międzynarodowe uznanie krytyków jesienią 2012 roku za grafikę i rozgrywkę o jakości konsolowej. Nasza druga gra, MonstroCity: Rampage (Action-Strategy), została wydana wiosną 2017 roku i była stale prezentowana w sklepach z aplikacjami Apple i Google na całym świecie.', '91c76617-6777-42dc-90ce-c6212e1dac83.png'),
('1f6105ec-9f0e-46f2-8bc1-247d3a0336bb', 'San Diego Studio', 'f480f5af-c1e4-498b-9b4f-4f7d025bbf7b', 'Stany Zjednoczone', '2001', 50, 'San Diego Studio to amerykański producent gier wideo z siedzibą w Sorrento Valley w San Diego. Własne studio Sony Interactive Entertainment, które odpowiada za gry MLB: The Show. Studio opracowało także serię NBA, The Mark of Kri, Pain, High Velocity Bowling i Sports Champions', 'a74dcf71-0166-4098-a44e-b4a74f4d8cda.png'),
('2abd4f90-119d-4a35-9fae-3d2ee5f3ef46', 'Sucker Punch Productions', 'f480f5af-c1e4-498b-9b4f-4f7d025bbf7b', 'Stany Zjednoczone', '1997', 150, 'Sucker Punch Productions to amerykańska firma produkująca gry na konsole. Założona w 1997 z siedzibą w Bellevue w stanie Waszyngton. Od 2011 roku jest częścią SCE Worldwide Studios.', '816f7ceb-6247-4d07-b9e6-4892dd69197f.png'),
('3d93f055-8f31-4830-b640-bde11e817591', 'Media Molecule', 'f480f5af-c1e4-498b-9b4f-4f7d025bbf7b', 'Wielka Brytania', '2006', 50, 'Media Molecule Ltd. to brytyjski producent gier wideo z siedzibą w Guildford, Surrey. Firma Sony Computer Entertainment, założona w 2006 roku przez Marka Healeya, Alexa Evansa, Davida Smitha i Kareema Ettouneya, przejęła firmę w 2010 roku. Stała się częścią SCE Worldwide Studios (obecnie PlayStation Studios). Firma jest najbardziej znana z tworzenia serii LittleBigPlanet, Tearaway z 2013 roku i Dreams z 2020 roku na konsole PlayStation.', 'ce456d0e-eb22-41b0-b223-1f0547e8c6e5.png'),
('423261e1-f852-4c35-9047-075c54bd218e', 'Nixxes ', 'f480f5af-c1e4-498b-9b4f-4f7d025bbf7b', 'Holandia', '1999', 50, 'Nixxes Software B.V. to holenderski producent gier wideo z siedzibą w World Trade Center w Utrechcie. Została założona przez byłego dewelopera demosceny Jurjena Katsmana w 1999 roku, aby przenieść grę Legacy of Kain: Soul Reaver na Dreamcast.', '407bf996-983f-4ba3-8e3b-2171cdc60474.jpeg'),
('45189c11-89dd-482d-a838-6bd837697aca', 'Santa Monica Studio', 'f480f5af-c1e4-498b-9b4f-4f7d025bbf7b', 'Stany Zjednoczone', '1999', 250, 'Santa Monica Studio to amerykański producent gier wideo z siedzibą w Los Angeles. Własne studio Sony Interactive Entertainment, które jest najbardziej znane z tworzenia serii God of War. Studio zostało założone w 1999 roku przez Allana Beckera i znajdowało się w Santa Monica w Kalifornii, aż do przeniesienia do Playa Vista w 2014 roku.', '5e05e5e5-55f5-4bc4-a6e8-0c754aea8041.png'),
('501e48be-24b0-4d33-8f95-955a964ce0b4', 'Double Fine', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Stany Zjednoczone', '2000', 70, 'Założone w 2002 roku przez byłych deweloperów LucasArts kierowane przez Tima Schafera, Double Fine Productions to studio funkcjonujące jako mistrzowska klasa w unikalnych, ciekawych grach skupiających się na zabawie przede wszystkim, mimo że są naprawdę dobrzy w innych rzeczach. W ich repertuarze znajdują się takie tytuły jak Psychonauts , Massive Chalice , a także uwielbiane Grim Fandango Remastered – samo w sobie współczesne wykonanie projektu Tima Schafera stworzonego jeszcze w czasach LucasArts.', '2943ed94-e6a8-46ec-9304-8de9e97862be.png'),
('54b595b9-108b-4935-8b6f-80e7b6b6f10f', 'Ninja Theory', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Wielka Brytania', '2004', 120, 'Firma Ninja Theory Ltd. została założona w 2004 roku przez czterech partnerów, w tym obecnych dyrektorów Ninę Kristensen (dyrektor główny ds. rozwoju), Tameem Antoniades (dyrektor główny kreatywny) i Jez San OBE (dyrektor niewykonawczy). Studio szczyci się dążeniem do najwyższych wartości produkcyjnych i nieustannym przesuwaniem granic technologii, sztuki i projektowania, aby tworzyć coraz bardziej ekscytujące wrażenia z gier wideo. Ninja Theory jest dumna ze współpracy z długą listą współpracowników z branż kreatywnych spoza branży gier wideo, w tym Andy Serkis (Władca Pierścieni, King Kong, Hobbit), Alex Garland (The Beach, 28 dni później), Nitin Sawhney (Ludzka planeta BBC), Noisia (Split the Atom) i Combichrist (Tworzenie potworów). Oprócz współpracy z talentami ze świata muzyki, literatury i filmu, Ninja Theory zapoczątkowało wykorzystanie Performance Capture w grach wideo.', '2e14bd8a-abbf-4821-9366-f2934b13247f.png'),
('6493a8f8-d969-4f14-b103-8fee930d7e44', 'Bluepoint Games', 'f480f5af-c1e4-498b-9b4f-4f7d025bbf7b', 'Stany Zjednoczone', '2006', 70, 'Studio deweloperskie z siedzibą w Austin w stanie Teksas. Firma została założona w 2006 roku, a w trakcie kilkunastu lat swojej działalności zapracowała sobie na miano specjalistów od konwersji, remasterów i remake’ów. Studio zajmuje się odświeżaniem i portowaniem produkcji przeznaczonych na handheldy i konsole stacjonarne. Od 30 września 2021 roku Bluepoint Games oficjalnie znajduje się pod skrzydłami firmy Sony i należy do PlayStation Studios.\r\nŹródło: https://www.gry-online.pl/firma.asp?ID=2629', '299f53d8-e801-4876-bc1c-b93df2bc8486.png'),
('6e8d2fff-1155-4f58-8410-d97c516384c3', 'Bend Studio', 'f480f5af-c1e4-498b-9b4f-4f7d025bbf7b', 'Stany Zjednoczone', '1994', 130, 'Bend Studio – amerykański producent gier komputerowych z siedzibą w Bend w stanie Oregon. Firma została założona w 1994 pod nazwą Eidetic i została zakupiona przez Sony Computer Entertainment America w 2000 roku. Jedną z najbardziej znanych serii wyprodukowanych przez studio jest Syphon Filter.', 'cd3b24f3-e8fd-4be0-a49d-62c1dc045de7.png'),
('8129e7f1-c601-406b-b79b-1053da0d139e', 'Playground Games', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Wielka Brytania', '2009', 300, 'Playground Games powstało w 2010 roku, zrzeszając najbardziej doświadczonych i utalentowanych programistów z branży brytyjskiej, z wizją tworzenia definiujących gatunek tytułów dla globalnej publiczności. Od tego czasu stworzyliśmy cztery chwalone przez krytyków, nagradzane hity; nasze gry Horizon zdobyły ponad sto nagród i były grane przez miliony fanów. Dziś Playground ma dwa światowej klasy studia w Leamington Spa. W naszej pierwotnej siedzibie nadal wspieramy i rozwijamy ogromną, tętniącą życiem społeczność Horizon. W naszym nowym studiu po drugiej stronie miasta cieszymy się, że możemy tworzyć Fable, nowy początek legendarnej serii.', 'fcc46882-e67d-4af5-8eaf-b82b7e906ff8.png'),
('877d77d3-6c40-4329-bc1e-83240d51e30b', 'PixelOpus', 'f480f5af-c1e4-498b-9b4f-4f7d025bbf7b', 'Stany Zjednoczone', '2014', 15, 'Pixelopus to amerykański producent gier wideo z siedzibą w San Mateo w Kalifornii, założony w 2014 roku jako wewnętrzne studio Sony Interactive Entertainment. Studio pracowało nad grami, w tym Entwined. Ich druga gra Concrete Genie została ogłoszona 30 października 2017 r. i wydana 8 października 2019 r.', 'e6f1121f-43f8-4d4e-8648-59af8249a3a4.webp'),
('8c1110e8-d132-445e-b201-cbc424b24438', 'inXile Entertainment', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Stany Zjednoczone', '2002', 100, 'inXile entertainment to Xbox Game Studio tworzące konsole i tytuły na PC, z lokalizacjami w Południowej Kalifornii i Nowym Orleanie. Założona i kierowana przez Briana Fargo od 2003 roku, inXile nieustannie dostarcza innowacyjne i wysokiej jakości doświadczenia naszej pasjonującej i oddanej grupie fanów. Do każdego z naszych tytułów wnosimy naszą miłość do gier RPG, głębokich i wciągających historii oraz taktycznego myślenia.', 'ae251fc6-dccd-470c-838d-3e34187538c1.png'),
('91fdd6dc-e71f-41ce-961f-d8f329c967e7', 'Turn 10', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Stany zjednoczone', '2001', 150, 'Mieszczące się w Redmond w stanie Waszyngton Turn 10 Studios jest twórcą serii Forza i twórcą serii gier Forza Motorsport. W Turn 10 naszym celem jest tworzenie wspaniałych gier wyścigowych, które reprezentują pasję i różnorodność naszego studia i naszej społeczności na całym świecie.\r\n\r\n', '56c274c1-846d-4e88-b54d-bb5b88df6336.png'),
('9834dbd2-bc3d-4b85-a449-6e97214448ce', 'Valkyrie Entertainment ', 'f480f5af-c1e4-498b-9b4f-4f7d025bbf7b', 'Stany Zjednoczone', '2002', 50, 'Valkyrie Entertainment to studio zajmujące się tworzeniem gier wideo z siedzibą w Seattle. Od 2002 roku współpracują ze światowej klasy twórcami i wydawcami gier i są dumnym członkiem PlayStation Studios.', '3ee1de75-0cbf-4cd2-9479-b140024b84ab.webp'),
('a7921c48-b6b9-4f69-8c6b-a89b8b9934da', 'Undead Labs', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Stany Zjednoczone', '2009', 100, 'Undead Labs to studio zajmujące się tworzeniem gier z Seattle w stanie Waszyngton, którego misją jest skierowanie gier w nowe, śmiałe kierunki. Jeff Strain, weteran branży MMO, utworzył laboratorium w 2009 roku w celu zbudowania kreatywnego studia wokół najbardziej utalentowanych programistów w branży. Wszystkie szczegóły możecie przeczytać w ogłoszeniu o powstaniu Undead Labs. Nasi utalentowani programiści jako pierwsi postanowili stworzyć ostateczną grę zombie-survival dla graczy. W 2011 roku laboratorium nawiązało współpracę z Microsoft Game Studios, aby opublikować State of Decay, otwartą grę o przetrwaniu zombie w otwartym świecie na PC i Xbox360. Do 2015 roku State of Decay pozwoliło ponad dwóm milionom graczy przetestować swoje umiejętności przetrwania w ostatecznym teście i walczyć u boku przyjaciół, aby odzyskać świat z rąk hord nieumarłych.\r\n', 'fd8e2b7b-816c-4552-a331-e90f307b214c.png'),
('acdc1521-5065-4d91-a828-58afffcf11e8', 'Housemarque', 'f480f5af-c1e4-498b-9b4f-4f7d025bbf7b', 'Finlandia', '1995', 80, 'Housemarque – fińskie studio zajmujące się produkcją gier komputerowych. Założone zostało w lipcu 1995 roku i powstało ono z połączenia dwóch mniejszych studiów, Terramarque i Bloodhouse, obydwóch założonych w 1993 roku.', 'b942293c-7636-4e86-aebd-095d4dced66c.png'),
('afa128b5-01f6-4e72-b94d-37a7d63ea5ef', 'Team Asobi', 'f480f5af-c1e4-498b-9b4f-4f7d025bbf7b', 'Japonia', '2021', 60, 'Team Asobi to japoński producent gier wideo z siedzibą w Tokio. Własne studio Sony Interactive Entertainment, Team Asobi zostało pierwotnie utworzone w 2012 roku jako część Japan Studio, ale formalnie zostało wyodrębnione jako niezależne studio w ramach Sony PlayStation Studios w czerwcu 2021 roku.', '8ea5e1d2-3b0d-44f0-b346-5735d4b4bdab.png'),
('b3d3d43a-75f8-488f-a197-0828ae2c170d', 'World\'s Edge', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Stany Zjednoczone', '2019', 50, 'Stworzony przez Microsoft w 2019 roku World’s Edge jest kierowany przez Shannon Loftis i jest odpowiedzialny za zarządzanie serią Age of Empires w podobny sposób, jak 343 Industries z Halo i The Coalition z Gears of War. Niewiele jeszcze wiadomo o studiu, ale z pewnością dowiemy się w nadchodzących miesiącach i latach.', '3f5c62cd-88ae-4303-a681-337f077995ab.png'),
('b682b16d-ef9a-46fe-ad35-a0772030c13a', 'Polyphony Digital ', 'f480f5af-c1e4-498b-9b4f-4f7d025bbf7b', 'Japonia', '1998', 300, 'Japoński producent gier na konsole PlayStation należący do Sony Computer Entertainment. Firma była wcześniej znana jako Polys Entertainment, jednak po sukcesie Gran Turismo, 2 kwietnia 1998 roku, uzyskała większą samodzielność i zmieniła nazwę na Polyphony Digital. ', 'a5987a62-65e5-4456-978c-44eaf1c2f620.png'),
('b890adc2-5c44-4cb9-ab77-d11a1b9de688', 'Rare', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Wielka Brytania', '1985', 250, 'Założona w 1985 roku, aby skoncentrować się na rozwijającym się rynku konsol, nawiązaliśmy współpracę z Nintendo i szybko przypieczętowaliśmy reputację wysokiej jakości tytułów, takich jak Battletoads,Donkey Kong Country i GoldenEye. Przejęcie Rare przez Microsoft Game Studios nastąpiło w 2002 roku po kolosalnie udanej serii tytułów w latach 90. XX wieku. Wsparliśmy debiut Xbox 360 dwoma z trzech gier startowych, Kameo: Elements of Power i Perfect Dark Zero . Kolejne lata przyniosły nam innowacje dzięki Banjo-Kazooie: Nuts & Bolts , uzależniającej serii Viva Piñata i naszej pionierskiej pracy nad awatarami Xbox 360.\r\n\r\n\r\n\r\n', 'ee950e2d-f346-4769-a24d-f0f838a75851.png'),
('b90c93da-0be4-4915-b97c-d9bd9c748737', 'Insomniac Games', 'f480f5af-c1e4-498b-9b4f-4f7d025bbf7b', 'Stany Zjednoczone', '1994', 400, 'Amerykańskie studio deweloperskie z siedzibą w Burbank w stanie Kalifornia. Od początku działalności firmy jej szefem jest Ted Price. Pomimo że Insomniac Games początkowo koncentrowało się na tworzeniu gier na konsole PlayStation, w międzyczasie w portfolio tego zespołu pojawiły się tytuły wydane na komputery osobiste, Xboksa One czy urządzenia mobilne. Insomniac Games było również wydawcą niektórych swoich dzieł. W sierpniu 2019 roku studio stało się własnością firmy Sony Interactive Entertainment.\r\n', '462df8b6-6e07-4cae-9324-3820065d27ed.png'),
('bc5660ca-dbea-40eb-a13a-622e13b859bf', 'Mojang Studios', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Szwecja', '2009', 600, 'Od naszych skromnych początków w Sztokholmie, wchodzimy w lata 20-te jako firma z wieloma tytułami i wieloma lokalizacjami. Po Minecraft Earth i Minecraft Dungeons.\r\n\r\n\r\n', '777251ed-3db9-4486-84e8-663d1d65efac.png'),
('bef12e96-6e93-4f62-b9e3-84f17313904c', 'The Coaltion', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Kanada', '2010', 350, 'The Coalition to rosnący zespół utalentowanych, kreatywnych, kochających zabawę profesjonalistów, zjednoczonych w swojej pasji do Gears of War. Jako studio Microsoft skupiamy się na przesuwaniu granic interaktywnej rozrywki i przenoszeniu Gears na nowe wyżyny.\r\n\r\nA jeśli chodzi o zabawę, pomaga to, że Koalicja nazywa piękne Vancouver w Kanadzie domem. Dzięki łagodnemu klimatowi, tętniącym życiem nocnym, bogatej sztuce i kulturze, zróżnicowanej scenie kulinarnej i niekończącym się przygodom na świeżym powietrzu, obszar ten ma coś dla każdego.\r\n\r\n', 'd1e37140-e75d-4aa1-95a1-4e278ef32277.png'),
('c3bcc8f5-30cc-43bb-8bb3-626728188e3e', '343', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Stany zjednoczone', '2007', 750, 'Jesteśmy czymś więcej niż studiem, jesteśmy rodziną utalentowanych programistów, którzy są zaangażowani w tworzenie niesamowitych doświadczeń dla naszych fanów. Aby to osiągnąć, z pewnością potrzebny jest zróżnicowany zespół, dlatego jesteśmy domem dla wszystkiego, od artystów, inżynierów, projektantów, administratorów i wynalazców – ale co więcej, ci sami ludzie to rodzice, piloci, malarze – są aktywiści, rowerzyści i kolekcjonerzy – ich osobiste i domowe pasje są tak samo częścią tego, jak działa to studio, jak każdy szczegół w życiorysie.\r\n\r\n', '40982ecc-983c-4ebd-b233-c90da2c3926a.png'),
('c3c62375-9a31-4cba-bfa7-a58e03e0b433', 'Id Software', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Stany Zjednoczone', '1991', 300, 'Id Software, część rodziny firm ZeniMax Media Inc., od momentu powstania w 1991 roku, jako światowej sławy twórca gier i innowator technologiczny, zapewnia przywództwo techniczne, projektowe i artystyczne. Kultowe marki id Software, takie jak Wolfenstein®, DOOM®, QUAKE® i RAGE® stały się podstawą kultury popularnej dla pokoleń graczy. W id Software wszystko kręci się wokół ludzi; wierzymy w zatrudnianie najlepszych i najzdolniejszych oraz dawanie im narzędzi i środowiska, aby odnieść sukces. Zasady te kierują nami z powodzeniem od ponad dwudziestu lat i nadal będą prowadzić nas w przyszłości.', '92ddf7ec-b725-49a8-a09a-89894566605b.png'),
('c5988451-6cf4-4786-948c-c3c3085eb295', 'Firesprite', 'f480f5af-c1e4-498b-9b4f-4f7d025bbf7b', 'Wielka Brytania', '2012', 260, 'Firesprite zostało założone w 2012 roku przez Graeme Ankersa jako dyrektora zarządzającego, Lee Carusa jako dyrektora artystycznego, Chrisa Robertsa jako dyrektora technicznego, Stuarta Tilleya jako dyrektora gry i Stuarta Lovegrove jako dyrektora programowego. Studio jest obsługiwane przez niektórych programistów, którzy byli częścią oryginalnego Studio Liverpool, gdy było ono jeszcze nazywane Psygnosis, a pięć osób z głównego zespołu kierowniczego studia pracowało nad grami na każdą konsolę PlayStation. Psygnosis było najbardziej znane z serii Wipeout.', 'e269a690-048f-40bf-89eb-4c8d7a0b340d.png'),
('c8b3cc45-629b-4932-8d12-1dbb848a264f', 'London Studio', 'f480f5af-c1e4-498b-9b4f-4f7d025bbf7b', 'Wielka Brytania', '2002', 100, 'London Studio to brytyjski producent gier wideo z siedzibą w Londynie. Założone w 2002 roku jest to studio własne dla PlayStation Studios. Studio było najbardziej znane z tworzenia serii SingStar, a także gier na zewnętrzne urządzenia peryferyjne PlayStation, w tym aparat EyeToy i gogle wirtualnej rzeczywistości PlayStation VR. Studio stworzyło ponad 60 tytułów od momentu powstania.', '567138a6-31e3-444e-84c5-44d332319eeb.jpeg'),
('ca9e5738-07a1-4580-a0b1-b08914a846e8', 'Machine Games', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Szwecja', '2009', 150, 'MachineGames zostało założone w 2009 roku przez byłych członków założycieli Starbreeze Studios i przejęte przez ZeniMax Media w 2010 roku. Zlokalizowane w Uppsali w Szwecji, MachineGames to studio składające się z doświadczonej grupy programistów uznanych za pracę przy tworzeniu gier opartych na fabule. Ich pierwszy tytuł, doceniona przez krytyków strzelanka akcji i przygodowa Wolfenstein: The New Order, to nowa odsłona serii, która jest powszechnie uznawana za pomoc w tworzeniu gatunku strzelanek pierwszoosobowych.', 'f060d854-a4a7-4867-ab8f-9fad04b90b7b.png'),
('d5051e10-0c25-4d74-92a8-1ab8f4f3206e', 'Tango Gameworks', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Japonia', '2010', 200, 'Zenimax Media jest znany ze swojej znanej na całym świecie marki Bethesda. Wśród nich Tango Game Works, jedyne studio z siedzibą w Japonii, to studio, które skupia się na tworzeniu gier z punktu widzenia twórcy. Nie chcę być studiem zajmującym się tworzeniem gier, które dobrze się sprzedaje, ale traci z oczu swoją wartość i zabawę. Japoński rozwój gier, który może być dumny ze świata. Miłość do gry może być najlepsza na świecie. Chcemy być takim studiem deweloperskim.', 'ac0622ec-059a-4622-be4c-853161c0315a.png'),
('e1c33a29-5ace-40e5-b3c9-fddb12f8a075', 'Roundhouse Studios', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Stany Zjednoczone', '1997', 70, 'Założona w 1997 roku firma Human Head rozpoczęła działalność jako jednoosobowe studio deweloperskie zajmujące się tworzeniem najwyższej jakości gier wideo i komputerowych, zaczynając od opracowania wysoce innowacyjnej i nagradzanej Rune. Do 2005 roku firma powiększyła się do ponad 35 doświadczonych twórców gier i opracowała grę Prey, która zdobyła wiele nagród, w tym „Strzałkę roku” oficjalnego magazynu XBox i „Grę akcji roku” przyznawaną przez PC Gamer. W 2019 roku Bethesda Softworks otworzyła nowe studio deweloperskie – Roundhouse Studios z popiołów Human Head Studios. Deweloperzy z Roundhouse Studios reprezentują ponad dwie dekady pracując razem nad różnymi grami i gatunkami, w tym RPG, strzelanki, przygodowe gry akcji i nie tylko.\r\n\r\n', '88c3c6b0-410e-4b0a-a059-a44405ef68a1.png'),
('e289bd19-0785-42a9-affb-b4724943337c', 'Guerrilla Games', 'f480f5af-c1e4-498b-9b4f-4f7d025bbf7b', 'Holandia', '2000', 360, 'Guerrilla Games (dawniej Lost Boys Games) – holenderski producent gier komputerowych, będący jednostką zależną Sony Interactive Entertainment. Studio najbardziej znane jest z serii gier Killzone oraz Horizon przeznaczonych na konsole PlayStation.', '7783c85f-3321-497d-aade-f56832c1b963.jpeg'),
('e55ef349-f01e-48ff-8c6b-0e7b690e6d24', 'Naughty Dog', 'f480f5af-c1e4-498b-9b4f-4f7d025bbf7b', 'Stany Zjednoczone', '1984', 400, 'Przedsiębiorstwo zostało założone przez Andy’ego Gavina i Jasona Rubina w 1984. Do 1989 nosiło nazwę JAM Software, co było skrótem od Jason and Andy Magic Software. Na początku działalności dwuosobowe studio założycieli napisało (jako drugą) grę o narciarstwie. Jednakże jeden z założycieli studia nagrał nie licencjonowane kopie gier, na jedyną kopię własnej gry. Trzeba było więc napisać grę od nowa. Udało się to i gra została sprzedana za dokładnie 250 dolarów. W 2001 studio zostało przejęte przez Sony Computer Entertainment i od tej pory wszystkie gry są pisane wyłącznie na konsole PlayStation. ', '4a132e9d-b2ab-4aa9-aa29-bfe838e35c4b.png'),
('e5a96e73-8a56-4170-bf8c-a3b3a6c97d45', 'Compulsion Games', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Kanada', '2009', 70, 'Przymus to 70 osób kucających w starej fabryce gramofonów w Saint Henri w Montrealu. Założona w 2009 roku, chcemy tworzyć ciekawe, zabawne gry, które nie są zwyczajne. Lubimy myśleć o sobie jako o rzemieślnikach, którzy tworzą gry, które kochamy i z których jesteśmy dumni. Tworzymy gry, ponieważ jesteśmy nimi podekscytowani, a także koncepcjami i pomysłami, które zawierają.Tworzymy gry o prawdziwych ludziach w czasami absurdalnych światach i chcemy opowiadać historie.', '66ef79dc-46cb-46c9-8a7c-30bb342910b7.png'),
('ed964a26-49fe-467b-ac96-6071efe90d6b', 'Obsidian Entertainment', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Stany Zjednoczone', '2003', 230, 'Obsidian Entertainment, Xbox Game Studio z siedzibą w Irvine w Kalifornii, jest jednym z wiodących na świecie twórców gier RPG. Poprzednie tytuły Obsidianu to The Outer Worlds, Pillars of Eternity I & II, Tyranny, Armored Warfare, South Park: Kijek Prawdy, Fallout: New Vegas, Dungeon Siege 3, Alpha Protocol, Neverwinter Nights 2 oraz Star Wars: Knights of The Old Republic 2. Obsidian ma w planach także inne niezapowiedziane projekty.', 'ac9f71d7-d93b-4142-9045-27b214351d0b.png'),
('ee56ee88-ae6b-4ffd-b749-34fbf520b33f', 'Bethesda Game Studio', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Stany Zjednoczone', '2001', 420, 'Bethesda Game Studios to wielokrotnie nagradzany zespół programistów znany na całym świecie z przełomowych prac nad seriami The Elder Scrolls i Fallout. Twórcy „Gry Roku” 2006, The Elder Scrolls IV: Oblivion, „Gry Roku” 2008, Fallouta 3, „Gry Roku” 2011, The Elder Scrolls V: Skyrim, a ostatnio: „Gry Roku” 2015, rekordowy Fallout 4, zdobywca ponad 200 nagród „Best Of”, w tym BAFTA 2016 i D.I.C.E. Gra roku, Fallout Shelter, wielokrotnie nagradzana gra mobilna z ponad 120 milionami użytkowników, a ostatnio niecierpliwie wyczekiwane Fallout 76 i The Elder Scrolls: Blades. Bethesda Game Studios zyskało reputację jednego z najbardziej szanowanych i odnoszących sukcesy studiów deweloperskich w branży.', '9359c378-54de-4f72-bdc4-9475f12a7838.png'),
('f16100e0-f588-4ce8-a1c4-caadf749a6c7', 'Zenimax Online Studios', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Stany Zjednoczone', '2007', 380, 'Założona w 2007 roku firma ZENIMAX ONLINE STUDIOS została założona, aby przenieść legendarną serię Elder Scrolls do sieci. Od tego czasu przyciągnęliśmy i rozwinęliśmy wewnętrznie jedne z najbardziej utalentowanych osób w branży i pracujemy nad wspieraniem współpracy, zachęcania i otwartego środowiska pracy podczas rozwijania naszych obecnych i przyszłych projektów.', '973fae2b-bdc8-4c36-8173-461fe04bb2b1.png'),
('f43a2513-d89d-4bdf-9c7e-33e6e576a2a9', 'The Initiative', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Stany Zjednoczone', '2018', 70, 'The Initiative to nowe studio deweloperskie zlokalizowane kilka przecznic od plaży w słonecznym Santa Monica w Kalifornii. Naszą misją jest tworzenie ambitnych i innowacyjnych gier, które pokochają nasi widzowie. Pasjonujemy się rzemiosłem, tworzeniem historii i budowaniem kolejnej wielkiej rzeczy w grach. Jesteśmy zgranym zespołem doświadczonych twórców, których łączy chęć rozwijania sztuki gier wideo. Pracujemy w inspirującej przestrzeni w Santa Monica, gdzie możemy zanurzyć się w procesie twórczym. Działamy jako niezależne studio pod szyldem i wsparciem finansowym Xbox Game Studios i Microsoft. Wszystko, co robimy, wynika z pasji do innowacji i ambicji stworzenia czegoś przełomowego. Wierzymy, że praca zespołowa, różnorodność myśli i osobiste dążenie do zbudowania czegoś wspaniałego są kluczem do naszego sukcesu.\r\n\r\n', '32863e42-3096-4b1e-89b5-77748237de9e.png'),
('f8c4fb57-770a-4a38-b3f1-5e7926d1c976', 'Xbox Game Studios Publishing ', 'bd702b05-d471-4732-81c0-35f96c32d5dd', 'Stany Zjednoczone', '2000', 50, 'Xbox Game Studios Publishing to grupa profesjonalistów z branży gier, którzy współpracują ze światowej klasy niezależnymi programistami w zakresie innowacyjnych franczyz Xbox. Umożliwiamy naszym partnerom w studio przesuwanie granic technologii, opowiadania historii i zaangażowania graczy, aby dostarczać wspaniałe gry różnym odbiorcom na całym świecie.', '2a4d8aa0-c8cd-4255-bd79-500fe8d33453.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isAdmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `email`, `hash`, `isAdmin`) VALUES
('58de1d94-2b74-4275-b243-8aa810ba7859', 'admintest@o2.pl', '$2b$10$wcyswqRpNEkRSrMSOZKBI.NqFgNbpmB0QZ7HzQvwzZElVHqXOxEq6', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('29cddc97-d9f6-4a13-87e1-c73be82691c3', '5228ce6ada97bd4965f68a315398df7bd3a6a04cce3b78b41b873e0e589cb63d', '2022-09-28 14:01:43.829', '20220928140143_added_desc', NULL, NULL, '2022-09-28 14:01:43.287', 1),
('2dae5013-8c43-4199-bc73-2fbf35612d6b', 'b73da57e9329f9bfbebc01667d5f19b257f40666f0d99a1a5e3e72c183cba69d', '2022-10-27 08:47:57.575', '20221027084757_updated', NULL, NULL, '2022-10-27 08:47:57.518', 1),
('9d211571-f189-47b9-9508-82bc4979fcd4', 'a96fe0add29b813388eefff2230277e12490512954639553d66c1c1af069f4dc', '2022-09-28 14:01:42.308', '20220923132705_init', NULL, NULL, '2022-09-28 14:01:41.941', 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `game`
--
ALTER TABLE `game`
  ADD UNIQUE KEY `Game_id_key` (`id`),
  ADD UNIQUE KEY `Game_name_key` (`name`),
  ADD KEY `Game_developerId_fkey` (`developerId`);

--
-- Indeksy dla tabeli `gameonplatform`
--
ALTER TABLE `gameonplatform`
  ADD PRIMARY KEY (`gameId`,`platformId`),
  ADD KEY `GameOnPlatform_platformId_fkey` (`platformId`);

--
-- Indeksy dla tabeli `platform`
--
ALTER TABLE `platform`
  ADD UNIQUE KEY `Platform_id_key` (`id`),
  ADD UNIQUE KEY `Platform_name_key` (`name`);

--
-- Indeksy dla tabeli `publisher`
--
ALTER TABLE `publisher`
  ADD UNIQUE KEY `Publisher_id_key` (`id`),
  ADD UNIQUE KEY `Publisher_name_key` (`name`);

--
-- Indeksy dla tabeli `studio`
--
ALTER TABLE `studio`
  ADD UNIQUE KEY `Studio_id_key` (`id`),
  ADD UNIQUE KEY `Studio_name_key` (`name`),
  ADD KEY `Studio_ownerId_fkey` (`ownerId`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `User_id_key` (`id`),
  ADD UNIQUE KEY `User_email_key` (`email`);

--
-- Indeksy dla tabeli `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `Game_developerId_fkey` FOREIGN KEY (`developerId`) REFERENCES `studio` (`id`) ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `gameonplatform`
--
ALTER TABLE `gameonplatform`
  ADD CONSTRAINT `GameOnPlatform_gameId_fkey` FOREIGN KEY (`gameId`) REFERENCES `game` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `GameOnPlatform_platformId_fkey` FOREIGN KEY (`platformId`) REFERENCES `platform` (`id`) ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `studio`
--
ALTER TABLE `studio`
  ADD CONSTRAINT `Studio_ownerId_fkey` FOREIGN KEY (`ownerId`) REFERENCES `publisher` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
