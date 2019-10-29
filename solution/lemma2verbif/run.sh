fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbif1s.txt | fstarcsort > lemma2verbif1s.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbif1s.fst | dot -Tpdf  > lemma2verbif1s.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbif2s.txt | fstarcsort > lemma2verbif2s.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbif2s.fst | dot -Tpdf  > lemma2verbif2s.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbif3s.txt | fstarcsort > lemma2verbif3s.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbif3s.fst | dot -Tpdf  > lemma2verbif3s.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbif1p.txt | fstarcsort > lemma2verbif1p.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbif1p.fst | dot -Tpdf  > lemma2verbif1p.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbif2p.txt | fstarcsort > lemma2verbif2p.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbif2p.fst | dot -Tpdf  > lemma2verbif2p.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbif3p.txt | fstarcsort > lemma2verbif3p.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbif3p.fst | dot -Tpdf  > lemma2verbif3p.pdf

fstunion lemma2verbif1s.fst lemma2verbif2s.fst > lemma2verbif1.fst
fstunion lemma2verbif3s.fst lemma2verbif1p.fst > lemma2verbif2.fst
fstunion lemma2verbif2p.fst lemma2verbif3p.fst > lemma2verbif3.fst

fstunion lemma2verbif1.fst lemma2verbif2.fst > lemma2verbif4.fst
fstunion lemma2verbif4.fst lemma2verbif3.fst > lemma2verbif.fst

rm lemma2verbif1.fst lemma2verbif2.fst lemma2verbif3.fst lemma2verbif4.fst

fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbif.fst | dot -Tpdf  > lemma2verbif.pdf
