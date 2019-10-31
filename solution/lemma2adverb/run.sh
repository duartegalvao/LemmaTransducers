fstcompile --isymbols=../syms.txt --osymbols=../syms.txt lemma2adverb.txt | fstarcsort > lemma2adverb.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait lemma2adverb.fst | dot -Tpdf  > lemma2adverb.pdf

