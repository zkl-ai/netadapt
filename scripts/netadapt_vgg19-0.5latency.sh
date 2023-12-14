CUDA_VISIBLE_DEVICES=0 python master.py  models/vgg19/prune-by-latency 3 224 224 \
    -im models/vgg19/model.pth.tar -gp 0 1 2 3 \
    -mi 30 -bur 0.5 -rt LATENCY -irr 0.05 -rd 0.96 \
    -lr 0.001 -st 0 -lt models/vgg19/vgg19_single_device_lut.pkl \
    -dp data/ --arch vgg19


