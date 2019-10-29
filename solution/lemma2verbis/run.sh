fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbis1s.txt | fstarcsort > lemma2verbis1s.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbis1s.fst | dot -Tpdf  > lemma2verbis1s.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbis2s.txt | fstarcsort > lemma2verbis2s.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbis2s.fst | dot -Tpdf  > lemma2verbis2s.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbis3s.txt | fstarcsort > lemma2verbis3s.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbis3s.fst | dot -Tpdf  > lemma2verbis3s.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbis1p.txt | fstarcsort > lemma2verbis1p.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbis1p.fst | dot -Tpdf  > lemma2verbis1p.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbis2p.txt | fstarcsort > lemma2verbis2p.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbis2p.fst | dot -Tpdf  > lemma2verbis2p.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbis3p.txt | fstarcsort > lemma2verbis3p.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbis3p.fst | dot -Tpdf  > lemma2verbis3p.pdf

fstunion lemma2verbis1s.fst lemma2verbis2s.fst > lemma2verbis1.fst
fstunion lemma2verbis3s.fst lemma2verbis1p.fst > lemma2verbis2.fst
fstunion lemma2verbis2p.fst lemma2verbis3p.fst > lemma2verbis3.fst

fstunion lemma2verbis1.fst lemma2verbis2.fst > lemma2verbis4.fst
fstunion lemma2verbis4.fst lemma2verbis3.fst > lemma2verbis.fst

rm lemma2verbis1.fst lemma2verbis2.fst lemma2verbis3.fst lemma2verbis4.fst

fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbis.fst | dot -Tpdf  > lemma2verbis.pdf
