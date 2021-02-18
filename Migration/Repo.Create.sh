# Create Repository
echo "Creating New Repository := $REPO_NAME"
gh auth login --with-token <<< $GITHUB_TOKEN
gh repo create $ORG_NAME/$REPO_NAME --$SCOPE --confirm
