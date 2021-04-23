# scripts
Scripts utiles pour tout et n'importe quoi

## installation
```bash
#Dans le dossier principal du projet vscode, genre là où il y a tous les ex.
aptupdate && apt install curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/EEM-the-best/scripts/main/install.sh)"
#Puis suivre les instructions
```
## add_labo:

### Utilisation
```bash
#Dans le dossier où se trouve add_labo:
./add_labo <nomLabo>

#Si installé (n'importe où):
add_labo <nomLabo>
```
Crée un répertoire avec le nom choisi contenant un fichier <nomLabo>.c et un makefile basé sur celui du labo15 de Maître PBR.
