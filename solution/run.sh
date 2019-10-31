fstcompile --isymbols=syms.txt --osymbols=syms.txt lemma_base.txt | fstarcsort > lemma_base.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait lemma_base.fst | dot -Tpdf  > lemma_base.pdf

# 1. lemma2noun
cd lemma2noun
source run.sh
cd ..
fstconcat lemma_base.fst lemma2noun/lemma2noun.fst > lemma2noun.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait lemma2noun.fst | dot -Tpdf  > lemma2noun.pdf

# 2. lemma2adverb
cd lemma2adverb
source run.sh
cd ..
fstconcat lemma_base.fst lemma2adverb/lemma2adverb.fst > lemma2adverb.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait lemma2adverb.fst | dot -Tpdf  > lemma2adverb.pdf


# 3. lemma2verbip
cd lemma2verbip
source run.sh
cd ..
fstconcat lemma_base.fst lemma2verbip/lemma2verbip.fst > lemma2verbip.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait lemma2verbip.fst | dot -Tpdf  > lemma2verbip.pdf


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
