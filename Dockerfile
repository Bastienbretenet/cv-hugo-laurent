# Image légère nginx pour servir le site statique
FROM nginx:1.27-alpine

# Copie du site (index.html, gallery.html, CV PDF, images) dans la racine web nginx
COPY . /usr/share/nginx/html/

# Le mur de photos est décrit par la table PLACES de gallery.html : aucune
# liste n'est générée au build, chaque clé pointe vers son fichier dans
# assets/gallery/.

# Le PDF et les images seront présents à la racine du projet au moment du build
EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD wget -q --spider http://localhost:80/ || exit 1
