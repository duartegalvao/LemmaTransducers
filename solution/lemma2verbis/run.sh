fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbis1s.txt | fstarcsort > lemma2verbis1s.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbis1s.fst | dot -Tpdf  > lemma2verbis1s.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbis2s.txt | fstarcsort > lemma2verbis2s.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbis2s.fst | dot -Tpdf  > lemma2verbis2s.pdf

fstunion lemma2verbis1s.fst lemma2verbis2s.fst > lemma2verbis.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbis.fst | dot -Tpdf  > lemma2verbis.pdf
