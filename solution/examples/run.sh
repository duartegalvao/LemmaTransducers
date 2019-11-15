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


# Testing lemma2noun

# Testing lemma2adverb

# Testing lemma2verbip

# Testing lemma2verbis

# Testing lemma2verbif

# Testing lemma2verb
fstcompose acabar.fst ../lemma2verb.fst > acabar_lemma2verb.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait acabar_lemma2verb.fst  |  dot -Tpdf  > acabar_lemma2verb.pdf

# Testing lemma2word
fstcompose objecto.fst ../lemma2word.fst > objecto_lemma2word.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait objecto_lemma2word.fst  |  dot -Tpdf  > obviamente_lemma2word.pdf

fstcompose acabar.fst ../lemma2word.fst > acabar_lemma2word.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait acabar_lemma2word.fst  |  dot -Tpdf  > acabar_lemma2word.pdf

fstcompose obviamente.fst ../lemma2word.fst > obviamente_lemma2word.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait obviamente_lemma2word.fst  |  dot -Tpdf  > objecto_lemma2word.pdf

# Testing word2lemma
fstcompose objecto_lemma.fst ../word2lemma.fst > objecto_word2lemma.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait objecto_word2lemma.fst | dot -Tpdf  > objecto_word2lemma.pdf

fstcompose acabar_lemma.fst ../word2lemma.fst > acabar_word2lemma.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait acabar_word2lemma.fst | dot -Tpdf  > acabar_word2lemma.pdf

fstcompose obviamente_lemma.fst ../word2lemma.fst > obviamente_word2lemma.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait obviamente_word2lemma.fst | dot -Tpdf  > obviamente_word2lemma.pdf
