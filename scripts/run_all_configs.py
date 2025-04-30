import subprocess

base_filename = "/content/drive/MyDrive/CS598DHL_RawFiles/CS598DLH_Project/keyclass/scripts/config_mimic_"
base_file_extension = '.yaml'

for i in range(0,0):
    filename = base_filename + str(i) + base_file_extension
    print("Running ",filename)
    subprocess.run(["python","run_all.py","--config",filename])