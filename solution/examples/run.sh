# acabarei
fstcompile --isymbols=../syms.txt --osymbols=../syms.txt acabarei.txt | fstarcsort > test1.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait test1.fst | dot -Tpdf  > test1.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt acabarei_lemma.txt | fstarcsort > test2.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait test2.fst | dot -Tpdf  > test2.pdf

# aluna
fstcompile --isymbols=../syms.txt --osymbols=../syms.txt aluna.txt | fstarcsort > test3.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait test3.fst | dot -Tpdf  > test3.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt aluna_n_lemma.txt | fstarcsort > test4.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait test4.fst | dot -Tpdf  > test4.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt aluna_v_lemma.txt | fstarcsort > test5.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait test5.fst | dot -Tpdf  > test5.pdf

# alunas
fstcompile --isymbols=../syms.txt --osymbols=../syms.txt alunas.txt | fstarcsort > test6.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait test6.fst | dot -Tpdf  > test6.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt alunas_n_lemma.txt | fstarcsort > test7.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait test7.fst | dot -Tpdf  > test7.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt alunas_v_lemma.txt | fstarcsort > test8.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait test8.fst | dot -Tpdf  > test8.pdf

# concatenámos
fstcompile --isymbols=../syms.txt --osymbols=../syms.txt concatenámos.txt | fstarcsort > test9.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait test9.fst | dot -Tpdf  > test9.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt concatenámos_lemma.txt | fstarcsort > test10.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait test10.fst | dot -Tpdf  > test10.pdf

# sinceramente
fstcompile --isymbols=../syms.txt --osymbols=../syms.txt sinceramente.txt | fstarcsort > test11.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait test11.fst | dot -Tpdf  > test11.pdf

fstcompile --isymbols=../syms.txt --osymbols=../syms.txt sinceramente_lemma.txt | fstarcsort > test12.fst
fstdraw    --isymbols=../syms.txt --osymbols=../syms.txt --portrait test12.fst | dot -Tpdf  > test12.pdf

### Begin tests

# Testing lemma2noun
fstcompose test4.fst ../lemma2noun.fst > test4_lemma2noun.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test4_lemma2noun.fst  |  dot -Tpdf  > test4_lemma2noun.pdf

fstcompose test7.fst ../lemma2noun.fst > test7_lemma2noun.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test7_lemma2noun.fst  |  dot -Tpdf  > test7_lemma2noun.pdf

# Testing lemma2adverb
fstcompose test12.fst ../lemma2adverb.fst > test12_lemma2adverb.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test12_lemma2adverb.fst  |  dot -Tpdf  > test12_lemma2adverb.pdf

# Testing lemma2verbip
fstcompose test5.fst ../lemma2verbip.fst > test5_lemma2verbip.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test5_lemma2verbip.fst  |  dot -Tpdf  > test5_lemma2verbip.pdf

fstcompose test8.fst ../lemma2verbip.fst > test8_lemma2verbip.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test8_lemma2verbip.fst  |  dot -Tpdf  > test8_lemma2verbip.pdf

# Testing lemma2verbis
fstcompose test10.fst ../lemma2verbis.fst > test10_lemma2verbis.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test10_lemma2verbis.fst  |  dot -Tpdf  > test10_lemma2verbis.pdf

# Testing lemma2verbif
fstcompose test2.fst ../lemma2verbif.fst > test2_lemma2verbif.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test2_lemma2verbif.fst  |  dot -Tpdf  > test2_lemma2verbif.pdf

# Testing lemma2verb
fstcompose test2.fst ../lemma2verb.fst > test2_lemma2verb.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test2_lemma2verb.fst  |  dot -Tpdf  > test2_lemma2verb.pdf

fstcompose test5.fst ../lemma2verb.fst > test5_lemma2verb.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test5_lemma2verb.fst  |  dot -Tpdf  > test5_lemma2verb.pdf

fstcompose test8.fst ../lemma2verb.fst > test8_lemma2verb.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test8_lemma2verb.fst  |  dot -Tpdf  > test8_lemma2verb.pdf

fstcompose test10.fst ../lemma2verb.fst > test10_lemma2verb.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test10_lemma2verb.fst  |  dot -Tpdf  > test10_lemma2verb.pdf

# Testing lemma2word
fstcompose test2.fst ../lemma2word.fst > test2_lemma2word.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test2_lemma2word.fst  |  dot -Tpdf  > test2_lemma2word.pdf

fstcompose test4.fst ../lemma2word.fst > test4_lemma2word.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test4_lemma2word.fst  |  dot -Tpdf  > test4_lemma2word.pdf

fstcompose test5.fst ../lemma2word.fst > test5_lemma2word.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test5_lemma2word.fst  |  dot -Tpdf  > test5_lemma2word.pdf

fstcompose test7.fst ../lemma2word.fst > test7_lemma2word.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test7_lemma2word.fst  |  dot -Tpdf  > test7_lemma2word.pdf

fstcompose test8.fst ../lemma2word.fst > test8_lemma2word.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test8_lemma2word.fst  |  dot -Tpdf  > test8_lemma2word.pdf

fstcompose test10.fst ../lemma2word.fst > test10_lemma2word.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test10_lemma2word.fst  |  dot -Tpdf  > test10_lemma2word.pdf

fstcompose test12.fst ../lemma2word.fst > test12_lemma2word.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test12_lemma2word.fst  |  dot -Tpdf  > test12_lemma2word.pdf

# Testing word2lemma
fstcompose test1.fst ../word2lemma.fst > test1_word2lemma.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test1_word2lemma.fst  |  dot -Tpdf  > test1_word2lemma.pdf

fstcompose test3.fst ../word2lemma.fst > test3_word2lemma.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test3_word2lemma.fst  |  dot -Tpdf  > test3_word2lemma.pdf

fstcompose test6.fst ../word2lemma.fst > test6_word2lemma.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test3_word2lemma.fst  |  dot -Tpdf  > test3_word2lemma.pdf

fstcompose test9.fst ../word2lemma.fst > test9_word2lemma.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test9_word2lemma.fst  |  dot -Tpdf  > test9_word2lemma.pdf

fstcompose test11.fst ../word2lemma.fst > test11_word2lemma.fst
fstdraw --isymbols=../syms.txt --osymbols=../syms.txt --portrait test11_word2lemma.fst  |  dot -Tpdf  > test11_word2lemma.pdf
