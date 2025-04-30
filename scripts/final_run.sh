BASE_PATH="/content/drive/MyDrive/CS598DHL_RawFiles/"

cd -- "$BASE_PATH"
git clone https://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@github.com/sam-msds/CS598DLH_Project.git
cd CS598DLH_Project
#mv One-Versus-Not KeyClass
mv scripts keyclass
pip install snorkel sentence-transformers  transformers
cd keyclass/scripts/

mkdir data/
cd data/
FILE_ID="1idGFVRc5tfi_LyGihjQBnxB_9t4G0DlD" #Full MIMIC DATASET
#FILE_ID="1DaXCjzs8I4PCpzaldaDNIublK4MedD-_" #10 MIMIC DATASET
URL="https://docs.google.com/uc?export=download&id=$FILE_ID"
echo ${green}===Downloading MIMIC Data...===${reset}
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate $URL -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=$FILE_ID" -O "mimic.zip" && rm -rf /tmp/cookies.txt
echo ${green}===Unzipping MIMIC Data...===${reset}
jar xvf mimic.zip && rm mimic.zip
mv small-mimic mimic

cd -- "$BASE_PATH"
cd CS598DLH_Project/keyclass/scripts/
python config_creator.py
python run_all_configs.py
#CONFIG_LOCATION="${BASE_PATH}CS598DLH_Project/config_files/config_mimic.yaml"
#echo $CONFIG_LOCATION
#python run_all.py --config $CONFIG_LOCATION