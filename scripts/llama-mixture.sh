accelerate launch src/train.py \
    exp_name=llama-mixture \
    dataset=persona \
    dataset.prepend_persona=false \
    dataset.n_clusters=8 \
    model=llama1B-instruct \
    adapter=mixture_of_loras \
    adapter.n_loras=8 \
    adapter.r=2 \
    batch_size=4 \
    eval_every=40000 \
    eval_batch_size=8
