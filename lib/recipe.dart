class Recipe {

  String label;
  String imageUrl;
  String text;

  static List<Recipe> samples = [
    Recipe(
      'Co to Bonsai?',
      'assets/images/chinesischerwacholderbonsai.jpg',
      'Bonsai to fascynująca forma sztuki, która łączy techniki ogrodnicze z azjatycką estetyką w wyjątkowy sposób. Sztuka pochodzi z Chin i została udoskonalona przez Japończyków i Koreańczyków, którzy stworzyli coś co znamy jako drzewka Bonsai. W dosłownym tłumaczeniu słowo “bon-sai” oznacza “roślina w pojemniku”.',
    ),
    Recipe(
      'Uprawa drzewek',
      'assets/images/Grow-and-cultivate-bonsai-techniques.jpg',
      'Drzewka Bonsai uprawiane są w taki sposób, aby przypominały drzewa rosnące w naturze (powinny sprawiać wrażenie starych, dostojnych drzew pomimo ich niewielkich rozmiarów). Istnieją różne metody pozwalające uzyskać drzewko Bonsai, począwszy od pełnej kontroli ich kształtu i wielkości (zaczynając od nasion lub sadzonek) do kupienia gotowego Bonsai w sklepie.',
    ),
    Recipe(
      'Formowanie',
      'assets/images/Styling-and-design-techniques.jpg',
      'Powszechnie błędnym przekonaniem jest to, że gatunki roślin przeznaczone na drzewka Bonsai są genetycznie zminiaturyzowane. Drzewka Bonsai są normalnymi roślinami, rozmnażanymi jak każde inne, ale uprawiane za pomocą zaawansowanych technik, aby uzyskać miniaturowe rozmiary. Kształtowanie drzewek Bonsai obejmuje podstawowe metody, takie jak regularne przycinanie i drutowanie, ale także bardziej zaawansowane techniki jak tworzenie martwego drewna.',
    ),
  ];

  Recipe(
      this.label,
      this.imageUrl,
      this.text,
      );
}