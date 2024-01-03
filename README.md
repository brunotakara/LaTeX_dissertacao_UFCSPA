# LaTeX dissertação UFCSPA
Template LaTeX para apresentação de dissertação da UFCSPA, foi utilizado em meu Projeto de TCC em Física Médica, e na Qualificação e Dissertação de Mestrado em Tecnologias da Informação e Gestão em Saúde.

Tive como base o template criado por Professor Valdex Santos <valdexsantos@ifba.edu.br> com colaboração do Francisco Bruno Souza Oliveira, que possui mais templates em gg.gg/profwaldexsantos

Feito no www.overleaf.com

Caso você não tenha familiaridade com LaTex, seguem algumas dicas:

+ `%` é utilizado para comentar uma linha, o que estiver escrito após o símbolo de porcentagem não será compilado
+ `\` é utilizado para indicar que um comando será utilizado, também pode ser utilizado para gerar caracteres especiais
+ `$` é utilizado para escrever no ambiente matemático, o termo a ser escrito deve estar entre dois S-cifrões, como por exemplo `$a^2 = b^2 + c^2$`
+ `{}` as chaves são utilizadas para aplicar algum comando no que estiver dentro das chaves, por exemplo, para deixar um texto em itálico basta usar o comando `\textit{texto em itálico}`, ou para o texto em negrito `\textbf{texto em negrito}`, e é possível nestar os comandos `\textit{\textbf{Texto em itálico e em negrito}}`
```latex
\textbf{negrito} \textit{itálico} \textit{\textbf{negrito e itálico}}
```
+ `Main.tex` é o documento principal para a compilação, porém nesse documento você não conseguirá editar o que está nos capítulos, seções e outros itens, como a folha de rosto, para editá-los é necessário acessar os arquivos incluídos no documento principal, através do comando `\include{caminho até o documento}`

