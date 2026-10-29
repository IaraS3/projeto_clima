Qual a diferença entre Expanded e Flexible?
O que acontece quando dois elementos na mesma Row ou Column têm valores de flex diferentes?
##
Expanded: Obriga o elemento filho a preencher todo o espaço disponível.
Flexible: Permite que o elemento filho ocupe apenas o tamanho necessário do seu próprio conteúdo. Ele define um teto, mas não força o componente a esticar.
##
Elementos com valores diferentes
O espaço restante é distribuído de forma proporcional à soma dos valores. 
___________________________________________
3) Atividade - (Explorando novos Widgets)

Widget | Para que serve | 2 propriedades usadas e o que fazem | link da documentação |
_______|________________|_____________________________________|______________________|
|Card   | Caixa que agrupa conteúdo, com sombra e cantos arredondados | child:o conteúdo dentro do card / elevation: tamanho da sombra | https://api.flutter.dev/flutter/material/Card-class.html|
_______|________________|_____________________________________|______________________|
|ListTile |Linha com ícone, título e subtítulo |leading: widget à esquerda / trailing: widget à direita | https://api.flutter.dev/flutter/material/ListTile-class.html |
 _______|________________|_____________________________________|______________________|
|GridView.count | Grade com número fixo de colunas | crossAxisCount: quantas colunas / shrinkWrap: ocupa só a altura necessária | https://api.flutter.dev/flutter/widgets/GridView-class.html |
 _______|________________|_____________________________________|______________________|
|Stack | Coloca widgets um sobre o outro | children:os widgets empilhados / alignment:posição dos filhos sem Positioned | https://api.flutter.dev/flutter/widgets/Stack-class.html |
 _______|________________|_____________________________________|______________________|
|Positioned | Posiciona um widget dentro do Stack | left-right: distância das laterais / top-bottom: distância de cima e de baixo | https://api.flutter.dev/flutter/widgets/Positioned-class.html |
 _______|________________|_____________________________________|______________________|
|Wrap | Organiza widgets em linha e quebra para a próxima quando falta espaço | spacing: espaço entre itens / runSpacing: espaço entre as linhas | https://api.flutter.dev/flutter/widgets/Wrap-class.html |
 _______|________________|_____________________________________|______________________|
|Chip | Etiqueta pequena com texto| label: o texto /avatar: ícone antes do texto | https://api.flutter.dev/flutter/material/Chip-class.html |
 _______|________________|_____________________________________|______________________|
