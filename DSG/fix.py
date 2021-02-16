import sys
import os
for root, dirs, files in os.walk("labels", topdown=False):
    for name in files:
        f_path=os.path.join(root, name)
        print(f_path)
        f= open(f_path,"r")
        lines = f.readlines()
        f.close()
        #print(lines)
#        f= open(f_path,"w")
        f=sys.stderr
        for line in lines:
            spl = line.split()
            values = spl[-4::]
#            prefix = " ".join(spl[0::(len(spl)-4)])
            prefix = " ".join(spl[::-1][4::][::-1])
            my_dict = { "traffic sign":0,"traffic light":0,"car":1,"rider":  2,"motor":  1,"person":  3, "bus":  1, "truck":  1,"bike":  2,"train":  1}
            if not prefix.isnumeric():
                if(prefix in my_dict):
                    prefix = str(my_dict[prefix])
            if prefix in my_dict or prefix.isnumeric():
                f.write(prefix+" "+" ".join(values)+"\n")
#        f.close()

