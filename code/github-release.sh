tag="`date '+%d-%m-%y-%H-%M-%S'`"
wget -cO github-release https://github.com/buildkite/github-release/releases/download/v1.0/github-release-linux-amd64
chmod +x -v github-release
./github-release "Unity eXPerience ISO" $HOME/Unity-XP/unity-xp-19.10-amd64.* \
 --commit "master" \
 --tag "$tag" \
 --github-repository "rauldipeas/Unity-XP" \
 --github-access-token "$GITHUB_ACCESS_TOKEN"
