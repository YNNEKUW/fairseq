fairseq-train \
    data-bin/bug14 \
    --arch transformer_iwslt_de_en \
    --share-decoder-input-output-embed \
    --optimizer adam \
    --adam-betas '(0.9, 0.98)' \
    --lr 5e-4 \
    --lr-scheduler inverse_sqrt \
    --warmup-updates 4000 \
    --dropout 0.3 \
    --weight-decay 0.0001 \
    --criterion label_smoothed_cross_entropy \
    --label-smoothing 0.1 \
    --max-tokens 4096 \
    --eval-bleu \
    --eval-bleu-args '{"beam": 5, "max_len_a": 1.2, "max_len_b": 10}' \
    --eval-bleu-detok moses \
    --eval-bleu-remove-bpe \
    --eval-bleu-print-samples \
    --best-checkpoint-metric bleu --maximize-best-checkpoint-metric \
    --num-workers 8 \
    --save-dir checkpoints/transformer_iwslt_de_en_6_6_mine_baseline_v5_1 \
    --adam-eps 1e-9

#   data-bin/iwslt14.tokenized.de-en \
# --save-dir checkpoints/transformer_iwslt_de_en_6_6_relu_size_alpha0.25_noclip_test \
# --clip-norm 0.1 # is required when using normalized version
