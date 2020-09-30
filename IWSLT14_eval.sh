fairseq-generate data-bin/iwslt14.tokenized.de-en \
    --path $1 \
	--batch-size 128 \
	--beam 5 \
	--remove-bpe \




# --path checkpoints/transformer_iwslt_de_en/checkpoint_best.pt \

