# LaTeX dissertação UFCSPA
Template LaTeX para apresentação de dissertação da UFCSPA em formato ABNT, foi utilizado em meu Projeto de TCC em Física Médica, e na Qualificação e Dissertação de Mestrado em Tecnologias da Informação e Gestão em Saúde.

Tive como base o template criado por Professor Valdex Santos <valdexsantos@ifba.edu.br> com colaboração do Francisco Bruno Souza Oliveira, que possui mais templates em gg.gg/profwaldexsantos

Feito no www.overleaf.com

Caso você não tenha familiaridade com LaTex, seguem algumas dicas:

+ `%` é utilizado para comentar uma linha, o que estiver escrito após o símbolo de porcentagem não será compilado
+ `\` é utilizado para indicar que um comando será utilizado, também pode ser utilizado para gerar caracteres especiais
+ `$` é utilizado para escrever no ambiente matemático, o termo a ser escrito deve estar entre dois S-cifrões, como por exemplo `$a^2 = b^2 + c^2$` para a representação da fórmula de báscara, para mais utilidades veja a página do professor Agostinho Brito: https://agostinhobritojr.github.io/tutorial/latex/cha.ambiente_matematico.html
+ `{}` as chaves são utilizadas para aplicar algum comando no que estiver dentro das chaves, por exemplo, para deixar um texto em itálico basta usar o comando `\textit{texto em itálico}`, ou para o texto em negrito `\textbf{texto em negrito}`, e é possível nestar os comandos `\textit{\textbf{Texto em itálico e em negrito}}`
```latex
\textbf{negrito} \textit{itálico} \textit{\textbf{negrito e itálico}}
```
+ `Main.tex` é o documento principal para a compilação, porém nesse documento você não conseguirá editar o que está nos capítulos, seções e outros itens, como a folha de rosto, para editá-los é necessário acessar os arquivos incluídos no documento principal, através do comando `\include{caminho até o documento}`
+ Quando for adicionar uma figura, uma tabela, um quadro, etc. Você pode definir o local em que aparecer na página, como pode ser visto em: https://www.overleaf.com/learn/latex/Positioning_images_and_tables . Assim, as principais posições são `h` - here (no local exato do texto, mas nem sempre), `t` - top (topo da página), `b` - bottom (na parte de baixo da página), `p` - page (uma página inteira somente para a imagem), `!` - para forçar o comando (pois muitas vezes o overleaf organiza de uma maneira otimizada mesmo que você dê um comando, então você pode usar `h!` por exemplo e `H` - posição exata no texto, similar ao `h!`. Você sempre irá colocar a posição entre colchetes, junto ao comando `\begin{}`, como por exemplo `\begin{figure}{h!}`.

## Como as pastas estão organizadas:

Em `01-elementos-pre-textuais` encontram-se todas as páginas que estão antes da apresentação do trabalho. Estão apresentados a seguir, segundo o manual de trabalhos acadêmicos da UFCSPA (2022), disponível no link: https://ufcspa.edu.br/documentos/biblioteca/Manual_de_Trabalhos_Acadmicos_2022.pdf

1. **Folha de rosto (Obrigatório)**
2. **Dados de catalogação na publicação / Ficha Catalográfica (Obrigatório, exceto para TCC que varia de acordo com o curso)**
3. Errata (opcional)
4. **Folha de aprovação (obrigatório)**
5. Dedicatória (opcional)
6. Agradecimentos (opcional)
7. Epígrafe (opcional)
8. **Resumo na língua vernácula (obrigatório)**
9. **Resumo em língua estrangeira (obrigatório)**
10. Lista de ilustrações (opcional)
11. Lista de tabelas (opcional)
12. Lista de abreviaturas e siglas (opcional)
13. Lista de símbolos (opcional)
14. **Sumário (obrigatório)**

Em `02-elementos-textuais` estão todos os capítulos da apresentação do trabalho, que são a **Introdução**, o **Desenvolvimento** e a **Conclusão**.

Em `03-elementos-pos-textuais` encontram-se os elementos pós-textuais, que estão apresentados na lista a seguir, com o único obrigatório sendo as referências:

1. **Referências (obrigatório)**
2. Glossário (opcional)
3. Apêndice (opcional)
4. Anexo (opcional)

Em `04-figuras` estão dispostas as figuras, basta colocar a figura com um nome fácil de ser chamado, geralmente coloco o mesmo nome da figura com a sua label na hora de chamá-la no corpo do texto, o mesmo vale para as tabelas em `05-tabelas`, os quadros em `06-quadros` e os algoritmos em `07-algoritmos`. Eu coloquei as tabelas diretamente no texto, isso não influencia na hora de criar o índice de tabelas, mas é melhor deixar na pasta para organização, como foi feito com os quadros e pode ser visto no capítulo 6 dos elementos textuais, em que há o chamado `\input{./06-quadros/cronograma.tex}` para adicionar o quadro diretamente da pasta/diretório com os quadros.
