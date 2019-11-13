fstcompile --isymbols=../syms.txt --osymbols=../syms.txt objecto.txt | fstarcsort > objecto.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait objecto.fst | dot -Tpdf  > objecto.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt acabar.txt | fstarcsort > acabar.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait acabar.fst | dot -Tpdf  > acabar.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt obviamente.txt | fstarcsort > obviamente.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait obviamente.fst | dot -Tpdf  > obviamente.pdf


fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait objecto.fst | dot -Tpdf  > objecto.pdf
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait acabar.fst | dot -Tpdf  > acabar.pdf
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait obviamente.fst | dot -Tpdf  > obviamente.pdf
