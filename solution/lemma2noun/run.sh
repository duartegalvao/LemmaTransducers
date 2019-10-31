fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2nounms.txt | fstarcsort > lemma2nounms.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2nounms.fst | dot -Tpdf  > lemma2nounms.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2nounfs.txt | fstarcsort > lemma2nounfs.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2nounfs.fst | dot -Tpdf  > lemma2nounfs.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2nounmp.txt | fstarcsort > lemma2nounmp.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2nounmp.fst | dot -Tpdf  > lemma2nounmp.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2nounfp.txt | fstarcsort > lemma2nounfp.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2nounfp.fst | dot -Tpdf  > lemma2nounfp.pdf


fstunion lemma2nounms.fst lemma2nounfs.fst > lemma2noun1.fst
fstunion lemma2nounmp.fst lemma2nounfp.fst > lemma2noun2.fst

fstunion lemma2noun1.fst lemma2noun2.fst > lemma2noun.fst

rm lemma2noun1.fst lemma2noun2.fst

fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2noun.fst | dot -Tpdf  > lemma2noun.pdf
