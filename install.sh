
# Install add_labo.sh
echo 'Installation de add_labo...'
git clone https://github.com/EEM-the-best/scripts.git
read -p "Enter your name: " name
sed -i 's/AuthorName/'"${name}"'/g' scripts/add_labo
cp scripts/add_labo /usr/bin
rm -rf scripts
echo "add_labo installé, relancez le terminal pour l'utiliser"

# Installation of vscode files
echo 'Installation des fichiers vscode...'
git clone https://github.com/EEM-the-best/VSCode-Files.git
cp VSCode-Files/launch.json VSCode-Files/tasks.json .vscode/
rm -rf VSCode-Files
echo "fichiers de vscode installés, relancez vscode pour les utiliser"

echo "Installation terminée!"
