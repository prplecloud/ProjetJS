INSERT INTO `state`(`name`) 
VALUES ("Neuf"), ("Très bon état"), ("Bon état"), ("Etat correct");

INSERT INTO `licence`(`name`) 
VALUES ("Pokémon"), ("Yu-Gi-Oh!");

INSERT INTO `langage`(`name`) 
VALUES ("Français"), ("Anglais"), ("Allemand"), ("Espagnol"), ("N/A");

INSERT INTO `categories`(`name`) 
VALUES ("Booster"), ("Cartes"), ("Blister"), ("Coffret"), ("Tin-box"), ("Metal-box"), ("Accessoires");

INSERT INTO `edition`(`name`) 
VALUES ("Les Vaillants Fracasseurs"), ("L'Ère du Seigneur Suprême"), ("Héritage de la destruction"),  ("Cauchemar Fantome"), ("Duelliste légendaire"), ("Incroyables Défenseurs"), ("Nexus du duelliste"), ("Le labyrinthe du millénaire"), ("Forces Temporelles"), ("Destinée de Paldéa"), ("Ecarlate et Violet"), ("Faille Paradoxe"), ("Stars Etincelantes"), ("Tempête Argentée"), ("N/A");


INSERT INTO `products`(`name`, `price`, `stock`, `image_url`, `description`, `réduction`, `edition_id`, `licence_id`, `state_id`, `langage_id`, `categories_id`) 
VALUES 
("BOOSTER LES VAILLANTS FRACASSEURS - YU-GI-OH! FR", 5.99, 10, "assets/img/articles/Yu-Gi-Oh/Booster/Français/VASM1FR.jpg", "Paquet de 7 cartes Yu-Gi-Oh! en français de l'édition Les Vaillants Fracasseurs. Elle inclut 60 cartes différentes dont 10 Ultra Rares et 15 Super Rares." , 0, 1, 2, 1, 1, 1),
("BOOSTER L'ERE DU SEIGNEUR SUPREME - YU-GI-OH! FR", 5.99, 10, "assets/img/articles/Yu-Gi-Oh/Booster/Français/AGOV1FR.jpg", "Paquet de 9 cartes Yu-Gi-Oh! en français de l'édition L'Ère du Seigneur Suprême. Cette édition inclut 100 cartes dont 14 Ultra Rares et 10 Secret Rares." , 0, 2, 2, 1, 1, 1),
("BOOSTER HERITAGE DE LA DESTRUCTION - YU-GI-OH! FR", 5.99, 10, "assets/img/articles/Yu-Gi-Oh/Booster/Français/LEDE1FR.jpg", "Paquet de 9 cartes Yu-Gi-Oh! en français de l'édition Héritage de la Destruction. Elle inclut 100 cartes différentes dont 14 Ultra Rare et 10 Secret Rare." , 0, 3, 2, 1, 1, 1),
("BOOSTER CAUCHEMAR FANTOME - YU-GI-OH! FR", 5.99, 10, "assets/img/articles/Yu-Gi-Oh/Booster/Français/PHNI1FR.jpg", "Paquet de 9 cartes Yu-Gi-Oh! en français de l'édition Cauchemar Fantome. Elle inclut 100 cartes différentes dont 14 Ultra Rare et 10 Secret Rare." , 0, 4, 2, 1, 1, 1),
("BOOSTER DUELLISTE LEGENDAIRE - YU-GI-OH! FR", 2.99, 10, "assets/img/articles/Yu-Gi-Oh/Booster/Français/LD1FR.jpg", "Paquet de 5 cartes Yu-Gi-Oh! en français de l'extension Duellistes Légendaires : Volcan Brûleur d'Âmes. Cette édition contient 62 cartes différentes." , 0, 5, 2, 1, 1, 1),
("BOOSTER INCROYABLES DEFENSEURS - YU-GI-OH! FR", 5.99, 10, "assets/img/articles/Yu-Gi-Oh/Booster/Français/AMDE1FR.jpg", "Paquet de 7 cartes Yu-Gi-Oh! en français de l'édition Incroyables Défenseurs. Elle inclut 60 cartes différentes dont 10 Ultra Rare et 15 Super Rare." , 0, 6, 2, 1, 1, 1),
("BOOSTER NEXUS DU DUELLISTE - YU-GI-OH! FR", 5.99, 50, "assets/img/articles/Yu-Gi-Oh/Booster/Français/DUNE1FR.jpg", "Paquet de 9 cartes Yu-Gi-Oh! en français de l'édition Nexus du Duelliste. Elle inclut 100 cartes différentes dont 14 Ultra Rare et 10 Secret Rare." , 0, 7, 2, 1, 1, 1),
("BOOSTER LE LABYRINTHE DU MILLENAIRE - YU-GI-OH! FR", 5.99, 10, "assets/img/articles/Yu-Gi-Oh/Booster/Français/MZMI1FR.jpg", "Paquet de 7 cartes Yu-Gi-Oh! en français de l'édition Le labyrinthe du Millénaire. Cette édition inclut 85 cartes dont 11 Ultra Rares et 16 Super Rares." , 0, 8, 2, 1, 1, 1),
("VALIANT SMASHERS BOOSTER PACK - YU-GI-OH!", 5.99, 10, "assets/img/articles/Yu-Gi-Oh/Booster/English/VASM1ENG.png", "Paquet de 7 cartes Yu-Gi-Oh! en anglais de l'édition Valiant Smashers. Elle inclut 60 cartes différentes dont 10 Ultra Rares et 15 Super Rares." , 0, 1, 2, 1, 2, 1), 
("AGE OF OVERLORD BOOSTER PACK - YU-GI-OH!", 5.99, 10, "assets/img/articles/Yu-Gi-Oh/Booster/English/AGOV1ENG.png", "Paquet de 9 cartes Yu-Gi-Oh! en anglais de l'édition Age of Overlord. Cette édition inclut 100 cartes dont 14 Ultra Rares et 10 Secret Rares." , 0, 2, 2, 1, 2, 1),
("LEGACY OF DESTRUCTION BOOSTER PACK - YU-GI-OH!", 5.99, 10, "assets/img/articles/Yu-Gi-Oh/Booster/English/LEDE1ENG.png", "Paquet de 9 cartes Yu-Gi-Oh! en anglais de l'édition Legacy of Destruction. Elle inclut 100 cartes différentes dont 14 Ultra Rare et 10 Secret Rare." , 0, 3, 2, 1, 2, 1),
("PHANTOM NIGHTMARE BOOSTER PACK - YU-GI-OH!", 5.99, 10, "assets/img/articles/Yu-Gi-Oh/Booster/English/PHNI1ENG.png", "Paquet de 9 cartes Yu-Gi-Oh! en anglais de l'édition Phantom Nightmare. Elle inclut 100 cartes différentes dont 14 Ultra Rare et 10 Secret Rare." , 0, 4, 2, 1, 2, 1),
("LEGENDARY DUELISTS BOOSTER PACK - YU-GI-OH!", 2.99, 10, "assets/img/articles/Yu-Gi-Oh/Booster/English/LD1ENG.png", "Paquet de 5 cartes Yu-Gi-Oh! en anglais de l'extension Legendary Duelists : Volcan Brûleur d'Âmes. Cette édition contient 62 cartes différentes." , 0, 5, 2, 1, 2, 1),
("AMAZING DEFENDERS BOOSTER PACK - YU-GI-OH!", 5.99, 10, "assets/img/articles/Yu-Gi-Oh/Booster/English/AMDE1ENG.png", "Paquet de 7 cartes Yu-Gi-Oh! en anglais de l'édition Amazing Defenders. Elle inclut 60 cartes différentes dont 10 Ultra Rare et 15 Super Rare." , 0, 6, 2, 1, 2, 1),
("DUELIST NEXUS BOOSTER PACK - YU-GI-OH!", 5.99, 50, "assets/img/articles/Yu-Gi-Oh/Booster/English/DUNE1ENG.png", "Paquet de 9 cartes Yu-Gi-Oh! en anglais de l'édition Duelist Nexus. Elle inclut 100 cartes différentes dont 14 Ultra Rare et 10 Secret Rare." , 0, 7, 2, 1, 2, 1),
("MAZE OF MILLENNIA BOOSTER PACK - YU-GI-OH!", 5.99, 10, "assets/img/articles/Yu-Gi-Oh/Booster/English/MZMI1ENG.png", "Paquet de 7 cartes Yu-Gi-Oh! en anglais de l'édition Maze of Millennia. Cette édition inclut 85 cartes dont 11 Ultra Rares et 16 Super Rares." , 0, 8, 2, 1, 2, 1),
("Pokémon - Booster Français - EV05 - Ecarlate et Violet - Forces Temporelles", 5.30, 10, "assets/img/articles/Pokemon/booster/Français/forces-temporelles1FR.jpg", "Booster de 10 cartes.
Les rangs des Pokémon Temps passé et Temps futur continuent de grossir. Serpente-Eau-ex se libère des chaînes du passé aux côtés d’Ire-Foudre-ex, tandis que Vert-de-Fer-ex impose une justice high-tech avec Chef-de-Fer-ex. À l’extérieur de la Zone Zéro, Triopikeau et Farigiraf changent de type en tant que Pokémon-ex Téracristal, et les Dresseurs et Dresseuses Pokémon du monde entier se préparent pour le retour des cartes HIGH-TECH aux effets puissants et uniques. Une brèche temporelle s’est ouverte, amenant avec elle des bêtes sauvages et des créatures futuristes dans l’extension Écarlate et Violet – Forces Temporelles du JCC Pokémon !
Plus de 160 cartes :
Retour des cartes HIGH-TECH: 6 cartes Dresseur et une Énergie spéciale
Plus de nouveaux Pokémon Temps passé et Temps futur
Plus d’une dizaine de tout nouveaux Pokémon-ex, dont des Pokémon-ex Téracristal d’un type différent
Des dizaines de Pokémon et de cartes Dresseur aux illustrations spéciales.

Points-clés
Plus 180 cartes dont 15 nouveaux Pokémon-ex
L’introduction dans le JCC Pokémon des Pokémon Paradox, de nouveaux Pokémon Temps passé et Temps futur
Pokémon-ex Téracristal dont le type a changé avec une apparence rappelant les cristaux, notamment un Carchacrok-ex de type Eau
VERSION FRANÇAISE" , 0, 9, 1, 1, 1, 1),

("Yu-Gi-Oh! - Coffret - Batailles de Légende : Chapitre 1", 16.90, 5, "assets/img/articles/Yu-Gi-Oh/coffret/Français/battles-of-legends1FR.jpg", "Batailles de Légende : Chapitre 1 vous offre un rappel des cartes les plus populaires de Batailles de Légende : Vengeance de la Lumière, Batailles de Légende : Vengeance Impitoyable, Batailles de Légende : La Vengeance du Héros et Batailles de Légende : Armageddon, ainsi que des cartes apparentées provenant d'autres éditions antérieures !

Les points forts de cet immense set sont les suivants :

* Le retour de monstres très attendus comme Numéro 90 : Seigneur Photon aux Yeux Galactiques et Empereur du Chaos, le Dragon d'Armageddon.

* Une nouvelle chance de découvrir la version en langue astrale du Numéro 39 : Utopie, publié à l'origine dans Batailles de Légende : Armageddon !

* Six nouveaux dés à collectionner, chacun arborant le design d'un monstre populaire, comme le Cyber Dragon, le Dragon du Jugement ou Airman, Héros Elémentaire.

Chaque boîte de Batailles de Légende : Chapitre 1 contient un grand total de :
1 Secret Rare
6 Ultra Rares (dans des couleurs différentes)
30 communes
1 des 6 dés à collectionner" , 0, 15, 2, 1, 1, 4),

("Yu-Gi-Oh! - Tin Box - Mega-tin 2023 : 25e Anniversaire - Les Héros du Duel", 19.90, 5, "assets/img/articles/Yu-Gi-Oh/Tin_box/Français/25thTin1FR.jpg", "Célébrez notre 25e anniversaire avec notre boîte 25e anniversaire : Dueling Heroes avec deux Secrète Prismatique Rares et une Secrète du Quart de Siècle Rare en bonus dans chaque boîte !

Les Secrète Prismatique Rares sont l'une des choses que les Duellistes aiment le plus dans les Méga-Packs de chaque année, car les tins sont le SEUL endroit où l'on peut trouver ce type de rareté exclusif et magnifique. Et cette année, nous vous en offrons deux fois plus dans chaque boîte !

Chaque tin 25ème anniversaire : Dueling Heroes comprend 3 Méga-Packs de 18 cartes, chacun contenant DEUX Secrète Prismatique Rares, deux Ultra Rares, une Super Rare, une Rare, et douze Communes.

Total par tin : 6 Rares secrètes prismatiques
6 Ultra Rares
3 Super Rares
3 Rares
36 communes
(et 1 Secret Rare du Quart de Siècle - voir ci-dessous !)

Cet énorme Mega-Pack contient près de 300 cartes issues des dernières séries, dont Bataille du Chaos, Force Dimensionnelle, Explosion de l’Aile Noire, Les Maîtres Tactiques, Les Grands Créateurs, et bien d'autres encore !

De plus, chaque boîte contiendra une version Secrète du Quart de Siècle Rare de l'un des seize monstres décorant les côtés de la boîte - certains des monstres les plus célèbres et les plus emblématiques utilisés par les héros du duel de la série !" , 0, 0, 2, 1, 1, 5),

("Yu-Gi-Oh! - Tin Box - Mega-tin 2022 : Dieux du Pharaon", 24.90, 5, "assets/img/articles/Yu-Gi-Oh/Tin_box/Français/2022Tin1FR.jpg", "La troisième et dernière pièce de la légende antique est enfin là !

La Boîte des Dieux du Pharaon 2022 vous octroie la dernière pièce de la mystérieuse tablette pharaonique découverte en Égypte !

Maniez le pouvoir des Dieux du Pharaon avec une boîte sublime qui représente la partie supérieure de la Tablette des Mémoires Perdues, immortalisant ainsi Slifer, le Dragon Céleste, Obelisk, le Tourmenteur et Le Dragon Ailé de Râ !

Tout comme la Boîte des Mémoires Perdues 2020 et la Boîte des Batailles Anciennes 2021, les boîtes de 2022 ont des côtés gaufrés/gravés ainsi que des couvercles sans bord qui s'emboîtent parfaitement avec la boîte. Les boîtes peuvent ainsi être empilées les unes sur les autres pour reconstruire la tablette dans son intégralité. Si vous avez déjà les boîtes de 2020 et de 2021, cette nouvelle boîte vous permettra de compléter votre propre tablette !

Chaque Boîte des Dieux du Pharaon 2022 contient 3 grands Méga-Packs, chacun avec 1 Secrète Rare Prismatique, 2 Ultra Rares, 2 Super Rares, 1 Rare et 12 Communes issues d'un méga-set.


Chaque boîte contient au total* :

3 Cartes Secrètes Rares Prismatiques, 6 Cartes Ultra Rares, 6 Cartes Super Rares, 3 Cartes Rares, 36 Cartes Communes


Le méga-set de la Boîte Méga-Pack 2022 inclut principalement des cartes populaires sorties en 2021, parmi lesquelles Vortex Embrasé, Foudre Amplifiée, L'Aube de la Majesté, Explosion de la Destinée, et bien d'autres !" , 0, 0, 2, 1, 1, 5),

("CARTE MEW VMAX POINT DE FUSION 114/264", 15.99, 1, "assets/img/articles/Pokemon/carte/carte1.png", "Carte mew neuve" , 0, 15, 1, 2, 1, 2),
("CARTE DRAGON POUSSIERE D'ETOILE COLLECTOR RARE", 29.99, 1, "assets/img/articles/Yu-Gi-Oh/carte/carte1.png", "Carte Dragon Poussière d'Etoile neuve" , 0, 15, 2, 1, 1, 2),
("Yu Gi Oh- YGO Gold Pride Photo Finish 9 Pocket Portfolio, Sammelmappe, Doré", 11.99, 5, "assets/img/articles/Yu-Gi-Oh/Accessoires/carnet1.jpg", "Protégez votre collection avec fierté et style avec le nouveau portefeuille Duelliste à 9 poches du JEU DE CARTES À COLLECTIONNER Yu-Gi-Oh! avec les lettres de la Pride d'Or. Le recto du Portefeuille est décoré des badges des meilleurs concurrents participant à la Golden Pride de cette année, tandis que le revers montre des illustrations d'une prochaine lettre du sujet! Il est très contrarié, mais qui sortira vainqueur à la fin? Ne manquez pas les cartes de la «Golden Fierté» dans Cyberstorm Access, qui sera mis en vente en mai. Conçu avec un design sécurisé à chargement latéral, ce portefeuille de 10 pages dispose de 9 poches par page - en plaçant les cartes de l'avant vers l'arrière, vous pouvez ranger jusqu'à 180 de vos cartes les plus précieuses. Le portefeuille Duelliste à 9 poches utilise également une fonction antidérapante pour garder les cartes en sécurité et votre collection à tout moment." , 
0, 15, 2, 1, 1, 7),

("Bheddi Boîte de Rangement compatible avec YGO TCG Cartes-Peut contenir jusqu'à 110 Cartes-Vec 2 Intercalaires-pour le rangement de jeux de cartes (Forbidden One)(Noir)", 15.99, 5, "assets/img/articles/Yu-Gi-Oh/Accessoires/boite1.jpg", "🌈 Capacité de stockage : Peut contenir jusqu'à 110 cartes à pochette simple / 80 cartes à double pochette / 200 cartes sans pochettes / Non compatible avec les chargeurs supérieurs, dimension de la boîte de jeu de cartes : env. 3 x 3 x 4 pouces / 77 x 77 x 102 mm
🧭 Séparateur assorti : deux séparateurs de cartes par étui à cartes, parfaits pour organiser, séparer différents paquets de cartes et pratiques pour trier les cartes.
🎯 Matériau de qualité supérieure : fabriqué à partir de cuir PU résistant à l'eau, robuste et durable à l'extérieur et doublure en microfibre douce haute protection à l'intérieur. Équipé d'aimants à plusieurs puissances. Tous ces matériaux sans acide, sans danger pour les archives, sont parfaits pour ranger et protéger les cartes.
⛱ Premium Protection: Yu-Gi-Oh! Card Deck Box is made of a high-protection soft microfiber lining that protects your cards from scrapes and dings keeping them in mint condition." , 
0, 15, 2, 1, 1, 7),
("Yu-Gi-Oh ! - TCG : Slifer, Obelisk, Ra - Lot de 50 pochettes", 9.90, 50, "assets/img/articles/Yu-Gi-Oh/Accessoires/sleeve1.jpg", "Maîtrisez la puissance qui a été perdue il y a des millénaires avec les dieux égyptiens légendaires. Slifer le Dragon Céleste, Obelisk le Bourreau, et le Dragon ailé de Ra reviennent dans une gloire inégalée avec leurs illustrations unies sur les pochettes de cartes de juin 2021. Chaque lot contient 50 pochettes conçues pour répondre aux normes de régulation des tournois. Il n'y a pas de meilleur moyen de protéger vos cartes pendant un duel. Titre du produit et design sujets à variations." , 
0, 15, 2, 1, 1, 7),





("Pokémon - Booster Français - EV4.5 - Destinées De Paldéa", 8.90, 10, "assets/img/articles/Pokemon/booster/Français/destinée-de-paldéa.jpg", "La lumière des projecteurs brille sur les Pokémon chromatiques alors qu’ils prennent leur destinée en main et font leur grand retour dans le JCC Pokémon. Rayonnez de splendeur et découvrez des merveilles étincelantes dans l’extension Écarlate et Violet – Destinées de Paldea.


VERSION FRANÇAISE" , 0, 10, 1, 1, 1, 1),

("Pokémon - Booster Français - EV04 - Ecarlate et Violet - Faille Paradoxe", 5.90, 10, "assets/img/articles/Pokemon/booster/Français/faille-paradoxe.jpg", "Booster de 10 cartes.

Plongez dans les nuages et explorez des terres qui semblent intemporelles ! Avec leurs attaques féroces, les Pokémon Temps passé tels que Rugit-Lune-ex et Pelage-Sablé-ex apparaissent aux côtés de Pokémon Temps futur artificiels comme Gardede- Fer-ex et Paume-de-Fer-ex. Carchacrok-ex, Mewtwo-ex et d’autres Pokémon ne sont pas en reste, et se téracristallisent pour obtenir de nouveaux types. Quant à Carmadura-ex et Gromago-ex, ils rejoignent d’autres Pokémon-ex dans la bataille ! L’aventure vous attend, alors que les frontières temporelles s’entrechoquent dans Écarlate et Violet – Faille Paradoxe du JCC Pokémon.

Contenu
Chaque booster contient 10 cartes : 4 cartes communes, 3cartes peu communes et 3 cartes brillantes (dont une « rare » ou d’une rareté supérieure). Chaque booster contient également une carte Énergie et une carte à code pouvant être échangée dans le JCC Pokémon Online ou le JCC Pokémon Live. Notez bien : seuls les sets précédant Écarlate et Violet garantissent au moins une carte brillante par booster.

Points-clés
Plus 180 cartes dont 15 nouveaux Pokémon-ex
L’introduction dans le JCC Pokémon des Pokémon Paradox, de nouveaux Pokémon Temps passé et Temps futur
Pokémon-ex Téracristal dont le type a changé avec une apparence rappelant les cristaux, notamment un Carchacrok-ex de type Eau


VERSION FRANÇAISE" , 0, 12, 1, 1, 1, 1),

("Pokémon - Booster Français - EV01 - Ecarlate et Violet", 5.90, 10, "assets/img/articles/Pokemon/booster/Français/ecarlate-et-violet.jpg", "Booster de 10 cartes.

Partez pour la région de Paldea ! Rencontrez les premiers partenaires Poussacha, Chochodile et Coiffeton, et découvrez le pouvoir des Pokémon légendaires Koraidon et Miraidon en tant que Pokémon-ex. D’autres Pokémon-ex s’engagent au combat, notamment Arcanin et Léviator avec de nouvelles apparences époustouflantes. Encore plus de Pokémon apparaissent tels de vrais chefs-d’œuvre sur des cartes aux illustrations rares. Découvrez-les tous dans l’extension Écarlate et Violet du JCC Pokémon.

VERSION FRANÇAISE" , 0, 11, 1, 1, 1, 1),

("Pokémon - Booster Français - EB12 - Epée et Bouclier 12 - Tempête Argentée", 9.90, 10, "assets/img/articles/Pokemon/booster/Français/tempête-argentée.png", "Booster de 10 cartes.

Offrez une Puissance VSTAR à n’importe quel Pokémon-V avec ces cartes Outil Pokémon spéciales. Attachez Pierre Scellée Sylvestre à l’un de vos Pokémon-V pour qu’il obtienne le talent Alchimie Star. Utilisez cette puissance VSTAR pour chercher dans votre deck une carte et l’ajouter à votre main, c’est parfait pour trouver LA carte dont vous avez besoin, quand vous en avez besoin. Si vous préférez l’offensive, vous pouvez attacher Pierre Scellée Terrestre à l’un de vos Pokémon-V pour qu’il obtienne l’attaque Gravité Star, qui place des marqueurs de dégâts sur chacun des Pokémon-V de votre adversaire jusqu’à ce qu’il ne reste à chacun d’eux que 100 PV. Renversez votre adversaire avec ces puissantes cartes Outil Pokémon, et faites de l’un de vos Pokémon une star !

VERSION FRANÇAISE" , 0, 14, 1, 1, 1, 1),

("Pokémon - Booster Français - EB09 - Epée et Bouclier 9 - Stars Étincelantes", 11.90, 10, "assets/img/articles/Pokemon/booster/Français/stars-étincelantes.jpg", "Booster de 10 cartes.

Débordant de lumière, Arceus-VSTAR descend des cieux pour partager ses pouvoirs célestes avec d'autres Pokémon-V. Découvrez des constellations scintillantes et commencez votre voyage vers la grandeur stellaire avec l'extension Épée et Bouclier – Stars Étincelantes du JCC Pokémon.

Plus de 170 cartes
4 tout nouveaux Pokémon-VSTAR
20 puissants Pokémon-V et 3 énormes Pokémon-VMAX
30 cartes aux illustrations spéciales du set analogue Galerie des Dresseurs
Plus de 20 cartes Dresseur et une nouvelle carte Énergie spéciale

VERSION FRANÇAISE" , 0, 13, 1, 1, 1, 1),

("Pokémon - Coffret - EV05 Ecarlate et Violet - Forces Temporelles - Dresseur d'Elite : Serpente-Eau", 54.90, 2, "assets/img/articles/Pokemon/coffrets/Forces-Temporelles1FR.jpg", "Les rangs des Pokémon Temps passé et Temps futur continuent de grossir.

Serpente-Eau-ex se libère des chaînes du passé aux côtés d’Ire-Foudre-ex, tandis que Vert-de-Fer-ex impose une justice high-tech avec Chef-de-Fer-ex.

À l’extérieur de la Zone Zéro, Triopikeau et Farigiraf changent de type en tant que Pokémon-ex Téracristal, et les Dresseurs et Dresseuses Pokémon du monde entier se préparent pour le retour des cartes HIGH-TECH aux effets puissants et uniques.

Une brèche temporelle s’est ouverte, amenant avec elle des bêtes sauvages et des créatures futuristes dans l’extension Écarlate et Violet – Forces Temporelles du JCC Pokémon !
Plus de 160 cartes :
Retour des cartes HIGH-TECH: 6 cartes Dresseur et une Énergie spéciale
Plus de nouveaux Pokémon Temps passé et Temps futur
Plus d’une dizaine de tout nouveaux Pokémon-ex, dont des Pokémon-ex Téracristal d’un type différent
Des dizaines de Pokémon et de cartes Dresseur aux illustrations spéciales.

Contenu :
9 boosters Écarlate et Violet – Forces Temporelles du JCC Pokémon,
1 carte promo brillante entièrement illustrée
65 protège-cartes,
45 cartes Énergie du JCC Pokémon,
1 guide de jeu de l’extension Écarlate et Violet – Faille Paradoxe,
6 dés marqueurs de dégâts,
1 dé lancer de pièce autorisé en compétition,
2 marqueurs d’États Spéciaux en plastique,
1 coffret de collection avec 4 séparateurs,
1 carte à code pour le Jeu de Cartes à Collectionner Pokémon Live

Points-clés
Le tout-en-un pour les collectionneurs et joueurs sous 2 formats Hurle-Queue ou de Hotte-de-Fer
Plus 180 cartes dont 15 nouveaux Pokémon-ex
L’introduction dans le JCC Pokémon des Pokémon Paradox, de nouveaux Pokémon Temps passé et Temps futur" , 0, 9, 1, 1, 1, 4),

("Pokémon - Coffret - Motorizard Ex", 29.90, 3, "assets/img/articles/Pokemon/coffrets/motorizard.jpg", "Arrivez en roue libre à votre prochain match du JCC Pokémon avec le soutien de Motorizard-ex !

Le Pokémon Monture est prêt à faire chauffer la gomme sur la zone de combat avec son attaque À Toute Puissance.

Grâce à elle, vous pouvez infliger des dégâts tout en cherchant dans votre deck une Énergie de base pour l'attacher à Motorizard-ex.

Quand vous souhaitez passer à la vitesse supérieure, utilisez Pleins Gaz pour infliger de gros dégâts !

Le Coffret Motorizard-ex du JCC Pokémon contient également une carte brillante de Motisma très utile et quatre boosters pour compléter votre collection.

Ce coffret contient :

- 1 carte promo brillante de Motorizard-ex
- 1 carte brillante de Motisma
- 1 carte grand format brillante de Motorizard-ex
- 4 boosters du JCC Pokémon
- 1 carte à code pour le JCC Pokémon Live" , 0, 15, 1, 1, 1, 4),

("Pokémon - The Pokémon Company - Coffret - Dogrino Ex", 22.90, 2, "assets/img/articles/Pokemon/coffrets/dogrino.jpg", "Dogrino est doux en général, mais lorsqu’il doit protéger ses alliés, il prend un air menaçant. Faites équipe avec ce Pokémon loyal et lancez des attaquespuissantes qui décourageront vos adversaires ! Vous trouverez Dogrino-ex en tant que carte promo brillante en version pour le jeu et grand format, ainsiqu’une carte de Grondogue, le Pokémon Jeunot.

Contenu :

1 carte promo brillante de Dogrino-ex
1 carte brillante de Grondogue
1 carte grand format brillante de Dogrino-ex
4 boosters du JCC Pokémon
1 carte à code pour le JCC Pokémon Live" , 0, 15, 1, 1, 1, 4),

("Pokémon - The Pokémon Company - Pokébox - Tin Box : Psy", 16.90, 2, "assets/img/articles/Pokemon/tin-box/GengarTin1FR.jpg", "Une Pokémon Tin Cube contenant :
* 3 boosters Pokémon
* 2 pages d'autocollants Pokemon" , 0, 15, 1, 1, 1, 5),

("Pokémon - The Pokémon Company - Pokébox - Tin Box : Métal", 16.90, 2, "assets/img/articles/Pokemon/tin-box/MetalTin1FR.jpg", "Une Pokémon Tin Cube contenant :
* 3 boosters Pokémon
* 2 pages d'autocollants Pokemon" , 0, 15, 1, 1, 1, 5),

("Pokémon - The Pokémon Company - Pokébox - Tin Cube : Dragon", 16.90, 2, "assets/img/articles/Pokemon/tin-box/DragonTin1FR.jpg", "Une Pokémon Tin Cube contenant :
* 3 boosters Pokémon
* 2 pages d'autocollants Pokemon" , 0, 15, 1, 1, 1, 5),

("Pokémon - Pokébox - Mini Tin - EV4.5 Ecarlate et Violet - Destinées de Paldea : Dofin", 19.90, 5, "assets/img/articles/Pokemon/tin-box/DophinTin1FR.jpg", "Elle tient au creux de la main, remplie de promesses : la Mini-boîte est remplie de cartes ! Elle est parfaite pour cette extension spéciale plein de duels, pour tous les Dresseurs et les collectionneurs. Cinq visuels sont disponibles !

Contenu :
2 boosters Écarlate et Violet – Destinées de Paldea du JCC Pokémon
1 page d’autocollants
1 carte artistique Pokémon avec une illustration de la mini-boîte." , 0, 15, 1, 1, 1, 5);

