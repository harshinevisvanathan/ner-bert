#!/usr/bin/env bash

export MAX_LENGTH=128
#export BERT_MODEL=bert-base-multilingual-cased
export BERT_MODEL=dbmdz/bert-large-cased-finetuned-conll03-english
export OUTPUT_DIR=wnut_bert_model
export BATCH_SIZE=32
export NUM_EPOCHS=20
export SAVE_STEPS=750
export SEED=1

python3 run_ner.py \
--data_dir wnut16_data \
--labels wnut16_data/labels.txt \
--model_name_or_path $BERT_MODEL \
--output_dir $OUTPUT_DIR \
--max_seq_length  $MAX_LENGTH \
--num_train_epochs $NUM_EPOCHS \
--per_gpu_train_batch_size $BATCH_SIZE \
--save_steps $SAVE_STEPS \
--seed $SEED \
--do_train \
--do_eval \
--do_predict
