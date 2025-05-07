import subprocess

base_filename = "/content/drive/MyDrive/CS598DLH_KeyClass_Reproduce/Final_Project/scripts/custom_config_class"
base_file_extension = '.yaml'

for i in range(0,19): # 10 to 19 Added new susovan Change to 19 in final run
    filename = base_filename + str(i) + base_file_extension
    print("Running ",filename)
    subprocess.run(["python","run_all.py","--config",filename])