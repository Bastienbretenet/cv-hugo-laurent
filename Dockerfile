# Image légère nginx pour servir le site statique
FROM nginx:1.27-alpine

# Config nginx : listing JSON du dossier galerie + cache des images
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copie du site (index.html, gallery.html, CV PDF, images) dans la racine web nginx
COPY . /usr/share/nginx/html/

# Le PDF et les images seront présents à la racine du projet au moment du build
EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD wget -q --spider http://localhost:80/ || exit 1
