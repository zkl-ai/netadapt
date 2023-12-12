CUDA_VISIBLE_DEVICES=0, python master.py models/alexnet/prune-by-latency 3 224 224 \
    -im models/vgg19/model.pth.tar -gp 0 \
    -mi 30 -bur 0.25 -rt LATENCY  -irr 0.025 -rd 0.96 \
    -lr 0.001 -st 0 -lt models/vgg19/vgg19_single_device_lut.pkl \
    -dp data/ --arch vgg19
