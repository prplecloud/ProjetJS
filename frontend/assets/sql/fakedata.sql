INSERT INTO `state`(`name`) VALUES ("Neuf"), ("Très bon état"), ("Bon état"), ("Etat correct");

INSERT INTO `licence`(`name`) VALUES ("Pokémon"), ("Yu-Gi-Oh!");

INSERT INTO `langage`(`name`) VALUES ("Français"), ("Anglais"), ("Allemand"), ("Espagnol");

INSERT INTO `categories`(`name`) VALUES ("Booster"), ("Cartes"), ("Blister"), ("Coffret"), ("Tin-box"), ("Metal-box"), ("Accessoires");

INSERT INTO `products`(`name`, `price`, `stock`, `description`, `réduction`, `edition_id`, `licence_id`, `state_id`, `langage_id`, `categories_id`) VALUES ("BOOSTER LES VAILLANTS FRACASSEURS - YU-GI-OH! FR", 4.5, 10, "Paquet de 7 cartes Yu-Gi-Oh! en français de l'édition Les Vaillants Fracasseurs. Elle inclut 60 cartes différentes dont 10 Ultra Rares et 15 Super Rares." , 0, 11, 2, 1, 1, 1)