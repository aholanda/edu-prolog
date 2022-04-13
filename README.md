# Introduction to Prolog programming language.

This repository contains `.adoc` files to generate a unique
`index.html` with a brief and introductory course about
Prolog programming language. Before executing the script,
the dependencies must be checked:

1. [asciidoctor](https://asciidoctor.org/)
2. [graphviz dot](http://www.graphviz.org/)

Then, just run

````
$ make
````

to generate the `index.html`. To clean the generated files, just run

````
$ make clean
````

- [dot](dot/) diretory contains image files in dot format to be processed by dot graphviz;
- [src](src/) directory contains examples of programs in Prolog.
