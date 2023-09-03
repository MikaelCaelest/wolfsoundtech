-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 12 avr. 2022 à 09:07
-- Version du serveur : 8.0.28
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wst`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `idCategorie` int NOT NULL,
  `libelleCat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `imgCat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `webCat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idCategorie`, `libelleCat`, `imgCat`, `webCat`) VALUES
(1, 'Son', '/images/Categorie/volume-high-solid.svg', 'son'),
(2, 'Câbles & Connexions', '/images/Categorie/plug-solid.svg', 'cbl'),
(3, 'Lumière', '/images/Categorie/lightbulb-solid.svg', 'lum'),
(4, 'Structure & Technique', '/images/Categorie/trowel-bricks-solid.svg', 'str'),
(5, 'Vidéo', '/images/Categorie/video-solid.svg', 'video'),
(6, 'Salle de répétition', '/images/Categorie/house-solid.svg', 'salle');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `ref` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `libellePrd` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `descriptionPrd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `imgPrd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prix` float NOT NULL,
  `qte` int NOT NULL,
  `catID` int NOT NULL,
  `sousCatID` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`ref`, `libellePrd`, `descriptionPrd`, `imgPrd`, `prix`, `qte`, `catID`, `sousCatID`, `created_at`, `updated_at`, `deleted_at`) VALUES
('CABAPWRCN1M', 'Câble alimentation PowerCon', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0, 10, 2, 6, '2022-04-04 14:01:59', NULL, NULL),
('CABASHUKO1M', 'Câble alimentation SHUKO', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0, 30, 2, 6, '2022-04-04 14:01:59', NULL, NULL),
('CABBLOCP163', 'Bloc multiprise X3 PC16 DE', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.5, 30, 2, 6, '2022-04-04 14:01:59', NULL, NULL),
('CABBLOCP168', 'Bloc multiprise X8 PC16 EUR', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.2, 16, 2, 6, '2022-04-04 14:01:59', NULL, NULL),
('CABDMX001M5', 'Câble DMX 3 points 1,5', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.12, 20, 2, 5, '2022-04-04 14:01:59', NULL, NULL),
('CABDMX002M5', 'Câble DMX 3 points 2,5m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.15, 20, 2, 5, '2022-04-04 14:01:59', NULL, NULL),
('CABDMX005M0', 'Câble DMX 3 points 5m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.2, 10, 2, 5, '2022-04-04 14:01:59', NULL, NULL),
('CABDMX010M0', 'Câble DMX 3 points 10m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.25, 5, 2, 5, '2022-04-04 14:01:59', NULL, NULL),
('CABDMX025M0', 'Câble DMX 3 points 25m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.5, 3, 2, 5, '2022-04-04 14:01:59', NULL, NULL),
('CABDMX050M0', 'Câble DMX 3 points 50m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 1, 2, 5, '2022-04-04 14:01:59', NULL, NULL),
('CABM16P1732', 'Convertisseur Maréchal 16A M vers P17 32A F', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.5, 1, 2, 6, '2022-04-04 14:01:59', NULL, NULL),
('CABP16002M5', 'Prolongateur PC16 2,5m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.5, 15, 2, 6, '2022-04-04 14:01:59', NULL, NULL),
('CABP16005M0', 'Prolongateur PC16 5m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.8, 10, 2, 6, '2022-04-04 14:01:59', NULL, NULL),
('CABP16010M0', 'Prolongateur PC16 10m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 6, 2, 6, '2022-04-04 14:01:59', NULL, NULL),
('CABP16025M0', 'Prolongateur PC16 25m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 2, 3, 2, 6, '2022-04-04 14:01:59', NULL, NULL),
('CABP16050M0', 'Prolongateur PC16 50m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 3, 3, 2, 6, '2022-04-04 14:01:59', NULL, NULL),
('CABP1732A30', 'Prolongateur P17 32A 30m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 4, 1, 2, 6, '2022-04-04 14:01:59', NULL, NULL),
('CABP1732V16', 'Convertisseur P17 32A M vers P17 16A 5b F', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.5, 1, 2, 6, '2022-04-04 14:01:59', NULL, NULL),
('CABP173PC16', 'Convertisseur P17 16A 3b M vers PC16 F', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.5, 1, 2, 6, '2022-04-04 14:01:59', NULL, NULL),
('CABPWRCLI50', 'Powercon 50cm LINK', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.4, 6, 2, 6, '2022-04-04 14:01:59', NULL, NULL),
('CABRJ45C650', 'Câble Rj45 cat6 50m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 4, 2, 4, '2022-04-04 14:01:59', NULL, NULL),
('CABSNAKM164', 'Multipaire The Sssnake 16/4', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 3, 1, 2, 4, '2022-04-04 14:01:59', NULL, NULL),
('CABSNAKM248', 'Multipaire The Sssnake 24/8', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 1, 2, 4, '2022-04-04 14:01:59', NULL, NULL),
('CABSPE0005M', 'Câble Speakon 5m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.5, 2, 2, 4, '2022-04-04 14:01:59', NULL, NULL),
('CABSPE0010M', 'Câble Speakon 10m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.8, 2, 2, 4, '2022-04-04 14:01:59', NULL, NULL),
('CABSPE0020M', 'Câble Speakon 20m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 1, 2, 4, '2022-04-04 14:01:59', NULL, NULL),
('CABSPE2X20M', 'Câble Speakon double 20m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 2, 2, 2, 4, '2022-04-04 14:01:59', NULL, NULL),
('CABXLR000M5', 'Câble XLR 0,5m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.1, 10, 2, 4, '2022-04-04 14:01:59', NULL, NULL),
('CABXLR002M5', 'Câble XLR 2,5m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.15, 8, 2, 4, '2022-04-04 14:01:59', NULL, NULL),
('CABXLR005M0', 'Câble XLR 5m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.2, 12, 2, 4, '2022-04-04 14:01:59', NULL, NULL),
('CABXLR010M0', 'Câble XLR 10m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.25, 24, 2, 4, '2022-04-04 14:01:59', NULL, NULL),
('CABXLR025M0', 'Câble XLR 25m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 0.5, 4, 2, 4, '2022-04-04 14:01:59', NULL, NULL),
('CABXLR050M0', 'Câble XLR 50m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 0, 2, 4, '2022-04-04 14:01:59', NULL, NULL),
('LUMADBDW104', 'Projecteur Découpe ADB DW104', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 3, 2, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMANTZ1000', 'Machine à fumée Antari Z1000', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 2, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMCONGA250', 'Lyre Contest Gaia 250 LED', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 10, 4, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMEXCEILLU', 'Laser Excelighting Illusion', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 1, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMEXCFOG3K', 'Machine à fumée Excelight Fogmaster 3000', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 10, 1, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMGALAB300', 'Laser Galactic B300', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 2, 1, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMKOOSTR1K', 'Stroboscope KOOLSOUND 1000W', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 2, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMLIGPLAMI', 'PAR LED Lightmaxx Platinium Mini RGBW', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 4, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMLIGSSARC', 'PAR LED Lightmaxx Slim Spot ARC RGBW', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 6, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMLIGVHB1K', 'Machine à brouillard Lightmaxx Vector Haze', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 15, 1, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMMCPRO250', 'Lyre Mac-Mah Mac Pro Spot 250', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 15, 2, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMPAR56300', 'PAR trad 56 300W', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 10, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMPAR56500', 'PAR trad 56 500W', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 4, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMPAR6401K', 'PAR trad 64 1000W', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 6, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMPAR64500', 'PAR trad 64 500W', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 10, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMPRPIL250', 'Lyre PearlRiver Pilot150 LED', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 10, 2, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMRSUNLITE', 'Surface de contrôle Sunlite suite2', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 20, 1, 3, 7, '2022-04-04 14:01:59', NULL, NULL),
('LUMRVESTA60', 'Gradateur RVE Stager 60A', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 25, 1, 3, 7, '2022-04-04 14:01:59', NULL, NULL),
('LUMSHO56RGB', 'PAR LED Showtech PAR 56 RGB 15W', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 6, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMSHOCO256', 'Surface de contrôle dmx 256 canaux', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 2, 1, 3, 7, '2022-04-04 14:01:59', NULL, NULL),
('LUMSHODIM4L', 'Gradateur Showtech DIM4-LC', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 4, 2, 3, 7, '2022-04-04 14:01:59', NULL, NULL),
('LUMSHOSTBL2', 'Blinder Showtech Stage blinder 2 DMX', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 3, 4, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMSPOT16CO', 'Spot PAR 16 led color remote', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 30, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMSTAMS500', 'Lyre Starway MaxSpot 500', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 15, 6, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMSTASC700', 'Lyre wash Starway ServoColor 700', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 15, 5, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMSTASS400', 'Lyre Starway ServoSpot 400', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 15, 3, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMSTAZUN60', 'Gradateur Starway ZUNI 60A', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 10, 2, 3, 7, '2022-04-04 14:01:59', NULL, NULL),
('LUMURSBAT30', 'Projecteur batterie Ustellar 30W led RGB+r', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 3, 8, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('LUMVARTS500', 'PC Varytec Theaterspot 500W', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 2, 6, 3, 8, '2022-04-04 14:01:59', NULL, NULL),
('SALLEREPET1', 'Salle de répétition 1', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 100, 1, 6, NULL, '2022-04-04 15:32:19', NULL, NULL),
('SALLEREPET2', 'Salle de répétition 2', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 100, 1, 6, NULL, '2022-04-04 15:32:19', NULL, NULL),
('SCEADHDEFM5', 'Passe-câbles Adam Hall Defender Midi 5 PL', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 2, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEASDAL550', 'Pied de levage ASD ALT 550', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 30, 2, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEASDASX22', 'Structure angle ASD ASX22 + Kit de jonction', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 8, 4, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEASDASX23', 'Structure angle ASD ASX23 + Kit de jonction', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 8, 2, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEASDASX33', 'Structure angle ASD ASX33 + Kit de jonction', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 10, 2, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEASDASX34', 'Structure angle ASD ASX34 + Kit de jonction', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 10, 2, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEASDEM259', 'Platine ASD EM259 + Kit jonction', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 2, 4, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEASDEML59', 'Embase lourde ASD EML259 + Kit jonction', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 15, 4, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEASDEML60', 'Embase lourde ASD EML60 + Kit jonction', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 10, 4, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEASDX2910', 'Structure ASD SX290100 + Kit de jonction', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 4, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEASDX2920', 'Structure ASD SX290200 + Kit de jonction', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 8, 4, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEASDX2930', 'Structure ASD SX290300 + Kit de jonction', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 10, 6, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEASDX2940', 'Structure ASD SX290400 + Kit de jonction', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 12, 3, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCECABMTPM1', 'Passe-câbles Cablematiks Prime rigide 1m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 3, 20, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCECELEC32A', 'Coffret électrique 32A vers 6XPC16 EUR', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 10, 2, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEDELE5520', 'PC DELL Lattitude E5520 Windows 10', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 15, 1, 5, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEDURDT332', 'Structure Duratruss DT-33-200 + Kit de jonction', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 3, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEMICSTALT', 'Pied de micro générique petite taille', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 4, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEMICSTAPF', 'Pied de micro générique perche fixe', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 10, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEMICSTAPT', 'Pied de micro générique perche téléscopique', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 6, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEPEND3X3M', 'Pendrillon 3X3m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 2, 2, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEPEND4X3M', 'Pendrillon 4X3m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 3, 2, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEPEND8X3M', 'Pendrillon 8x3m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 1, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEPRA12H40', 'Praticable 120X240cm H40cm', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 4, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEPRA14H20', 'Praticable 140X240cm H20cm', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 1, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEPRA14H40', 'Praticable 140X240cm H40cm', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 2, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCESODEMB1M', 'Barre SODEM 1m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 900, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCESODEMB2M', 'Barre SODEM 2m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1.2, 25, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCESODEMB3M', 'Barre SODEM 3m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1.4, 480, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCESODEMB4M', 'Barre SODEM 4m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1.6, 2, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCESODEMCLO', 'Cloison tissu tendu M1', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 400, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCESODEMPOT', 'Poteau SODEM', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 2, 780, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCESTAIRRS8', 'Passe-câbles Stairville RuberStage roul. 8m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 2, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCESTRUCTBI', 'Structure bi 3m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 2, 2, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCESUPMS158', 'Pied de micro Superlux MS158', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 2, 2, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCETREPIEDS', 'Trépied 3m', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 2, 6, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEVARWU85K', 'Pied de levage Varytec WindUp 85Kg', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 4, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SCEVERVX924', 'Talkie-Walkie Vertex VX-924E', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 8, 4, NULL, '2022-04-04 14:01:59', NULL, NULL),
('SONAKGC544L', 'Microphone Headset AKG C-544-L', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 2.5, 2, 1, 3, '2022-04-04 14:01:59', NULL, NULL),
('SONAKGTPT45', 'Kit émetteur/récepteur AKG PT45', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 2, 1, 1, '2022-04-04 14:01:59', NULL, NULL),
('SONALESIMM8', 'Console Alesis multimix 8 2FX', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 10, 1, 1, 1, '2022-04-04 14:01:59', NULL, NULL),
('SONAUDIXD6M', 'Microphone Audix D6 ', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 1, 1, 3, '2022-04-04 14:01:59', NULL, NULL),
('SONBEEPQ900', 'Amplificateur Behringer EPQ900', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 3, 1, 1, 2, '2022-04-04 14:01:59', NULL, NULL),
('SONBEHSBS16', 'Stagebox Behringer S16', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 10, 1, 1, 1, '2022-04-04 14:01:59', NULL, NULL),
('SONBEHUDI20', 'Boitier direct stéréo Behringer Ultra DI20', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 1, 1, 3, '2022-04-04 14:01:59', NULL, NULL),
('SONBEHX32PR', 'Console Behringer x32 producer', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 25, 1, 1, 1, '2022-04-04 14:01:59', NULL, NULL),
('SONBEMX8000', 'Console Behringer XR16', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 10, 1, 1, 1, '2022-04-04 14:01:59', NULL, NULL),
('SONBEXEX502', 'Console Behringer Xenyx 502', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 2, 1, 1, 1, '2022-04-04 14:01:59', NULL, NULL),
('SONBLUEN200', 'Microphone Blue en-core200', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 3, 1, 1, 3, '2022-04-04 14:01:59', NULL, NULL),
('SONDBT710DX', 'Enceinte active DbTech Opera 715DX', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 20, 2, 1, 2, '2022-04-04 14:01:59', NULL, NULL),
('SONDBTDVABU', 'Kit Bumper DVAm + élingues + sécurités', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 7, 4, 1, 2, '2022-04-04 14:01:59', NULL, NULL),
('SONDBTDVAM2', 'Enceintes Line array DbTech DVA m2m+m2s', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 35, 8, 1, 2, '2022-04-04 14:01:59', NULL, NULL),
('SONDBTEFM10', 'Enceinte active DbTech FM10', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 10, 4, 1, 2, '2022-04-04 14:01:59', NULL, NULL),
('SONDBTEFM12', 'Enceinte active DbTech FM12', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 15, 4, 1, 2, '2022-04-04 14:01:59', NULL, NULL),
('SONDBTMS12S', 'Sub actif dBTech DVA MS12', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 30, 2, 1, 2, '2022-04-04 14:01:59', NULL, NULL),
('SONDBTSB18H', 'Sub actif DbTech Sub 18H', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 35, 4, 1, 2, '2022-04-04 14:01:59', NULL, NULL),
('SONDBXDRPA2', 'Processeur DBX Driverack PA2 + RTA mic', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 20, 2, 1, 1, '2022-04-04 14:01:59', NULL, NULL),
('SONEAGTDK70', 'Kit Microphones Eagletone DK70 drums', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 1, 1, 3, '2022-04-04 14:01:59', NULL, NULL),
('SONFAMEAM15', 'Enceinte passive FAME MT15A 350W', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 15, 2, 1, 2, '2022-04-04 14:01:59', NULL, NULL),
('SONFAMEAS18', 'Sub passif FAME SUB 18A 600W', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 15, 2, 1, 2, '2022-04-04 14:01:59', NULL, NULL),
('SONFAMEM112', 'Enceinte passive Fame M 112', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 2, 1, 2, '2022-04-04 14:01:59', NULL, NULL),
('SONFAMSM15A', 'Enceinte active Fame SM150A', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 2, 1, 2, '2022-04-04 14:01:59', NULL, NULL),
('SONJBLTR105', 'Enceinte passive JBL TR105', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 20, 2, 1, 2, '2022-04-04 14:01:59', NULL, NULL),
('SONPALMEP01', 'Boitier direct Palmer PAN-01', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 1, 1, 3, '2022-04-04 14:01:59', NULL, NULL),
('SONPALMEP04', 'Boitier direct Palmer PAN-04', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1.5, 1, 1, 3, '2022-04-04 14:01:59', NULL, NULL),
('SONPALMEREA', 'Boitier de reamping Palmer Reamp Box', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1.5, 1, 1, 3, '2022-04-04 14:01:59', NULL, NULL),
('SONPALMP04A', 'Boitier direct Palmer PAN-04A', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 3.5, 1, 1, 3, '2022-04-04 14:01:59', NULL, NULL),
('SONSAMSSC02', 'Microphone Samson C-02', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1.5, 2, 1, 3, '2022-04-04 14:01:59', NULL, NULL),
('SONSEHNE906', 'Microphone Sennheiser e906', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 4, 3, 1, 3, '2022-04-04 14:01:59', NULL, NULL),
('SONSEHNM427', 'Microphone Sennheiser MD-427', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1, 1, 1, 3, '2022-04-04 14:01:59', NULL, NULL),
('SONSHUBLX58', 'kit Micro sans fil Shure BLX24/SM58 K3E', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 10, 1, 1, 3, '2022-04-04 14:01:59', NULL, NULL),
('SONSHUPS200', 'Kit émetteur/récepteur Shure PSM200', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 10, 1, 1, 1, '2022-04-04 14:01:59', NULL, NULL),
('SONSHURBE56', 'Microphone Shure Beta 56A ', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 3.5, 1, 1, 3, '2022-04-04 14:01:59', NULL, NULL),
('SONSHURSM57', 'Microphone Shure SM57', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 2.5, 2, 1, 3, '2022-04-04 14:01:59', NULL, NULL),
('SONSHURSM58', 'Microphone Shure SM58 ', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 2.5, 8, 1, 3, '2022-04-04 14:01:59', NULL, NULL),
('SONSHUWL93T', 'Microphone cravate Shure WL93T', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 99999, 2, 1, 3, '2022-04-04 14:01:59', NULL, NULL),
('SONSOUNDSI1', 'Console Soundcraft SI1', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 87.5, 1, 1, 1, '2022-04-04 14:01:59', NULL, NULL),
('SONSUPE383D', 'Microphone Superlux PRA 383-D', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 1.5, 3, 1, 3, '2022-04-04 14:01:59', NULL, NULL),
('SONSYNQDI1K', 'Amplificateur SYNQ Digit 1K', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 1, 1, 2, '2022-04-04 14:01:59', NULL, NULL),
('VIDCONVHDMI', 'Kit Convertisseur HDMI/RJ45 5 boitiers', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 15, 1, 5, NULL, '2022-04-04 14:01:59', NULL, NULL),
('VIDEPSEMP81', 'Vidéoprojecteur EPSON EMP81', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 10, 1, 5, NULL, '2022-04-04 14:01:59', NULL, NULL),
('VIDGOPROH30', 'Caméra Gopro Hero 3', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 2, 2, 5, NULL, '2022-04-04 14:01:59', NULL, NULL),
('VIDGOPROH70', 'Caméra Gopro Hero 7', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 7, 1, 5, NULL, '2022-04-04 14:01:59', NULL, NULL),
('VIDIIYL4260', 'Téléviseur Iiyama L4260S 42 pouces', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 16, 1, 5, NULL, '2022-04-04 14:01:59', NULL, NULL),
('VIDNECTE464', 'Téléviseur NEC E464 46 pouces', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 18, 2, 5, NULL, '2022-04-04 14:01:59', NULL, NULL),
('VIDNECTV321', 'Téléviseur NEC V321 32 pouces', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 10, 1, 5, NULL, '2022-04-04 14:01:59', NULL, NULL),
('VIDOPTZH606', 'Vidéoprojecteur laser Optoma ZH606e', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 70, 1, 5, NULL, '2022-04-04 14:01:59', NULL, NULL),
('VIDRGBLINKM', 'Régie Vidéo RGBLink Mini', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 10, 1, 5, NULL, '2022-04-04 14:01:59', NULL, NULL),
('VIDTOILE120', 'Toile de projection 120 pouces 16/9', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 2, 1, 5, NULL, '2022-04-04 14:01:59', NULL, NULL),
('VIDTOILE250', 'Toile de projection 250 pouces 16/9', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 5, 1, 5, NULL, '2022-04-04 14:01:59', NULL, NULL),
('VIDTOILE350', 'Toile de projection 350 pouces 16/9', '', '/images/Categorie/Souscat/Produit/house-solid.svg', 50, 1, 5, NULL, '2022-04-04 14:01:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `refPrd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dateDeb` date NOT NULL,
  `dateFin` date NOT NULL,
  `qteRes` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `souscat`
--

CREATE TABLE `souscat` (
  `idSousCat` int NOT NULL,
  `libelleSousCat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `imgSousCat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `webSsCat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `categorieID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `souscat`
--

INSERT INTO `souscat` (`idSousCat`, `libelleSousCat`, `imgSousCat`, `webSsCat`, `categorieID`) VALUES
(1, 'Mixage Périphériques', '/images/Categorie/Souscat/house-solid.svg', 'mix', 1),
(2, 'Diffusion', '/images/Categorie/Souscat/house-solid.svg', 'diff', 1),
(3, 'Captation', '/images/Categorie/Souscat/house-solid.svg', 'capt', 1),
(4, 'Son', '/images/Categorie/Souscat/house-solid.svg', 'cblson', 2),
(5, 'Lumière', '/images/Categorie/Souscat/house-solid.svg', 'cbllum', 2),
(6, 'Électrique', '/images/Categorie/Souscat/house-solid.svg', 'elec', 2),
(7, 'Contrôle', '/images/Categorie/Souscat/house-solid.svg', 'ctrl', 3),
(8, 'Projecteur', '/images/Categorie/Souscat/house-solid.svg', 'proj', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`idCategorie`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`ref`),
  ADD KEY `catID` (`catID`),
  ADD KEY `sousCatID` (`sousCatID`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`refPrd`,`dateDeb`,`dateFin`,`qteRes`),
  ADD KEY `refPrd` (`refPrd`);

--
-- Index pour la table `souscat`
--
ALTER TABLE `souscat`
  ADD PRIMARY KEY (`idSousCat`),
  ADD KEY `categorieID` (`categorieID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `idCategorie` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `souscat`
--
ALTER TABLE `souscat`
  MODIFY `idSousCat` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `fk_cat_prd` FOREIGN KEY (`catID`) REFERENCES `categorie` (`idCategorie`),
  ADD CONSTRAINT `fk_souscat_prd` FOREIGN KEY (`sousCatID`) REFERENCES `souscat` (`idSousCat`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `fk_prd_res` FOREIGN KEY (`refPrd`) REFERENCES `produit` (`ref`);

--
-- Contraintes pour la table `souscat`
--
ALTER TABLE `souscat`
  ADD CONSTRAINT `fk_cat_souscat` FOREIGN KEY (`categorieID`) REFERENCES `categorie` (`idCategorie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
