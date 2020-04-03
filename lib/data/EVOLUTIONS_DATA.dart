import 'package:flutter/material.dart';

import '../models/evolution.dart';
import '../models/monster.dart';

var DATA = [
  Monster(
    name: 'THE KING',
    color: Colors.brown,
    evolutions: [
      Evolution(
        title: 'Investida de Gorila',
        description:
            'Jogue quando um monstro que esteja no controle de Tokyo saia ou seja eliminado. Tome controle de Tokyo.',
        type: 'Temporária',
      ),
      Evolution(
        title: 'Frenesi na Selva',
        description:
            'Jogue no final do seu turno se você feriu um monstro que controla Tóquio com o dado e você não assumiu o controle de Tóquio. Jogue mais um turno.',
        type: 'Temporária',
      ),
      Evolution(
        title: 'Batida no Peito',
        description:
            'Você pode forçar Monstros que você feriu com o dado a sair de Tokyo.',
        type: 'Permanente',
      ),
      Evolution(
        title: 'Banana Gigante',
        description: 'Ganhe 2 de vida.',
        type: 'Temporária',
      ),
      Evolution(
        title: 'Macho Alfa',
        description:
            'Se você ferir pelo menos 1 monstro com o dado ganhe 1 ponto de fama.',
        type: 'Permanente',
      ),
      Evolution(
        title: 'Eu sou o Rei',
        description:
            'Ganhe 1 ponto de fama a mais quando toma controle de Tokyo ou começa seu turno em Tokyo.',
        type: 'Permanente',
      ),
      Evolution(
        title: 'Fora da Caixa',
        description:
            'Se você sair de Tokyo, não perca vida. Você não pode perder vida neste turno.',
        type: 'Temporária',
      ),
      Evolution(
        title: 'Foi a beleza que matou a besta',
        description:
            'Jogue quando você estiver em Tokyo. Ganhe 1 ponto de fama no final do turno de cada Monstro (incluindo o seu). Descarte essa carta e perca todos os seus pontos de fama se sair de Tokyo.',
        type: 'Permanente',
      ),
    ],
  ),
  Monster(
    name: 'CYBER KITTY',
    color: Colors.pink,
    evolutions: [
      Evolution(
        title: 'Arranhão Elétrico',
        description: 'Todos os outros Monstros perdem 1 de vida.',
        type: 'Temporária',
      ),
      Evolution(
        title: 'Beliscar',
        description:
            'Jogue no começo do seu turno. Você não poderá re-rolar os dados nesse turno, mas o resultado é dobrado',
        type: 'Temporária',
      ),
      Evolution(
        title: 'Mega Ronronar',
        description:
            'Todos os outros Monstros te dão 1 de energia ou 1 de fama se eles tiverem. (Eles escolhem oque oferecer)',
        type: 'Temporária',
      ),
      Evolution(
        title: '9 Vidas',
        description:
            'Se você chegar a 0 de vida destarte todas as suas cartas, perca todas as energias e pontos de fama e saia de Tokyo caso esteja. Ganhe 9 de vida e 9 pontos de fama e continue jogando',
        type: 'Temporária',
      ),
      Evolution(
        title: 'Motor Felino',
        description:
            'Durante o turno de outros Monstros, se Tokyo estiver vazio você pode tomar controle da cidade ao invés do Monstro do turno atual.',
        type: 'Permanente',
      ),
      Evolution(
        title: 'Caçador de ratos',
        description:
            'Se você rolar pelo menos 1 dado com número 1 ganhe 1 ponto de fama.',
        type: 'Permanente',
      ),
      Evolution(
        title: 'Brinque com sua comida',
        description:
            'Se você atacar um Monstro que estiver em Tokyo com pelo menos 2 de dano, você pode trocar o dano por 1 ponto de fama e 1 de energia.',
        type: 'Permanente',
      ),
      Evolution(
        title: 'Miar míssil',
        description:
            'Se você rolar pelo menos 1 dado com número 1, adicione 1 dado de dano.',
        type: 'Permanente',
      ),
    ],
  ),
  Monster(
    name: 'ALIENOID',
    color: Colors.lightGreen,
    evolutions: [
      Evolution(
        title: 'Apoio da Nave Mãe',
        description:
            'Uma vez por turno você pode gastar 1 de energia para recuperar 1 de vida.',
        type: 'Permanente',
      ),
      Evolution(
        title: 'baterias de raiva',
        description:
            'Ganhe 1 de energia para cada vida que perdeu nesse turno.',
        type: 'Temporária',
      ),
      Evolution(
        title: 'flagelo alienígena',
        description: 'Ganhe 2 de fama.',
        type: 'Temporária',
      ),
      Evolution(
        title: 'suporte de campo de precisão',
        description:
            'Compre cartas de poder do topo do deck até encontrar uma carta do tipo "Constante" que curte 4 ou menos de energia. Fique com essa carta e descarte as outras.',
        type: 'Temporária',
      ),
      Evolution(
        title: 'engraçado, mas perigoso',
        description:
            'Se você rolar pelo menos 3 dados com número 2, os outros Monstros perdem 1 de vida.',
        type: 'Permanente',
      ),
      Evolution(
        title: 'Armas exóticas',
        description:
            'Antes de rolar os dados você pode apostar 2 de energia na mesa. Se rolar 3 dados de dano, você recupera os 2 de energia e faz com que os Monstros que você atacou percam 2 de vida a mais. Se perder você perde 2 de energia e 2 de vida',
        type: 'Permanente',
      ),
      Evolution(
        title: 'Tecnologia Adaptativa',
        description:
            'Coloque 3 tokens na mesa. Uma vez por turno você pode remover 1 token para descartar as 3 cartas de poder que estão viradas pra cima e revelae 3 novas. Quando os tokens acabar desative essa Evolução',
        type: 'Permanente',
      ),
      Evolution(
        title: 'Tecnologia Alienígena Superior',
        description:
            'Você pode comprar cartas "Constantes" pela metade do preço. Quando comprar receba um token. No começo do seu turno jogue um dado para cada carta que comprou com o token, se rolar dano você perde a carta. Max(3)',
        type: 'Permanente',
      ),
    ],
  ),
  Monster(
    name: 'SPACE PENGUIN',
    color: Colors.deepPurple,
    evolutions: [
      Evolution(
        title: 'Nevasca',
        description:
            'Jogue durante seu turno. Até o começo do seu próximo turno os Monstros não podem re-rollar e não podem sair de Tokyo.',
        type: 'Temporária',
      ),
      Evolution(
        title: 'onda fria',
        description:
            'Até o seu próximo turno, os outros Monstros rolam com 1 dado a menos.',
        type: 'Temporária',
      ),
      Evolution(
        title: 'mergulho profundo',
        description:
            'Olhe as 3 cartas do topo do deck de poder. Escolha uma e pegue de graça, coloque as outras duas no final do deck.',
        type: 'Temporária',
      ),
      Evolution(
        title: 'envolto em gelo',
        description:
            'Gaste 1 de energia para escolher um dado que você rolou. Até o começo do seu pŕoximo turno o dado não pode ser alterado de face e será usado normalmente por todos os outros Monstros',
        type: 'Permanente',
      ),
      Evolution(
        title: 'raio congelado',
        description:
            'Quando você ferir um Monstro em Tokyo, de um token a ele. No começo do turno dele escolha uma face do dado, essa face não terá efeito neste turno. No final do turno remova o token.',
        type: 'Permanente',
      ),
      Evolution(
        title: 'Diamante negro',
        description:
            'Ganhe 1 ponto de fama extra para cada vez que entrar em Tokyo ou quando poderia ter saído mas não saiu.',
        type: 'Permanente',
      ),
      Evolution(
        title: 'captura milagrosa',
        description:
            'Uma vez por turno você pode embaralhar a pilha de descarte e pegar uma carta aleatória. Vocẽ poderá comprar essa carta por 1 a menos de energia ou descarta-lá.',
        type: 'Temporária',
      ),
      Evolution(
        title: 'reflexão gelada',
        description:
            'Escolha uma evolução de outro Monstro. Você agora tem a evolução escolhida até a mesma durar para o outro Monstro.',
        type: 'Permanente',
      ),
    ],
  ),
  Monster(
    name: 'MEKA DRAGON',
    color: Colors.red.shade900,
    evolutions: [
      Evolution(
        title: 'Análise Destrutiva',
        description:
            'Ganhe 1 de energia para cada dado de dano que rolou neste turno.',
        type: 'Temporária',
      ),
      Evolution(
        title: 'Explosão Mecha',
        description:
            'Cada Monstro que você tirou vida com dado neste turno perde 2 de vida adicionais.',
        type: 'Temporária',
      ),
      Evolution(
        title: 'sintonizar',
        description:
            'Jogue antes de rolar os dados. Se você não estiver em Tokyo, pule seu turno mas ganhe 4 de vida e 2 de energia',
        type: 'Temporária',
      ),
      Evolution(
        title: 'Programado para Destruir',
        description:
            'Ganhe 3 de fama e 2 de energia para cada Monstro que chegar a 0 de vida.',
        type: 'Permanente',
      ),
      Evolution(
        title: 'armadura de raio',
        description:
            'Quando perder vida, você pode rolar um dado para cada vida perdida. caso rolar dano o Monstro do turno atual toma o dano.',
        type: 'Permanente',
      ),
      Evolution(
        title: 'alvo adquirido',
        description:
            'Quando um Monstro faz você perder vida com um dado de dano, você pode dar um token a ele. O Monstro com token perde 1 de vida a mais cada vez que você der dano nele.',
        type: 'Permanente',
      ),
      Evolution(
        title: 'garras de aço',
        description:
            'Uma vez por turno, se você fizer outro Monstro perder pelo menos 3 de vida, eles perdem 1 de vida adicional.',
        type: 'Permanente',
      ),
      Evolution(
        title: 'Sopro da Ruína',
        description:
            'Quando você faz um Monstro que esteja em Tokyo perder pelo menos 1 de vida, os outros Monstros perdem 1 de vida também.',
        type: 'Permanente',
      ),
    ],
  ),
  Monster(
    name: 'GIGAZAUR',
    color: Colors.green.shade900,
    evolutions: [
      Evolution(
        title: 'cauda destacável',
        description: 'Você não pode perder vida neste turno.',
        type: 'Temporária',
      ),
      Evolution(
        title: 'resíduos radioativos',
        description: 'Ganhe 2 de energia e 1 de vida.',
        type: 'Temporária',
      ),
      Evolution(
        title: 'rugido primitivo',
        description: 'Todos os outros Monstros perdem 2 de fama.',
        type: 'Temporária',
      ),
      Evolution(
        title: 'adaptabilidade sauriana',
        description:
            'Escolha uma face do dado. Todos os dados que você rolar com essa face você pode trocar para uma face(única) de sua escolha',
        type: 'Temporária',
      ),
      Evolution(
        title: 'varredura de cauda',
        description:
            'Uma vez por turno você pode trocar um dado que você rolou para o número 1 ou 2.',
        type: 'Permanente',
      ),
      Evolution(
        title: 'Defensor de Tokyo',
        description:
            'Se você começar seu turno em Tokyo, todos os outros Monstros perdem 1 de fama.',
        type: 'Permanente',
      ),
      Evolution(
        title: 'sopro gama',
        description:
            'Uma vez por turno, você pode trocar um dado que você rolou para um dado de dano.',
        type: 'Permanente',
      ),
      Evolution(
        title: 'visão de calor',
        description:
            'Monstros que atacarem você com dado de dano perdem 1 de fama.',
        type: 'Permanente',
      ),
    ],
  ),
];
