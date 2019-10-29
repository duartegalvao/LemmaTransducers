fstcompile --isymbols=syms.txt --osymbols=syms.txt lemma_base.txt | fstarcsort > lemma_base.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait lemma_base.fst | dot -Tpdf  > lemma_base.pdf

# 4. lemma2verbis
cd lemma2verbis
source run.sh
cd ..
fstconcat lemma_base.fst lemma2verbis/lemma2verbis.fst > lemma2verbis.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait lemma2verbis.fst | dot -Tpdf  > lemma2verbis.pdf

# 5. lemma2verbif
cd lemma2verbif
source run.sh
cd ..
fstconcat lemma_base.fst lemma2verbif/lemma2verbif.fst > lemma2verbif.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait lemma2verbif.fst | dot -Tpdf  > lemma2verbif.pdf
