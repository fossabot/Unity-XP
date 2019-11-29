pip install requests
wget -q https://raw.githubusercontent.com/mmilidoni/github-downloads-count/master/gdc;chmod +x -v gdc
./gdc rauldipeas Unity-XP | tac | awk 'NR <=1' | awk '{print $1}'  | echo +$(xargs expr 600 +) Downloads > website/download-counter/download-counter.log;rm -rfv gdc
git config --global user.email "rauldipeas@mail.com";git config --global user.name "Raul Dipeas"
rm -rfv .github code docs resources screenshots _config.yml .gitbook.yml readme.md update.sh
git add .; git commit -m "^download-counter"
git push http://rauldipeas:$GITHUB_ACCESS_TOKEN@github.com/rauldipeas/Unity-XP.git HEAD:download-counter