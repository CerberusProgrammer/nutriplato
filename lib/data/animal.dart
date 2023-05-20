import 'package:flutter/material.dart';

import '../object/food.dart';

List<Food> animals = [
  Food(
    name: 'Almeja',
    description: 'Molusco con concha y cuerpo blando',
    calories: 43,
    portions: 4,
    image: Image.asset('img/animal/almeja.jpg'),
    unit: 'piezas',
    grams: 58,
  ),
  Food(
    name: 'Atún en agua',
    description: 'Pescado blanco y magro enlatado en agua',
    calories: 39,
    portions: 0.33,
    image: Image.asset('img/animal/atun.jpg'),
    unit: 'lata',
    grams: 33,
  ),
  Food(
    name: 'Atún fresco',
    description: 'Pescado blanco y magro',
    calories: 43,
    portions: 30,
    image: Image.asset('img/animal/atunenagua.jpg'),
    grams: 30,
    unit: 'g',
  ),
  Food(
    name: 'Bacalao',
    description: 'Pescado blanco y magro de agua salada',
    calories: 37,
    portions: 45,
    image: Image.asset('img/animal/bacalao.jpg'),
    grams: 45,
    unit: 'g',
  ),
  Food(
    name: 'Tocino',
    description: 'Tiras delgadas de carne de cerdo curada y ahumada',
    calories: 111,
    portions: 40,
    image: Image.asset('img/animal/bacon.jpg'),
    grams: 40,
    unit: 'g',
  ),
  Food(
    name: 'Bola de res',
    description: 'Carne roja y magra de vaca',
    calories: 71,
    portions: 25,
    image: Image.asset('img/animal/bistecderes.jpg'),
    grams: 25,
    unit: 'g',
  ),
  Food(
    name: 'Calamares',
    description: 'Moluscos con cuerpo blando y tentáculos largos',
    calories: 78.5,
    portions: 85,
    image: Image.asset('img/animal/calamar.jpg'),
    grams: 85,
    unit: 'g',
  ),
  Food(
    name: 'Camarones cocidos',
    description: 'Crustáceos pequeños con caparazón y cola en forma de abanico',
    calories: 34,
    portions: 5,
    image: Image.asset('img/animal/camarones.jpg'),
    grams: 34,
    unit: 'pieza',
  ),
  Food(
    name: 'Chuleta de cerdo',
    description: 'Corte magro y tierno de carne de cerdo con hueso incluido',
    calories: 197,
    portions: 1,
    image: Image.asset('img/animal/chuletadecerdo.jpg'),
    grams: 85,
    unit: 'pieza',
  ),
  Food(
    name: 'Clara de huevo',
    description: 'Parte blanca y transparente del huevo',
    calories: 17,
    portions: 1,
    image: Image.asset('img/animal/claradehuevo.jpg'),
    grams: 60,
    unit: '',
  ),
  Food(
    name: 'Codorniz',
    description: 'Ave pequeña con carne blanca y magra',
    calories: 116,
    portions: 85,
    image: Image.asset('img/animal/codorniz.jpg'),
  ),
  Food(
    name: 'Cordero',
    description: 'Corte magro y tierno de carne de cordero',
    calories: 250,
    portions: 85,
    image: Image.asset('img/animal/cordero.jpg'),
  ),
  Food(
    name: 'Filete de res',
    description: 'Corte magro y tierno de carne de vaca',
    calories: 240,
    portions: 85,
    image: Image.asset('img/animal/filetederes.jpg'),
  ),
  Food(
    name: 'Ganso',
    description: 'Ave acuática grande con carne oscura y grasa',
    calories: 340,
    portions: 140,
    image: Image.asset('img/animal/ganso.jpg'),
  ),
  Food(
    name: 'Huevo entero',
    description: 'Huevo de gallina con clara y yema incluidas',
    calories: 72,
    portions: 50,
    image: Image.asset('img/animal/huevo.jpg'),
  ),
  Food(
    name: 'Jaiba',
    description: 'Crustáceo con caparazón y pinzas',
    calories: 84,
    portions: 85,
    image: Image.asset('img/animal/cangrejo.jpg'),
  ),
  Food(
    name: 'Langosta',
    description: 'Crustáceo grande con caparazón y pinzas',
    calories: 114,
    portions: 85,
    image: Image.asset('img/animal/langosta.jpg'),
  ),
  Food(
    name: 'Leche descremada',
    description: 'Líquido blanco y nutritivo obtenido de la vaca sin grasa',
    calories: 83,
    portions: 244,
    image: Image.asset('img/animal/lechedescremada.jpg'),
  ),
  Food(
    name: 'Leche entera',
    description: 'Líquido blanco y nutritivo obtenido de la vaca',
    calories: 149,
    portions: 244,
    image: Image.asset('img/animal/leche.jpg'),
  ),
  Food(
    name: 'Leche semidescremada',
    description:
        'Líquido blanco y nutritivo obtenido de la vaca con parte de la grasa removida',
    calories: 103.2,
    portions: 244,
    image: Image.asset('img/animal/lechesemidescremada.jpg'),
  ),
  Food(
    name: 'Mantequilla',
    description: 'Grasa sólida hecha con nata de la leche de vaca',
    calories: 102,
    portions: 14.2,
    image: Image.asset('img/animal/mantequilla.jpg'),
  ),
  Food(
    name: 'Mejillones',
    description: 'Moluscos con concha y cuerpo blando',
    calories: 73,
    portions: 85,
    image: Image.asset('img/animal/mejillones.jpg'),
  ),
  Food(
    name: 'Ostras',
    description: 'Moluscos con concha y cuerpo blando',
    calories: 81,
    portions: 85,
    image: Image.asset('img/animal/ostras.jpg'),
  ),
  Food(
    name: 'Pato',
    description: 'Ave acuática con carne oscura y grasa',
    calories: 335,
    portions: 140,
    image: Image.asset('img/animal/pato.jpg'),
  ),
  Food(
    name: 'Pechuga de pollo o pavo',
    description: 'Carne blanca y magra de ave',
    calories: 165,
    portions: 30,
    image: Image.asset('img/animal/pechugadepollo.jpg'),
  ),
  Food(
    name: 'Pulpo',
    description: 'Molusco con tentáculos y cuerpo blando',
    calories: 139,
    portions: 85,
    image: Image.asset('img/animal/pulpo.jpg'),
  ),
  Food(
    name: 'Queso azul',
    description:
        'Queso blanco y cremoso con vetas azules-verdosas hecho con leche de vaca u oveja',
    calories: 100,
    portions: 28.4,
    image: Image.asset('img/animal/quesoazul.jpg'),
  ),
  Food(
    name: 'Queso brie',
    description: 'Queso blanco y cremoso hecho con leche de vaca ',
    calories: 94.6,
    portions: 28.4,
    image: Image.asset('img/animal/quesobrie.jpg'),
  ),
  Food(
    name: 'Queso camembert',
    description: 'Queso blanco y cremoso hecho con leche de vaca ',
    calories: 84.8,
    portions: 28.4,
    image: Image.asset('img/animal/quesocamembert.jpg'),
  ),
  Food(
    name: 'Queso cheddar',
    description: 'Queso amarillo y semiduro hecho con leche de vaca',
    calories: 113,
    portions: 28.4,
    image: Image.asset('img/animal/quesocheddar.jpg'),
  ),
  Food(
    name: 'Queso colby',
    description: 'Queso amarillo y semiduro hecho con leche de vaca ',
    calories: 110,
    portions: 28.4,
    image: Image.asset('img/animal/quesocolby.jpg'),
  ),
  Food(
    name: 'Queso cottage',
    description: 'Queso blanco y suave hecho con leche descremada',
    calories: 98,
    portions: 30,
    image: Image.asset('img/animal/quesocottage.jpg'),
  ),
  Food(
    name: 'Queso feta',
    description: 'Queso blanco y salado hecho con leche de oveja o cabra',
    calories: 75,
    portions: 28.4,
    image: Image.asset('img/animal/quesofeta.jpg'),
  ),
  Food(
    name: 'Queso gouda',
    description: 'Queso amarillo y semiduro hecho con leche de vaca ',
    calories: 101.2,
    portions: 28.4,
    image: Image.asset('img/animal/quesogouda.jpg'),
  ),
  Food(
    name: 'Queso manchego',
    description: 'Queso amarillo y semiduro hecho con leche de vaca',
    calories: 110,
    portions: 30,
    image: Image.asset('img/animal/quesomanchego.jpg'),
  ),
  Food(
    name: 'Queso mascarpone',
    description: 'Queso blanco y cremoso hecho con crema de leche de vaca ',
    calories: 120,
    portions: 28.4,
    image: Image.asset('img/animal/quesomascarpone.jpg'),
  ),
  Food(
    name: 'Queso mozzarella',
    description: 'Queso blanco y suave hecho con leche de vaca o búfala ',
    calories: 84.8,
    portions: 28.4,
    image: Image.asset('img/animal/quesomozzarella.jpg'),
  ),
  Food(
    name: 'Queso parmesano',
    description: 'Queso duro y granulado hecho con leche de vaca',
    calories: 110,
    portions: 28.4,
    image: Image.asset('img/animal/quesoparmesano.jpg'),
  ),
  Food(
    name: 'Queso provolone',
    description: 'Queso amarillo y semiduro hecho con leche de vaca ',
    calories: 98.6,
    portions: 28.4,
    image: Image.asset('img/animal/quesoprovolone.jpg'),
  ),
  Food(
    name: 'Queso ricotta',
    description:
        'Queso blanco y suave hecho con suero de leche de vaca u oveja',
    calories: 39,
    portions: 62.5,
    image: Image.asset('img/animal/quesoricotta.jpg'),
  ),
  Food(
    name: 'Queso roquefort',
    description:
        'Queso blanco y cremoso con vetas azules-verdosas hecho con leche de oveja ',
    calories: 104.6,
    portions: 28.4,
    image: Image.asset('img/animal/quesoroqueforte.jpg'),
  ),
  Food(
    name: 'Queso suizo',
    description: 'Queso amarillo y semiduro hecho con leche de vaca ',
    calories: 106.4,
    portions: 28.4,
    image: Image.asset('img/animal/quesosuizo.jpg'),
  ),
  Food(
    name: 'Salmón',
    description: 'Pescado rosado y graso',
    calories: 206,
    portions: 85,
    image: Image.asset('img/animal/salmon.jpg'),
  ),
  Food(
    name: 'Salmón ahumado',
    description: 'Pescado rosado y graso ahumado en frío o caliente',
    calories: 117,
    portions: 28.4,
    image: Image.asset('img/animal/salmonahumado.jpg'),
  ),
  Food(
    name: 'Tilapia',
    description: 'Pescado blanco y magro de agua dulce',
    calories: 112,
    portions: 85,
    image: Image.asset('img/animal/tilapia.jpg'),
  ),
  Food(
    name: 'Trucha',
    description: 'Pescado blanco y magro de agua dulce o salada',
    calories: 109,
    portions: 85,
    image: Image.asset('img/animal/trucha.jpg'),
  ),
  Food(
    name: 'Yogur griego',
    description: 'Yogur espeso y cremoso hecho con leche de vaca',
    calories: 100,
    portions: 170,
    image: Image.asset('img/animal/yogurgriego.jpg'),
  ),
  Food(
    name: 'Yogur natural',
    description:
        'Yogur sin saborizantes ni azúcares añadidos hecho con leche de vaca',
    calories: 149,
    portions: 245,
    image: Image.asset('img/animal/yogurt.jpg'),
  ),
];
