all: part1 part2 part3 part4

part1: lab7_part1.ml
	ocamlbuild -use-ocamlfind lab7_part1.byte

part2: lab7_part2.ml
	ocamlbuild -use-ocamlfind lab7_part2.byte

part3: lab7_part3.ml
	ocamlbuild -use-ocamlfind lab7_part3.byte

part4: lab7_part4.ml
	ocamlbuild -use-ocamlfind lab7_part4.byte

color: color.ml
	ocamlbuild -use-ocamlfind color.byte

run1: lab7_part1.byte
	./lab7_part1.byte

run2: lab7_part2.byte
	./lab7_part2.byte

run3: lab7_part3.byte
	./lab7_part3.byte

run4: lab7_part4.byte
	./lab7_part4.byte

runcolor: color.byte
	./color.byte

clean:
	rm -r _build *.byte
