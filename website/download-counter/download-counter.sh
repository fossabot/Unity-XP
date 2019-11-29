pip install requests
wget -q https://raw.githubusercontent.com/mmilidoni/github-downloads-count/master/gdc;chmod +x -v gdc
./gdc rauldipeas Unity-XP | tac | awk 'NR <=1' | awk '{print $1}'  | echo +$(xargs expr 600 +) Downloads | tee website/download-counter/download-counter.log;rm -rfv gdc