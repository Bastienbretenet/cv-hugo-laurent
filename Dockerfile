# Image légère nginx pour servir le site statique
FROM nginx:1.27-alpine

# Copie du site (index.html, gallery.html, CV PDF, images) dans la racine web nginx
COPY . /usr/share/nginx/html/

# Liste des photos du mur, écrite au moment du build à partir du contenu réel
# du dossier. Déposer une image dans assets/gallery/ suffit : le fichier est
# régénéré à chaque déploiement, sans configuration nginx particulière.
RUN cd /usr/share/nginx/html/assets/gallery \
 && ls -1 2>/dev/null \
    | grep -Ei '\.(jpe?g|png|webp|avif)$' \
    | sort \
    | awk 'BEGIN { printf "[" } { printf "%s\"%s\"", (NR > 1 ? "," : ""), $0 } END { print "]" }' \
    > photos.json \
 && cat photos.json

# Le PDF et les images seront présents à la racine du projet au moment du build
EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD wget -q --spider http://localhost:80/ || exit 1
