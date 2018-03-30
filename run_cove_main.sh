#!/usr/bin/env bash
python cove_main.py --status train \
		--wordemb glove \
		--train ../data/conll2003/train.bmes \
		--dev ../data/conll2003/dev.bmes \
		--test ../data/conll2003/test.bmes \
		--savemodel ../data/conll2003/cove/saved_model \


# python main.py --status decode \
# 		--raw data/$1/dev.bmes \
# 		--savedset data/$1/saved_model.lstmcrf.dset \
# 		--loadmodel data/$1/saved_model.lstmcrf.13.model \
# 		--output data/$1/raw.out \
