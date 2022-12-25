import pickle

f = open("lut_alexnet.pkl","rb")
lookup_table = pickle.load(f)
count = 0
total = 0
layer_names = lookup_table.keys()
KEY_LATENCY = "latency"
print(lookup_table.keys())
for layer_name in layer_names:
    for (num_in, num_out) in  lookup_table[layer_name][KEY_LATENCY].keys():
        latency = lookup_table[layer_name][KEY_LATENCY][(num_in, num_out)]
        total += 1
        if latency < 0.0:
            count += 1

print(count)
print(total)
print(count/total*100)

