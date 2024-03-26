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
    image:
        "https://images.unsplash.com/photo-1501785888041-af3ef285b470?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    stars: 90)
  ,
  Places(
    title: "Lago Oeschinen",
    from: "Kandersteg, Suíça",
    description:
        "O Lago Oeschinen fica aos pés do Blüemlisalp nos Alpes Berneses. Situado a 1.578 metros acima do nível do mar, é um dos lagos alpinos mais amplos. Um passeio de teleférico a partir de Kandersteg, seguido por meia hora de caminhada por pastagens e floresta de pinheiros, leva você ao lago, que aquece até 20 graus Celsius no verão. As atividades desfrutadas aqui incluem remo e andar no tobogã de verão.",
    image:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/6d/f5/df/oeschinen-lake.jpg",
    stars: 41
  ),
  Places(

    title: "Lago Moraine",
    from: "Alberta, Canadá",
    description:
        "O Lago Moraine é um lago glacial localizado no Parque Nacional de Banff, Alberta, Canadá. É situado no Vale dos Dez Picos, a aproximadamente 14 quilômetros de Lake Louise. O lago, que tem uma cor azul brilhante, é alimentado pelo Glaciar Wenkchemna. O Lago Moraine é abastecido por águas glaciais. O lago é pequeno, mas as montanhas que o cercam dão a impressão de que é maior do que realmente é.",
    image:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/b9/99/5c/moraine-lake-photo-taken.jpg?w=1200&h=-1&s=1",
    stars: 84
  ),
  Places(
    title: "Lago Peyto",
    from: "Alberta, Canadá",
    description:
        "O Lago Peyto é um lago glacial localizado no Parque Nacional de Banff, Alberta, Canadá. O lago é alimentado pelo Glaciar Peyto. O lago é conhecido por sua cor azul brilhante. O lago é facilmente acessível a partir da Rodovia Icefields Parkway. O lago é um dos mais populares destinos turísticos do Parque Nacional de Banff.",
    image:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/ee/2f/5e/peyto-lake-at-about-11am.jpg?w=1200&h=-1&s=1",
    stars: 80
  ),
  Places(

    title: "Lago Bled",
    from: "Eslovênia",
    description:
        "O Lago Bled é um lago glacial nos Alpes Julianos, na região da Alta Carníola, na Eslovênia. O lago é um dos destinos turísticos mais populares da Eslovênia. O lago é conhecido por sua ilha, que abriga uma igreja. O lago é facilmente acessível a partir da cidade de Bled. O lago é um dos destinos turísticos mais populares da Eslovênia.",
    image:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Lake_Bled_from_the_Mountain.jpg/1200px-Lake_Bled_from_the_Mountain.jpg",
    stars: 70
  ),
  Places(
    title: "Lago Wakatipu",
    from: "Queenstown, Nova Zelândia",
    description:
        "O Lago Wakatipu é um lago glacial localizado na Ilha Sul da Nova Zelândia. O lago é o terceiro maior lago da Nova Zelândia. O lago é alimentado por rios e glaciares. O lago é conhecido por sua cor azul brilhante. O lago é um dos destinos turísticos mais populares da Nova Zelândia.",
    image:
        "https://media.istockphoto.com/id/638578534/pt/foto/queenstown-nova-zel%C3%A2ndia.jpg?s=612x612&w=0&k=20&c=Eu4D-KbVTKbR3247pkEpAxvCASngPZzMIADagpigbbs=",
    stars: 84
  ),
  Places(
    title: "Lago Titicaca",
    from: "Bolívia e Peru",
    description:
        "O Lago Titicaca é um lago de água doce localizado nos Andes, na fronteira entre a Bolívia e o Peru. O lago é o maior lago da América do Sul. O lago é alimentado por rios e glaciares. O lago é conhecido por sua cor azul brilhante. O lago é um dos destinos turísticos mais populares da Bolívia e do Peru.",
    image:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/28/9f/2b/lago-titicaca.jpg?w=1200&h=-1&s=1",
    stars: 90
  ),
  Places(
    title: "Praia de Copacabana",
    from: "Rio de Janeiro, Brasil",
    description:
        "A Praia de Copacabana é uma praia localizada no Rio de Janeiro, Brasil. A praia é uma das praias mais famosas do Brasil. A praia é conhecida por sua areia branca e águas azuis. A praia é um dos destinos turísticos mais populares do Brasil.",
    image:
        "https://a.cdn-hotels.com/gdcs/production67/d440/98ce2718-e399-48d7-867e-5a49a19d87f3.jpg?impolicy=fcrop&w=800&h=533&q=medium",
    stars: 95
  ),
  Places(
    title: "Praia de Ipanema",
    from: "Rio de Janeiro, Brasil",
    description:
        "A Praia de Ipanema é uma praia localizada no Rio de Janeiro, Brasil. A praia é uma das praias mais famosas do Brasil. A praia é conhecida por sua areia branca e águas azuis. A praia é um dos destinos turísticos mais populares do Brasil.",
    image:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/8c/14/06/ipanema.jpg?w=1200&h=1200&s=1",
    stars: 98
  ),
  Places(
    title: "Praia de Jericoacoara",
    from: "Ceará, Brasil",
    description:
        "A Praia de Jericoacoara é uma praia localizada no Ceará, Brasil. A praia é uma das praias mais famosas do Brasil. A praia é conhecida por suas dunas e águas azuis. A praia é um dos destinos turísticos mais populares do Brasil.",
    image:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/bc/6a/c0/jericoacoara-ou-jeri.jpg?w=1200&h=-1&s=1",
    stars: 95
  ),
  Places(
    title: "Praia de Pipa",
    from: "Rio Grande do Norte, Brasil",
    description:
        "A Praia de Pipa é uma praia localizada no Rio Grande do Norte, Brasil. A praia é uma das praias mais famosas do Brasil. A praia é conhecida por suas falésias e águas azuis. A praia é um dos destinos turísticos mais populares do Brasil.",
    image:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/9d/24/9a/pipa.jpg?w=1200&h=-1&s=1",
    stars: 95
  ),
  Places(
    title: "Praia de Porto de Galinhas",
    from: "Pernambuco, Brasil",
    description:
        "A Praia de Porto de Galinhas é uma praia localizada em Pernambuco, Brasil. A praia é uma das praias mais famosas do Brasil. A praia é conhecida por suas piscinas naturais e águas azuis. A praia é um dos destinos turísticos mais populares do Brasil.",
    image:
        "https://www.cvc.com.br/dicas-de-viagem/wp-content/uploads/2021/09/porto-de-galinhas-onde-fica-quando-ir-quantos-dias-ficar.png",
    stars: 95
  ),
];
