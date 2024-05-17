INSERT INTO `state`(`name`) 
VALUES ("Neuf"), ("Très bon état"), ("Bon état"), ("Etat correct");

INSERT INTO `licence`(`name`) 
VALUES ("Pokémon"), ("Yu-Gi-Oh!");

INSERT INTO `langage`(`name`) 
VALUES ("Français"), ("Anglais"), ("Allemand"), ("Espagnol");

INSERT INTO `categories`(`name`) 
VALUES ("Booster"), ("Cartes"), ("Blister"), ("Coffret"), ("Tin-box"), ("Metal-box"), ("Accessoires");

INSERT INTO `edition`(`name`) 
VALUES ("Les Vaillants Fracasseurs"), ("L'Ère du Seigneur Suprême"), ("Héritage de la destruction"),  ("Cauchemar Fantome"), ("Duelliste légendaire"), ("Incroyables Défenseurs"), ("Nexus du duelliste"), ("Le labyrinthe du millénaire");

INSERT INTO `products`(`name`, `price`, `stock`, `description`, `réduction`, `edition_id`, `licence_id`, `state_id`, `langage_id`, `categories_id`) 
VALUES ("BOOSTER LES VAILLANTS FRACASSEURS - YU-GI-OH! FR", 5.99, 10, "Paquet de 7 cartes Yu-Gi-Oh! en français de l'édition Les Vaillants Fracasseurs. Elle inclut 60 cartes différentes dont 10 Ultra Rares et 15 Super Rares." , 0, 1, 2, 1, 1, 1), 
("BOOSTER L'ERE DU SEIGNEUR SUPREME - YU-GI-OH! FR", 5.99, 10, "Paquet de 9 cartes Yu-Gi-Oh! en français de l'édition L'Ère du Seigneur Suprême. Cette édition inclut 100 cartes dont 14 Ultra Rares et 10 Secret Rares." , 0, 2, 2, 1, 1, 1),
("BOOSTER HERITAGE DE LA DESTRUCTION - YU-GI-OH! FR", 5.99, 10, "Paquet de 9 cartes Yu-Gi-Oh! en français de l'édition Héritage de la Destruction. Elle inclut 100 cartes différentes dont 14 Ultra Rare et 10 Secret Rare." , 0, 3, 2, 1, 1, 1),
("BOOSTER CAUCHEMAR FANTOME - YU-GI-OH! FR", 5.99, 10, "Paquet de 9 cartes Yu-Gi-Oh! en français de l'édition Cauchemar Fantome. Elle inclut 100 cartes différentes dont 14 Ultra Rare et 10 Secret Rare." , 0, 4, 2, 1, 1, 1),
("BOOSTER DUELLISTE LEGENDAIRE - YU-GI-OH! FR", 2.99, 10, "Paquet de 5 cartes Yu-Gi-Oh! en français de l'extension Duellistes Légendaires : Volcan Brûleur d'Âmes. Cette édition contient 62 cartes différentes." , 0, 5, 2, 1, 1, 1),
("BOOSTER INCROYABLES DEFENSEURS - YU-GI-OH! FR", 5.99, 10, "Paquet de 7 cartes Yu-Gi-Oh! en français de l'édition Incroyables Défenseurs. Elle inclut 60 cartes différentes dont 10 Ultra Rare et 15 Super Rare." , 0, 6, 2, 1, 1, 1),
("BOOSTER NEXUS DU DUELLISTE - YU-GI-OH! FR", 5.99, 50, "Paquet de 9 cartes Yu-Gi-Oh! en français de l'édition Nexus du Duelliste. Elle inclut 100 cartes différentes dont 14 Ultra Rare et 10 Secret Rare." , 0, 7, 2, 1, 1, 1),
("BOOSTER LE LABYRINTHE DU MILLENAIRE - YU-GI-OH! FR", 5.99, 10, "Paquet de 7 cartes Yu-Gi-Oh! en français de l'édition Le labyrinthe du Millénaire. Cette édition inclut 85 cartes dont 11 Ultra Rares et 16 Super Rares." , 0, 8, 2, 1, 1, 1)
("VALIANT SMASHERS BOOSTER PACK - YU-GI-OH!", 5.99, 10, "Paquet de 7 cartes Yu-Gi-Oh! en anglais de l'édition Valiant Smashers. Elle inclut 60 cartes différentes dont 10 Ultra Rares et 15 Super Rares." , 0, 1, 2, 1, 1, 1), 
("AGE OF OVERLORD BOOSTER PACK - YU-GI-OH!", 5.99, 10, "Paquet de 9 cartes Yu-Gi-Oh! en anglais de l'édition Age of Overlord. Cette édition inclut 100 cartes dont 14 Ultra Rares et 10 Secret Rares." , 0, 2, 2, 1, 1, 1),
("LEGACY OF DESTRUCTION BOOSTER PACK - YU-GI-OH!", 5.99, 10, "Paquet de 9 cartes Yu-Gi-Oh! en anglais de l'édition Legacy of Destruction. Elle inclut 100 cartes différentes dont 14 Ultra Rare et 10 Secret Rare." , 0, 3, 2, 1, 1, 1),
("PHANTOM NIGHTMARE BOOSTER PACK - YU-GI-OH!", 5.99, 10, "Paquet de 9 cartes Yu-Gi-Oh! en anglais de l'édition Phantom Nightmare. Elle inclut 100 cartes différentes dont 14 Ultra Rare et 10 Secret Rare." , 0, 4, 2, 1, 1, 1),
("LEGENDARY DUELISTS BOOSTER PACK - YU-GI-OH!", 2.99, 10, "Paquet de 5 cartes Yu-Gi-Oh! en anglais de l'extension Legendary Duelists : Volcan Brûleur d'Âmes. Cette édition contient 62 cartes différentes." , 0, 5, 2, 1, 1, 1),
("AMAZING DEFENDERS BOOSTER PACK - YU-GI-OH!", 5.99, 10, "Paquet de 7 cartes Yu-Gi-Oh! en anglais de l'édition Amazing Defenders. Elle inclut 60 cartes différentes dont 10 Ultra Rare et 15 Super Rare." , 0, 6, 2, 1, 1, 1),
("DUELIST NEXUS BOOSTER PACK - YU-GI-OH!", 5.99, 50, "Paquet de 9 cartes Yu-Gi-Oh! en anglais de l'édition Duelist Nexus. Elle inclut 100 cartes différentes dont 14 Ultra Rare et 10 Secret Rare." , 0, 7, 2, 1, 1, 1),
("MAZE OF MILLENNIA BOOSTER PACK - YU-GI-OH!", 5.99, 10, "Paquet de 7 cartes Yu-Gi-Oh! en anglais de l'édition Maze of Millennia. Cette édition inclut 85 cartes dont 11 Ultra Rares et 16 Super Rares." , 0, 8, 2, 1, 1, 1);