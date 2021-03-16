#DSC/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSB/images/" "_i.jpg"
import sys
import os
import glob
from tqdm import tqdm

print(sys.argv)
argv = sys.argv

modes = ([f for f in os.listdir(argv[1]) if os.path.isfile(os.path.join(argv[1], f))])

for i in tqdm(modes):
    if i[-4::] == sys.argv[5][-4::]:
        #	print(sys.argv)
        args=[None,"../../"+i,sys.argv[10],sys.argv[11]]
        try:
            full_path = args[1]
            basename = os.path.splitext(os.path.basename(args[1]))[0] + args[3]
        #	print(full_path,basename)
            link_path=os.path.join(args[2],basename)
            os.symlink(full_path,link_path)
        except:
            pass
