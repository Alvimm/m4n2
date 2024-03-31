class Places {
  final String title;
  final String from;
  final String description;
  final String image;
  final int stars;

  Places({
    required this.title,
    required this.from,
    required this.description,
    required this.image,
    required this.stars,
  });
}

List<Places> dataPlaces = [
  
  Places(
    title: "Lago di Braies",
    from: "Tirol do Sul, Itália",
    description:
        "O Lago di Braies é um lago natural nas Dolomitas de Prags, no Tirol do Sul, Itália. Pertence ao município de Prags que está localizado no Vale de Prags. Durante a Segunda Guerra Mundial, foi destino do transporte de presos de campos de concentração para o Tirol. Embora o lago tenha ganhado o apelido de “Pérola dos Alpes” devido à sua crescente popularidade entre os turistas, o turismo tornou-se excessivo a partir de 2020, com 17.000 pessoas visitando a área em um único dia de verão. A partir do verão de 2023, o acesso de veículos foi restrito devido ao excesso de turismo.",
    image:"assets/images/lago_di_braies.jpg",
    stars: 90)
  ,
    Places(
    title: "Praia de Ipanema",
    from: "Rio de Janeiro, Brasil",
    description:
        "A Praia de Ipanema é uma praia localizada no Rio de Janeiro, Brasil. A praia é uma das praias mais famosas do Brasil. A praia é conhecida por sua areia branca e águas azuis. A praia é um dos destinos turísticos mais populares do Brasil.",
    image:
        "assets/images/ipanema.jpg",
    stars: 98
  ),
  Places(title: "Saint Moritz", from: "Vale da Engadina, Suíça", description: "St. Moritz é uma luxuosa cidade turística alpina no vale da Engadina, na Suíça. Já sediou as Olimpíadas de Inverno duas vezes, tem a Cresta Run, uma corrida de bobsled do campeonato mundial feita de gelo natural, e uma pista de gelo olímpica ao ar livre. Seu lago congelado abriga pólo, críquete e até corridas de cavalos no gelo. As áreas de esqui e snowboard incluem Corviglia, Diavolezza e Corvatsch, e há trilhas de esqui cross-country bem cuidadas.", image: "assets/images/st_moritz.jpg", stars: 86)
  ,
  Places(
    title: "Lago Oeschinen",
    from: "Kandersteg, Suíça",
    description:
        "O Lago Oeschinen fica aos pés do Blüemlisalp nos Alpes Berneses. Situado a 1.578 metros acima do nível do mar, é um dos lagos alpinos mais amplos. Um passeio de teleférico a partir de Kandersteg, seguido por meia hora de caminhada por pastagens e floresta de pinheiros, leva você ao lago, que aquece até 20 graus Celsius no verão. As atividades desfrutadas aqui incluem remo e andar no tobogã de verão.",
    image:
        "assets/images/oeschinen_lake.jpg",
    stars: 41
  ),
  Places(

    title: "Lago Moraine",
    from: "Alberta, Canadá",
    description:
        "O Lago Moraine é um lago glacial localizado no Parque Nacional de Banff, Alberta, Canadá. É situado no Vale dos Dez Picos, a aproximadamente 14 quilômetros de Lake Louise. O lago, que tem uma cor azul brilhante, é alimentado pelo Glaciar Wenkchemna. O Lago Moraine é abastecido por águas glaciais. O lago é pequeno, mas as montanhas que o cercam dão a impressão de que é maior do que realmente é.",
    image:
        "assets/images/moraine_lake.jpg",
    stars: 84
  ),
  Places(
    title: "Lago Peyto",
    from: "Alberta, Canadá",
    description:
        "O Lago Peyto é um lago glacial localizado no Parque Nacional de Banff, Alberta, Canadá. O lago é alimentado pelo Glaciar Peyto. O lago é conhecido por sua cor azul brilhante. O lago é facilmente acessível a partir da Rodovia Icefields Parkway. O lago é um dos mais populares destinos turísticos do Parque Nacional de Banff.",
    image:
        "assets/images/peyto_lake.jpg",
    stars: 80
  ),
  Places(

    title: "Lago Bled",
    from: "Eslovênia",
    description:
        "O Lago Bled é um lago glacial nos Alpes Julianos, na região da Alta Carníola, na Eslovênia. O lago é um dos destinos turísticos mais populares da Eslovênia. O lago é conhecido por sua ilha, que abriga uma igreja. O lago é facilmente acessível a partir da cidade de Bled. O lago é um dos destinos turísticos mais populares da Eslovênia.",
    image:
        "assets/images/bled_lake.jpg",
    stars: 70
  ),
  Places(
    title: "Lago Wakatipu",
    from: "Queenstown, Nova Zelândia",
    description:
        "O Lago Wakatipu é um lago glacial localizado na Ilha Sul da Nova Zelândia. O lago é o terceiro maior lago da Nova Zelândia. O lago é alimentado por rios e glaciares. O lago é conhecido por sua cor azul brilhante. O lago é um dos destinos turísticos mais populares da Nova Zelândia.",
    image:
        "assets/images/wakatipu_lake.jpg",
    stars: 84
  ),
  Places(
    title: "Lago Titicaca",
    from: "Bolívia e Peru",
    description:
        "O Lago Titicaca é um lago de água doce localizado nos Andes, na fronteira entre a Bolívia e o Peru. O lago é o maior lago da América do Sul. O lago é alimentado por rios e glaciares. O lago é conhecido por sua cor azul brilhante. O lago é um dos destinos turísticos mais populares da Bolívia e do Peru.",
    image:
        "assets/images/lago_titicaca.jpg",
    stars: 90
  ),
  Places(
    title: "Praia de Copacabana",
    from: "Rio de Janeiro, Brasil",
    description:
        "A Praia de Copacabana é uma praia localizada no Rio de Janeiro, Brasil. A praia é uma das praias mais famosas do Brasil. A praia é conhecida por sua areia branca e águas azuis. A praia é um dos destinos turísticos mais populares do Brasil.",
    image:
        "assets/images/copacabana.jpg",
    stars: 95
  ),

  Places(
    title: "Praia de Jericoacoara",
    from: "Ceará, Brasil",
    description:
        "A Praia de Jericoacoara é uma praia localizada no Ceará, Brasil. A praia é uma das praias mais famosas do Brasil. A praia é conhecida por suas dunas e águas azuis. A praia é um dos destinos turísticos mais populares do Brasil.",
    image:
        "assets/images/jeri.jpg",
    stars: 95
  ),
  Places(
    title: "Praia de Pipa",
    from: "Rio Grande do Norte, Brasil",
    description:
        "A Praia de Pipa é uma praia localizada no Rio Grande do Norte, Brasil. A praia é uma das praias mais famosas do Brasil. A praia é conhecida por suas falésias e águas azuis. A praia é um dos destinos turísticos mais populares do Brasil.",
    image:
        "assets/images/pipa.jpg",
    stars: 95
  ),
  Places(
    title: "Praia de Porto de Galinhas",
    from: "Pernambuco, Brasil",
    description:
        "A Praia de Porto de Galinhas é uma praia localizada em Pernambuco, Brasil. A praia é uma das praias mais famosas do Brasil. A praia é conhecida por suas piscinas naturais e águas azuis. A praia é um dos destinos turísticos mais populares do Brasil.",
    image:
        "assets/images/porto_de_galinhas.jpg",
    stars: 95
  ),
];
