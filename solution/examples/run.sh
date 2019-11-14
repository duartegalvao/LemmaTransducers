fstcompile --isymbols=../syms.txt --osymbols=../syms.txt objecto.txt | fstarcsort > objecto.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait objecto.fst | dot -Tpdf  > objecto.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt acabar.txt | fstarcsort > acabar.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait acabar.fst | dot -Tpdf  > acabar.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt obviamente.txt | fstarcsort > obviamente.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait obviamente.fst | dot -Tpdf  > obviamente.pdf


fstcompile --isymbols=../syms.txt --osymbols=../syms.txt objecto_lemma.txt | fstarcsort > objecto_lemma.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait objecto_lemma.fst | dot -Tpdf  > objecto_lemma.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt acabar_lemma.txt | fstarcsort > acabar_lemma.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait acabar_lemma.fst | dot -Tpdf  > acabar_lemma.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt obviamente_lemma.txt | fstarcsort > obviamente_lemma.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait obviamente_lemma.fst | dot -Tpdf  > obviamente_lemma.pdf


