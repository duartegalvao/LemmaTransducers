fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbip1s.txt | fstarcsort > lemma2verbip1s.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbip1s.fst | dot -Tpdf  > lemma2verbip1s.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbip2s.txt | fstarcsort > lemma2verbip2s.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbip2s.fst | dot -Tpdf  > lemma2verbip2s.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbip3s.txt | fstarcsort > lemma2verbip3s.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbip3s.fst | dot -Tpdf  > lemma2verbip3s.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbip1p.txt | fstarcsort > lemma2verbip1p.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbip1p.fst | dot -Tpdf  > lemma2verbip1p.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbip2p.txt | fstarcsort > lemma2verbip2p.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbip2p.fst | dot -Tpdf  > lemma2verbip2p.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2verbip3p.txt | fstarcsort > lemma2verbip3p.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbip3p.fst | dot -Tpdf  > lemma2verbip3p.pdf

fstunion lemma2verbip1s.fst lemma2verbip2s.fst > lemma2verbip1.fst
fstunion lemma2verbip3s.fst lemma2verbip1p.fst > lemma2verbip2.fst
fstunion lemma2verbip2p.fst lemma2verbip3p.fst > lemma2verbip3.fst

fstunion lemma2verbip1.fst lemma2verbip2.fst > lemma2verbip4.fst
fstunion lemma2verbip4.fst lemma2verbip3.fst > lemma2verbip.fst

rm lemma2verbip1.fst lemma2verbip2.fst lemma2verbip3.fst lemma2verbip4.fst

fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2verbip.fst | dot -Tpdf  > lemma2verbip.pdf
