# Install Dependencies
# JQ

sudo apt-get update

echo "Installing JQ"
sudo apt-get install jq

# GH
echo "Installing GH"
RELEASE=`curl  "https://api.github.com/repos/cli/cli/releases/latest"`
VERSION=`jq --raw-output '.tag_name' <<< "${RELEASE}"`
echo "GH latest version:= [$VERSION]"

# Download and Extract
curl -sSL https://github.com/cli/cli/releases/download/v${VERSION}/gh_${VERSION}_linux_amd64.tar.gz -o gh_${VERSION}_linux_amd64.tar.gz

# Verify
gh version
