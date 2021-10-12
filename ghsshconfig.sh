ssh-keygen -t ed25519 -C "sanchezfdez.javier@gmail.com" &&
eval "$(ssh-agent -s)" &&
ssh-add ~/.ssh/id_ed25519 &&
cat ~/.ssh/id_ed25519.pub &&
echo "COPY THE KEY AND PASTE IT INTO GITHUB"


