index.html: main.adoc 01_sintaxe_semantica.adoc 02_estrutura_dados.adoc \
		03_recursao.adoc 04_cut.adoc 05_entrada-saida.adoc \
		06_aplicacoes.adoc src
	asciidoctor $< -o $@
trash += index.html

02_estrutura_dados.adoc: oracao.svg

oracao.svg: dot/oracao.dot
	dot -Tsvg $< -o $@
trash += oracao.svg

03_recursao.adoc: recursao.svg fatorial.svg

recursao.svg: dot/recursao.dot
	dot -Tsvg $< -o $@
trash += recursao.svg

fatorial.svg: dot/fatorial.dot
	dot -Tsvg $< -o $@
trash += fatorial.svg

04_cut.adoc:

06_aplicacoes.adoc: digrafo.svg

digrafo.svg: dot/digrafo.dot
	dot -Tsvg $< -o $@
trash += digrafo.svg

arvore-abraao.png: dot/arvore-abraao.dot
	dot -Tpng $< -o $@
trash += arvore-abraao.png

clean:
	$(RM) $(trash)
