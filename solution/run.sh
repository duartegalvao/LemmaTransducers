# Base transducer
fstcompile --isymbols=syms.txt --osymbols=syms.txt lemma_base.txt | fstarcsort > lemma_base.fst

# a.
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

# b.
# 6. lemma2verb
fstunion lemma2verbip/lemma2verbip.fst lemma2verbis/lemma2verbis.fst > lemma2verb1.fst
fstunion lemma2verb1.fst lemma2verbif/lemma2verbif.fst > lemma2verb_min.fst
fstconcat lemma_base.fst lemma2verb_min.fst > lemma2verb.fst
rm lemma2verb1.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait lemma2verb.fst | dot -Tpdf  > lemma2verb.pdf

# 7. lemma2word
fstunion lemma2noun/lemma2noun.fst lemma2adverb/lemma2adverb.fst > lemma2word1.fst
fstunion lemma2word1.fst lemma2verb_min.fst > lemma2word2.fst
fstconcat lemma_base.fst lemma2word2.fst > lemma2word.fst
rm lemma2word1.fst lemma2word2.fst lemma2verb_min.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait lemma2word.fst | dot -Tpdf  > lemma2word.pdf

# c.
# 8. word2lemma
fstinvert lemma2word.fst > word2lemma.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait word2lemma.fst | dot -Tpdf  > word2lemma.pdf

# d.
# Test transducers
cd examples
source run.sh
cd ..

# Final deliver
mkdir -p FINALtransducers
mv lemma2noun.fst lemma2adverb.fst lemma2verbip.fst lemma2verbis.fst lemma2verbif.fst lemma2verb.fst lemma2word.fst word2lemma.fst FINALtransducers

mkdir -p FINALpdf
mv lemma2noun.pdf lemma2adverb.pdf lemma2verbip.pdf lemma2verbis.pdf lemma2verbif.pdf lemma2verb.pdf lemma2word.pdf word2lemma.pdf FINALpdf

mkdir -p FINALexamples
mv examples/*.pdf FINALexamples
