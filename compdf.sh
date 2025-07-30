#!/bin/bash

# Répertoire de sortie pour les fichiers compressés
output_dir="compressed_output"

# Création du répertoire de sortie s'il n'existe pas
mkdir -p "$output_dir"

# Parcours de tous les fichiers PDF dans le répertoire courant
for pdf_file in *.pdf; do
    # Vérifie si le fichier existe (au cas où il n'y aurait aucun PDF)
    [ -f "$pdf_file" ] || continue

    # Extraction du nom de fichier sans extension
    base_name="${pdf_file%.pdf}"

    # Chemin du fichier de sortie
    output_file="${output_dir}/${base_name}-opt.pdf"

    echo "Compression de : $pdf_file → $output_file"

    # Commande Ghostscript pour compression plus agressive
    gs -sDEVICE=pdfwrite \
       -dCompatibilityLevel=1.4 \
       -dPDFSETTINGS=/screen \
       -dDetectDuplicateImages=true \
       -dCompressFonts=true \
       -dSubsetFonts=true \
       -dNOPAUSE -dQUIET -dBATCH \
       -sOutputFile="$output_file" \
       "$pdf_file"

    # Vérification de la réussite
    if [ $? -eq 0 ]; then
        echo "Compression réussie : $output_file"
    else
        echo "Erreur lors de la compression de $pdf_file"
    fi
done

echo "Traitement terminé."
