import 'package:flutter/material.dart';

import 'package:story_view/story_view.dart';
import 'package:eapteka/resources/images.dart';



final List<AssetImage> heroesListAvatar = <AssetImage>[

];

final List<String> recomendedContext = <String>[
  'Профилактика сезонной простуды',
  
  '\nМаски и антисептики',
  '\nБезопасный           \nзагар           ',
  '\n\nСобери аптечку     ',

];

final List<String> dayContext = <String>[
  'Лекарство, таблетки 3 мг, 20 шт.',
  
  'Лекарство, капсулы 150 мг, 2 шт.',
  'Лекарство, капсулы 150 мг, 2 шт.',

];

final List<bool> heroesListStatusCheck = <bool>[
  true,
  true,
  true,
  true,
  false,
  false,
];

final List<String> recomendedImage = <String>[
  'assets/images/recomended_1.png',
  'assets/images/recomended_2.png',
  'assets/images/recomended_3.png',
  'assets/images/recomended_4.png',

];

final List<String> recomendedMainUrl = <String>[
  'https://s3-alpha-sig.figma.com/img/cd83/d129/81ef8a8ea8d4b53baa3dce2481ef88dc?Expires=1623024000&Signature=XaP7hPQMw-fyWExF~JeL8UrCVRkzIK6QFFxQnOEHjmTECUjxJvxlUn25cF4FrM7WrywWNtAYsTog~8NWaXsWMbRaRWZWuzir9awO~UQhWFRzkIZLlat92GIeqKpIQ~-UMopPDSznPJjNkxAtu2OnUpGlNaiweVanzSJG1W0eXpmL2ZDq-RHSrLP9bFX7EL9K~GpSTYfNe7xSySdjYTSSnFnH2puQZ~-vQoZrwwUBjzdqRsFCKRAJxgHltATbr68CymT5jv0tKrOsrG1cn~diREd-zjK0CbqdYizC8iCV7TLDgyIWdH6I26wqUK4pKbcf1gTbI3O~GDVztv-VqE6m9g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  'https://s3-alpha-sig.figma.com/img/4f61/9cc3/c97042972fd675e9508b6db1fc70083e?Expires=1623024000&Signature=L6sIYVCfY2Tu-uMHWpwBFyIw5jgn-s0vDiieRFxrNDgsS3CHRhrOwAM2CSlwdE-eQrtIEzRlRlk92ITISblfNhsI86WKGIAfPzbXOR7GgPc-BlW0eB8h1hnfK9wJhr4e1OFQxEwz7DHOZYlMXMC1hXra8oUUp6dnJLWafjNNgFN7OEdlCWEwzb2170JuAm7DWccMFmP5Zs0q0ZzDixsKPyOyoi4OkQ36Ul~xIPlqIQ~lZaXg9Qd~zm-rDCQrl-uhVbWjbTXqPtn8IDw3COj79oN~9sJ-BZFrT46KclXFrQ6MenCOLV19-AGpzX9VR3M7qKTRvPcerCHtoJV2-Agi~Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  'https://s3-alpha-sig.figma.com/img/978e/7a7d/c305dd4ae725871ccf33f8a9ba0f4a72?Expires=1623024000&Signature=A-EdcPXieF4weNWSh7xVwp5dzdfs~dAR2nEBLsBRojAN4M0HKrSiSelMyH1EWFTyN5d1kOdsEOai0SL~cIpIWqXQL0xjF7MYfeXNgcD0yPSr-BA0-cWgPgTSL~cr~7krVIe1gjKHTLTDSudvoqKxYhoowTJgDEnuZQDkLBvIbiWVwTNtJpZTTCreZQxuzlmCQLBnqKUenNPa0Xxsdd6fJYesg05UxaSx-bwCqKPv9EtWXvBF2UcTln~lIuZH6xzuuKZKO5Y8EaC~hAhyDRoZOS76ZqAbZeBxDnjRJoDk3mcZCfpcTMsM4RO0Yq5DKA5y-PBs~Sd~CmNkPGl6-q8mHw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  'https://s3-alpha-sig.figma.com/img/ffff/866b/5131b5a6222801e7dd173366de64031a?Expires=1623024000&Signature=OWZJfKW1CqsqzoByHEQ9nmb8nYs5jJ7n2yaIgNFkqDioZS1xgpt2P0F3lo5rNy-~azL8Q2laMSJb3znByiLGAfQXrkPzcLHriBviuNviKXFYTz2OYvmMkn6PJL~wgNsdNhy274dMJ-B~3dUevtOvkomlpA-CVAtsHB6x6xK9wuvE~z-t6Nmms8evoxWyHC2Dy1~Ss2EaA7DumpqPKJcF0ui~bNxo4u29yKdFOjU8wjmcv2a2XQ1mWTcvS-z2cmQU20pFOpAzPCorAwiCikoc-8HhkFwB36xXLWxATpXLMK7Wn6At5bD0MYG-JLa4qmGvkoMNOqJlg7aVeMzOnMkFLA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  
  

];

int actionRecomended = 1;