import sys
import os
if len(sys.argv)>3:
#	print(sys.argv)
	try:
		full_path = sys.argv[1]
		basename = os.path.basename(sys.argv[1]) + sys.argv[3]
	#	print(full_path,basename)
		link_path=os.path.join(sys.argv[2],basename)
		os.symlink(full_path,link_path)
		print(link_path, 'created')
	except:
		print(sys.argv[1], 'already linked')