CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6 python master.py models/alexnet/prune-by-latency 3 224 224 \
    -im /workspace/HAMP_code/HAMP/models/alexnet/model.pth.tar -gp 0 \
    -mi 30 -bur 0.25 -rt LATENCY  -irr 0.025 -rd 0.96 \
    -lr 0.001 -st 500 -lt latency_lut/mem_alexnet_mean.pkl \
    -dp data/ --arch alexnet
