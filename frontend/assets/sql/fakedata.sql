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
("Yu-Gi-Oh! - Boite de Boosters Français - Collection Rareté du 25e Anniversaire II
", 209.90, 3, "assets/img/articles/Yu-Gi-Oh/Blister/Français/CollectionRareté2FR.jpg", "Boite de 24 Boosters de 9 cartes en français.

La Collection de raretés du 25e anniversaire de l'année dernière a fait des ravages, c'est pourquoi nous avons immédiatement commencé à travailler sur une suite. Afin de la sortir le plus rapidement possible, nous avons apporté quelques modifications à la configuration tout en conservant toutes les bonnes choses (et la valeur !) intactes..

Les paquets de la Collection Raretés du 25e anniversaire II contiennent deux fois plus de Rares Ultra et Secrètes par paquet, ce qui vous donne deux fois plus de chances d'obtenir des Rares de luxe par paquet. (Rares secrètes du quart de siècle, Rares ultimes et de collection de style prismatique, et Rares de platine) !

Nous avons réduit l'emballage, il y aura donc moins de paquets à ouvrir (et moins à jeter) pour obtenir le même nombre de cartes. Et avec deux fois plus de cartes par paquet, environ deux tiers des paquets devraient contenir au moins une rareté de luxe, c'est-à-dire une carte de luxe rare. Et environ un tiers devrait en avoir plus d'une. Vous pourriez même obtenir jusqu'à SIX rares de luxe dans le même paquet, cette fois-ci !

Si vous avez manqué la première collection de raretés, voici comment cela fonctionne : Chaque carte du set est disponible dans toutes les raretés, avec 3 raretés standard (Super Rares, Super Rares, Super Rares) et quatre raretés spéciales de luxe : Rares secrètes du quart de siècle (célébrant le 25e anniversaire avec un effet étincelant spécial et un logo en filigrane), Rares secrètes Platine, Rares Collector de style prismatique (auparavant disponibles uniquement à l'étranger), et les Ultimate Rares de style Prismatic (avec un vernis spécial en 3D, et également disponibles uniquement à l'étranger jusqu’à récemment).

L'ouverture des paquets de la Collection Raretés est une véritable cascade de cartes très puissantes, dans sept des raretés les plus populaires du jeu. Si vous n'avez pas encore fait l'expérience de cette extravagance d’un set entièrement foil, vous allez vous régaler !

TOUTES LES CARTES SONT DIFFÉRENTES DE LA PREMIÈRE COLLECTION DE RARETÉS ! Voici un aperçu de ce que vous pouvez trouver :
- Des cartes de tournoi difficiles à trouver comme Accècodeur Bavard et Ames des Magiciens !- Magicien silencieux et Epéiste silencieux, disponibles pour la première fois depuis huit ans ! Et juste après les toutes nouvelles cartes silencieuses qui arriveront en avril dans Héritage Destruction du mois d'avril.- Des cartes qui scintilleront dans votre main en attendant le moment parfait pour sceller votre victoire ! Les cartes de tournoi comme Hurluberlu & Oiseau de vérouillage et Ogre Fantôme & Lapin des Neiges, ainsi que Fantôme du défunt & Fraicheur Lunaire, et Phantazmay Dragon Fantastique !Les cartes de Magie Terrain des decks compétitifs liés à l'histoire de Visas Starfrost : Planète primitive Reichphobia, Planète Originelle Perlereino, Planète Pressurisée Wraitsoth et Planète Paisible Calarium !- Variant Art ! La version biker de I:P Masquerena et la version féroce de Chat Sauveteur seront désormais disponibles dans les 7 raretés différentes ! Plus Apollousa, Arc de la déesse !- Et des dizaines et des dizaines d'autres !- La Collection de raretés du 25e anniversaire II est un ensemble spectaculaire de 79 cartes uniques, dont 2 cartes du set sont également disponibles en tant que Variant Art.

Que vous soyez un collectionneur ou un duelliste compétitif, la Collection Raretés du 25e anniversaire II est remplie de cartes que tout le monde voudra se procurer ! *Le nom et le contenu du set sont susceptibles d'être modifiés.  " , 
0, 15, 2, 1, 1, 3),

("Yu-Gi-Oh! - Boite de Boosters Français - 24 Boosters - Héritage de la Destruction
", 99.99, 3, "assets/img/articles/Yu-Gi-Oh/Blister/Français/LEDE-Blister.jpg", "Boite de 24 Boosters de 9 cartes en français.

Quel genre d'héritage allez-vous laisser ? Cimentez votre légende en tant que duelliste de haut niveau avec le dernier booster de base du jeu de cartes Yu-Gi-Oh! Héritage de la Destruction !

Revivez les moments mémorables du Duel final entre Yugi Muto et Atem avec les nouvelles versions du Magicien Silencieux et de l'Epéiste Silencieux, ainsi qu’un nouveau monstre dont l'illustration représente les trois membres du trio Gadget original, et de nouvelles cartes comme Card of Sanctity et Ties of the Brethren dont l'illustration montre tous ces nouveaux monstres et les liens qu'ils partagent.

Découvrez une toute nouvelle version de Gandora le Dragon de la Destruction qui peut détruire et bannir toutes les autres cartes sur le terrain, puis faire l'Invocation Spéciale d'un monstre de votre Deck !

Trident Dragion a été dévoilé pour la première fois dans Raging Battle en 2009, et maintenant dans Héritage de la Destruction, un nouveau thème de Dragon de Feu inspiré de ce monstre Synchro titanesque fait son apparition. Remplissez votre terrain de monstres Dragon de Feu pour déclencher des attaques implacables et effectuer des invocations Synchro pendant la phase de combat ! Vous pouvez terminer les duels rapidement en invoquant les gigantesques monstres Synchro Dragon de ce thème depuis le Cimetière, à chaque fois que trois attaques ou plus ont été déclarées !

Entendez la mélodie des nouvelles cartes Mélodieuses ! Écoutez bien et vous entendrez le chant d'une paire de nouveaux Monstres Pendule qui entrent en action après que vous les ayez utilisés pour une Invocation Fusion et qu'ils aient été ajoutés à votre Extra Deck, avec un tout nouveau Sort Fusion et 2 nouveaux Monstres de Fusion pour l'accompagner !

La stratégie d'Invocation Rituelle Voix sans Voix a fait ses débuts dans Cauchemar Fantôme avec une réimagination du Monstre Rituel classique, Skull Guardian. Une nouvelle version impressionnante du Monstre Rituel Saffira, Reine des Dragons le rejoindra dans L'Héritage de la Destruction, ainsi qu'une toute nouvelle Carte Magie Continue qui recycle vos cartes, permet de nouvelles Invocations Rituelles et renforce les monstres que vous invoquez par Rituel, les protégeant ainsi de la destruction par le combat !

Le jeu de booster complet de l'Héritage de la Destruction contient 100 nouvelles cartes :
10 cartes rares secrètes
14 cartes Ultra Rares
26 Super Rares
50 communes
(24 de ces cartes sont également disponibles en tant que Rares Secrètes du Quart de Siècle et 1 carte spéciale n'est disponible qu'en tant que carte rare secrète du quart de siècle)" , 
0, 3, 2, 1, 1, 3),

("Yu-Gi-Oh! - Boite de Boosters Français - 24 Boosters - Les Vaillants Fracasseurs
", 99.99, 3, "assets/img/articles/Yu-Gi-Oh/Blister/Français/VASM-Blister.jpg", "Boite de 24 Boosters de 7 cartes en français.

Montez en première ligne et menez une attaque totale contre votre adversaire avec 3 nouveaux thèmes dans Valiant Smashers !

Ils appartiennent à un musée, mais les monstres d'antan ressuscitent, plus puissants que jamais, grâce au royaume des enfers de Mementolan ! Envoyez une armée de monstres sans fin pour terrasser vos ennemis, puis recyclez les pièces pour invoquer le nouveau monstre boss de niveau 11 à 5000 ATK, Tecuhtlica !

Que font deux brillants chevaliers pendant leur temps libre ? Ils construisent un warbot mecha golem magique, bien sûr ! Déployez, préparez, améliorez avec ce Deck combo unique qui peut jouer ses monstres directement depuis le Deck en tant que Pièges Continus, puis les invoquer dans la Zone Monstre. Construisez un monstre synchro de niveau 12 qui vous rapportera une carte et détruira le monstre le plus puissant de votre adversaire !

Explorez les secrets du mystérieux instrument de verre ! S'agit-il d'un cadeau venu d'en haut ou d'une malédiction venue d'en bas ? Cette stratégie Pendule & Lien vous propose une série ininterrompue de décisions : choisirez-vous la lumière ou l'obscurité, la guérison ou le mal ? Et tout est-il ce qu'il semble être au premier abord ?

Le booster Valiant Smashers contient 60* cartes :
10 Ultra Rares
15 Super Rares
35 Rares
15 cartes du set sont également disponibles en tant que Collector Rare
3 cartes du set sont également disponibles en tant que Secrètes Rare du Quart de Siècle", 
0, 1, 2, 1, 1, 3),

("Yu-Gi-Oh! - Boite de Boosters Français - 24 Boosters - Le Labyrinthe du Millénaire
", 99.99, 3, "assets/img/articles/Yu-Gi-Oh/Blister/Français/MAZM-Blister.jpg", "Boite de 24 Boosters de 7 cartes en français.

Maze of Millennia entame la nouvelle année avec de nouvelles cartes que l'on croyait perdues depuis longtemps, vues dans la série télévisée, et certaines des cartes de tournoi les plus en vogue du moment, qui arriveront en janvier 2024 ! Du pouvoir hypnotique de l'Œil d'Illusion de Pégase au mal invisible de Clorless, Roi du Chaos du Monde des Ténèbres, vous aurez fort à faire avec des dizaines de nouvelles cartes qui sont apparues pour la première fois dans les nombreux mondes de Yu-Gi-Oh ou qui ont été inspirées par ces derniers !

Vous aurez besoin d'une source de lumière pour traverser le labyrinthe, alors commencez par la toute nouvelle carte Feu de joie ! Cette carte Magie tant attendue ajoute à votre main n'importe quel monstre de type Pyro de niveau 4 ou inférieur de votre Deck. C'est un must pour les Duellistes intéressés par le nouveau thème à venir de Cauchemar Fantôme, ou pour tous les Duellistes qui utilisent les cartes Volcaniques des Duellistes Légendaires : Soulburning Volcano ou d'autres decks enflammés !

Obtenez un 2 pour 1 de votre Extra Deck avec Harmonic Synchro Fusion ! Ce sort vous permet de sacrifier à 2 monstres pour faire l'Invocation Spéciale d'un Monstre de Fusion qu'ils pourraient former ET d'un Monstre Synchro qu'ils pourraient former - vous obtenez les deux ! Utilisez-vous Garura, Ailes de la vie résonnante de la Tin box du 25e anniversaire : Duel de héros ? Vous pouvez désormais invoquer Garura et obtenir un Monstre Synchro gratuit pour permettre à Garura d'attaquer directement et de faire deux fois plus de dégâts !

Infectez l'Extra Deck de votre adversaire avec la puissance obscure du Numéro 1 : Roi de l'Infection Buzz ! Ce Monstre Xyz de Rang 8 vous permet de regarder dans l'Extra Deck de votre adversaire et d'éliminer une carte dangereuse avant même qu'elle ne soit jouée. Ce démon est également facile à invoquer avec les nombreux monstres Horus de Niveau 8 de Age of Overlord ! Ajoutez à cela un autre effet qui peut détruire n'importe quelle carte contrôlée par votre adversaire, et infliger des dégâts si vous avez ciblé un monstre, et la révolte des Fiends dans le monde du Duel ne semble pas prête de s'arrêter !

Parfois, les meilleures choses dans la vie ne sont pas gratuites. Le Retournement de Transaction va vous coûter la moitié de vos Points de Vie, mais va dupliquer n'importe quelle Carte Piège Normale dans l'un ou l'autre des Cimetières ! Tout d'abord, vous pouvez la jouer depuis votre Terrain et copier un Piège Normal dans le Cimetière de votre adversaire, puis vous pouvez la bannir de votre Cimetière pour copier une Carte Piège Normale dans le vôtre. Si vous venez de construire votre Deck Labrynth avec les cartes de la Tin box 25th Anniversary Duel de Héros, vous ne manquerez pas de vous procurer cette carte piège d'une utilité inépuisable pour l'accompagner !

Encore plus de surprises vous attendent dans le Labyrinthe des millénaires !

Le set complet du Labyrinthe de Millénium contient 85 cartes :
11 Ultra Rares 16 Super Rares 57 Rares 1 carte secrète rare du quart de siècle (16 cartes sont également disponibles en tant que cartes rares de collection)

Chaque booster contient 7 cartes :
1 carte foil par paquet 6 cartes rares par paquet" , 
0, 8, 2, 1, 1, 3),

("Yu-Gi-Oh! - Boite de Boosters Français - 24 Boosters - Nexus du Duelliste
", 79.99, 3, "assets/img/articles/Yu-Gi-Oh/Blister/Français/DUNE-Blister.jpg", "Boite de 24 Boosters de 9 cartes en français.

Reprenez le flambeau et entrez dans le Nexus avec le set de booster de cet été !

Faites passer vos stratégies d'invocation Synchro à un tout nouvel univers de vitesse avec de nouvelles cartes inspirées de Yu-Gi-Oh! 5D’s, y compris le puissant Dragon Cramoisi de la série animée, maintenant ramené à la vie en tant que véritable Monstre Synchro ! N'oubliez pas de vous procurer Assault Synchron de Battles of Legend : Monstrous Revenge, afin que vous puissiez vous lancer dans cette stratégie à grande vitesse !

Les chevaliers de l'été reviennent ! Trois ans après leur première apparition dans l’Ascension du Duelliste, la saga épique des Chevaliers Noble Inferno se poursuit dans Duelist Nexus ! Dépoussiérez votre Empereur Charles, Chevalier Noble Inferno et vos magies d'équipement car vous en aurez besoin pour invoquer un tout nouveau Monstre Lien-1 de 3000 ATK qui peut réduire en cendres les effets de magies/pièges de votre adversaire !

Il n'y a pas que l'histoire médiévale qui prend vie dans Duelist Nexus ! L'histoire naturelle revient à la charge avec de nouvelles cartes Dinosaures, dont un nouveau type de Grenosaure, et des Evolsaures qui peuvent évoluer en un puissant Evolzar de Rang 6 ! Vous trouverez également de nouvelles cartes pour les decks introduits dans Accès à la Cyber-Tempête comme Nemleria ainsi que plusieurs surprises impressionnantes que vous devrez attendre de voir !

Duelist Nexus inclut également un tout nouveau thème de Première Mondiale et introduit pour la première fois les Rares Secrètes du Quart de Siècle dans les boosters de base ! 25 cartes seront disponibles en tant que Rares Secrètes du Quart de Siècle pour représenter les 25 ans du jeu de cartes Yu-Gi-Oh!", 
0, 7, 2, 1, 1, 3),

("Yu-Gi-Oh! - Boite de Boosters Français - 24 Boosters - Cauchemar Fantôme
", 79.99, 3, "assets/img/articles/Yu-Gi-Oh/Blister/Français/PHNI-Blister.jpg", "Boite de 24 Boosters de 9 cartes en français.

Ne fermez pas les yeux, le Cauchemar Fantôme vous guette au coin de la rue ! Ce set de 100 nouvelles cartes est rempli de nouvelles cartes stupéfiantes qui sont de l'étoffe de vos rêves (et des cauchemars de vos adversaires...). Déverrouillez les secrets terrifiants des nouveaux thèmes, découvrez de nouvelles cartes pour vos favoris et rencontrez des monstres encore plus mémorables ! Quelle que soit la direction que vous prenez, vous ne pourrez pas échapper aux nouvelles cartes passionnantes de Cauchemar Fantôme !

Yubel est de retour ! À la fois ami et ennemi de Jaden dans Yu-Gi-Oh ! GX, Yubel est apparu pour la première fois dans Phantom Darkness en 2008 ! Cauchemar Fantôme introduit de nouveaux monstres, magies et pièges à effet qui semblent familiers, mais qui débloquent une toute nouvelle stratégie pour Yubel. Augmentez votre puissance avec les 3 formes originales de Yubel, ou utilisez la nouvelle Carte Piège Continu qui vous permet de fusionner l'invocation d'un nouveau Monstre de Fusion Yubel en utilisant les monstres de votre adversaire en tant que matériel de fusion !

Les tempétueux Majespectres repartent à l'assaut dans le Cauchemar Fantôme ! Ces ombrageux monstres pendulaires sont difficiles à cerner car ils ne peuvent pas être ciblés ou détruits par les effets de cartes de votre adversaire. À l'origine, il n'y avait pas de Majespectre pour votre Extra Deck, mais dans Cauchemar Fantôme vous en trouverez deux : un nouveau Monstre Xyz/Pendule de Rang 4 et un Monstre Lien Link-2. Ces nouveaux monstres vous permettront d'avoir tous les monstres Majespectre dont vous avez besoin, où et quand vous en avez besoin !

Il est temps de dépoussiérer vos vieux monstres Rituel, car un nouveau thème axé sur les rituels est en train de voir le jour et permet d'invoquer certains de vos anciens favoris directement depuis votre deck. Ces nouvelles cartes peuvent être jouées comme une stratégie à part entière, ou être utilisées pour améliorer toute stratégie qui permet d'invoquer rituellement des monstres Rituels Guerrier Lumière et/ou Dragon Lumière !

Les échos d'une ancienne bataille se répètent encore et encore tandis qu'un tout nouveau thème Pyro en première mondiale illumine le terrain dans Cauchemar fantôme. N'oubliez pas de vous procurer Maze of Millennia pour obtenir vos copies de Bonfire afin d'être prêt à l'essayer lors du lancement de Phantom Nightmare en février !

Et il y a encore bien plus à découvrir. Alors gardez l'œil ouvert pour ne pas tomber sans préparation dans le Cauchemar fantôme !

Le set de booster complet Phantom Nightmare contient 100 nouvelles cartes :
10 cartes Rares Secrètes 14 cartes Ultra Rares 26 Super Rares 50 communes
(24 de ces cartes sont également disponibles en tant que Rares Secrètes du Quart de Siècle et 1 carte spéciale est UNIQUEMENT disponible en tant que Rare Secrète du Quart de Siècle ! )", 
0, 4, 2, 1, 1, 3),

("Yu-Gi-Oh! - Boite de Boosters Français - 24 Boosters - Incroyables Défenseurs
", 99.99, 3, "assets/img/articles/Yu-Gi-Oh/Blister/Français/AMDE-Blister.jpg", "Boite de 24 Boosters de 7 cartes en français.

Trois nouveaux thèmes uniques sont prêts pour l'action dans Amazing Defenders ! Ce jeu de 60 cartes vous offre de nouvelles façons de construire de puissants monstres capables de dominer les duels. Chaque thème a un style de jeu unique à apprécier, alors essayez les 3 et voyez lequel est votre préféré ! Voici un avant-goût des choses à venir :

Un véhicule de secours entièrement équipé qui est le premier à arriver sur les lieux ! Il a tous les outils dont vous avez besoin pour survivre et surmonter toute menace.

Un monstre Xyz qui a besoin d'un peu d'attention pour atteindre son plein potentiel ! Élevez-le bien et il n'y a rien que vous ne puissiez accomplir ensemble.

Un monstre de rituel qui n'apparaît que lorsqu'on maîtrise la danse mystique. Quels sont les pouvoirs qu'il détient ?

En plus des cartes qui composent ces trois stratégies, Amazing Defenders inclura également des cartes plus anciennes pour vous aider à construire ces Decks. De plus, 15 cartes de la série seront également disponibles en tant que Collector Rare !

Le booster Amazing Defenders contient 60 cartes :
10 Ultra Rares
15 Super Rares
35 Rares

Chaque paquet de booster contient 7 cartes :
1 carte Foil par paquet
6 cartes rares par paquet", 
0, 6, 2, 1, 1, 3),

("Yu-Gi-Oh! - Decks de Structure - Kit de Démarrage pour 2 Joueurs Yu-Gi-Oh!
", 20.90, 3, "assets/img/articles/Yu-Gi-Oh/coffret/Français/Debutant.jpg", "Le nouveau Yu-Gi-Oh! JCJ Kit de Démarrage pour 2 Joueurs est le moyen idéal pour tout nouveau duelliste d’apprendre les ficelles,
avec un ami, en famille, ou même tout seul !

En utilisant 2 Decks différents pour partir au combat, la bande dessinée de 64 pages du Kit de Démarrage vous fait vivre un Duel
narratif (non aléatoire) pour apprendre les bases de Yu-Gi-Oh! JCJ depuis le début, de la pioche de votre première carte aux Monstres
Synchro et Xyz de l’Extra Deck, en passant par les Invocations et les combats.
Au terme du Duel d’apprentissage, les Decks peuvent être réassemblés pour le recommencer, ou utilisés en standard et compléter des

Decks de Duel pour entamer votre aventure dans l’univers de Yu-Gi-Oh! JCJ !
Chaque Yu-Gi-Oh! JCJ Kit de Démarrage pour 2 Joueurs comprend :
• 2 Decks de 44 cartes différents (2 Main Decks de 40 cartes et 2 Extra Decks de 4 cartes) (soit 80 cartes Communes et
8 cartes Ultra Rares au total)
• 1 bande dessinée d’apprentissage de 64 pages", 
0, 15, 2, 1, 1, 4),

("Yu-Gi-Oh! - Boite de Boosters Français - Boite De 36 Boosters - Les Duellistes Légendaires : Volcan Brûleur d'Âmes

", 69.99, 3, "assets/img/articles/Yu-Gi-Oh/Blister/Français/DL-Blister.jpg", "Boite de 36 boosters de 5 cartes.

Les flammes de la bataille brûlent dans Legendary Duelists : Soulburning Volcano ! Faites monter la température jusqu'à ce que votre adversaire n'en puisse plus avec trois stratégies inspirées par des duellistes enflammés du panthéon de la série animée Yu-Gi-Oh!

Salamangrande est de retour avec de nouvelles cartes inspirées de Soulburner de Yu-Gi-Oh! VRAINS ! Salamangrande est l'une des stratégies de tournoi les plus populaires de la dernière décennie, capable d'infliger 8000 points de dégâts en un clin d'œil. Son gameplay unique de réincarnation permet à vos monstres de gagner un nouveau pouvoir si vous les utilisez pour invoquer une deuxième copie d'eux-mêmes. Alors faites le plein d'exemplaires supplémentaires de vos monstres préférés de l'Extra Deck Salamangrande !

Axel Brodie était un personnage vedette de la boîte Speed Duel GX : Duel Academy, et maintenant sa stratégie Volcanique est à nouveau sous les feux des projecteurs. Prenez de toutes nouvelles cartes Volcaniques qui vous aideront à brûler les points de vie de votre adversaire sans même avoir à combattre ! Vous pouvez toujours opter pour le classique Feu Grégois Volcanique, ou vous pouvez infliger des dégâts à votre adversaire à chaque fois qu'il fait une Invocation Spéciale avec le nouvel Empereur de tous les monstres Volcaniques !

La cloche n'a pas encore sonné, alors retournez sur le ring avec les nouveaux Boxeurs Indomptables ! La stratégie de l'Empereur de Barian : Alito dans Yu-Gi-Oh! ZEXAL consistait à encaisser les coups tout en infligeant de lourdes contre-attaques à ses adversaires, et ces nouvelles cartes Boxeur Indomptable reprennent là où il s'était arrêté. Vous pourrez même ajouter des Contre-Pièges directement de votre Deck à votre main ! Tout Deck qui utilise des Guerriers de type Feu et qui peut assembler 2 monstres de Niveau 4 peut libérer un nouveau monstre XYz puissant Boxeur Indomptable qui peut ajouter n'importe quel Guerrier de type Feu de votre Deck à votre main ! A considérer pour les fans des cartes Chevalier Noble Inferno de Duelist Nexus !

Le booster set complet contient 56 cartes, avec 5 cartes par pack :
9 cartes Ultra Rares
8 cartes Super Rares
10 cartes Rares
34 cartes Communes
1 Carte Ghost Rare", 
0, 5, 2, 1, 1, 3),


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

