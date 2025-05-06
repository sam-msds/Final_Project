BASE_PATH="/content/drive/MyDrive/CS598DLH_KeyClass_Reproduce/"

cd -- "$BASE_PATH"
git clone https://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@github.com/sam-msds/CS598DLH_Project.git
cd CS598DLH_Project
mv scripts keyclass
pip install snorkel sentence-transformers transformers
cd keyclass/scripts/

mkdir data/
cd data/
FILE_ID="1idGFVRc5tfi_LyGihjQBnxB_9t4G0DlD" 
URL="https://docs.google.com/uc?export=download&id=$FILE_ID"
echo ${green}===Downloading MIMIC Data...===${reset}
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate $URL -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=$FILE_ID" -O "mimic.zip" && rm -rf /tmp/cookies.txt
echo ${green}===Unzipping MIMIC Data...===${reset}
jar xvf mimic.zip && rm mimic.zip

cd -- "$BASE_PATH"
cd CS598DLH_Project/keyclass/scripts/
python config_creator.py
python run_all_configs.py