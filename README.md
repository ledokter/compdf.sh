# compdf.sh
Ce script bash permet de compresser automatiquement tous les fichiers PDF présents dans un dossier
# PDF Compression Batch avec Ghostscript

Ce script bash permet de compresser automatiquement tous les fichiers PDF présents dans un dossier, avec une compression optimisée pour les documents essentiellement textuels et peu colorés.  
Il utilise Ghostscript avec des réglages poussés pour réduire la taille des fichiers tout en conservant une qualité lisible.

---

## Présentation

Les fichiers PDF peuvent vite devenir lourds, même s'ils contiennent peu d'images. Ce script permet de réduire considérablement leur taille (jusqu’à 50% ou plus selon les cas) en automatisant la compression via Ghostscript.

### Caractéristiques :

- Traite tous les PDF du dossier où il est lancé
- Crée un dossier `compressed_output` pour stocker les fichiers compressés
- Conserve les noms originaux des fichiers avec un suffixe `-opt.pdf`
- Compression optimisée :  
  - Paramètre `-dPDFSETTINGS=/screen` pour forte compression adaptée aux textes  
  - Optimisation des polices embarquées  
  - Détection de doublons d’images  
- Simple, rapide et sans dépendances supplémentaires (hors Ghostscript)

---

## Prérequis

- Un environnement Linux, macOS ou WSL sur Windows
- Ghostscript installé (`gs` en ligne de commande)
  
Pour installer Ghostscript sous Debian/Ubuntu :

sudo apt update && sudo apt install ghostscript

---

## Installation

1. Clonez ce dépôt ou téléchargez le script `compress_pdf.sh`.

git clone https://github.com/ledockter/compress_pdf.sh.git
cd compress_pdf.sh


2. Rendez le script exécutable :

chmod +x compress_pdf.sh


---

## Usage

1. Placez vos fichiers `.pdf` à compresser dans le dossier du script.

2. Lancez le script depuis un terminal :

./compress_pdf.sh


3. Les PDFs compressés seront générés dans le dossier `compressed_output` avec le suffixe `-opt.pdf`.

---

## Exemple de sortie

Compression de : manuel-utilisateur.pdf -> compressed_output/manuel-utilisateur-opt.pdf
Compression réussie : compressed_output/manuel-utilisateur-opt.pdf
Compression de : rapport-2025.pdf -> compressed_output/rapport-2025-opt.pdf
Compression réussie : compressed_output/rapport-2025-opt.pdf
Traitement terminé.


---

## Personnalisation

Vous pouvez ajuster la compression en modifiant la variable `gs` dans le script.  
Le paramètre `-dPDFSETTINGS` peut être changé entre :

- `/screen` : forte compression, qualité basse images  
- `/ebook` : compression modérée, meilleure qualité  
- `/printer` ou `/prepress` : qualité maximale, poids élevé  

---

## Contribuer

Les contributions sont les bienvenues ! Ouvrez un ticket ou une Pull Request pour proposer des améliorations.

---

## Licence

Ce projet est sous licence MIT — voir le fichier `LICENSE` pour les détails.
