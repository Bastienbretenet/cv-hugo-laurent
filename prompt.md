# Prompt Claude Code — Site CV one-page « Accompagnateur de voyages »

## Rôle & objectif

Tu es un développeur front-end et designer. Génère un **site CV d'une seule page (one-page)** pour **Hugo Laurent**, en reconversion vers le métier d'**accompagnateur de voyages d'aventure** (trek, expéditions, immersion culturelle).

**But du site** : servir de vitrine professionnelle pour **démarcher des agences de voyages, des tour-opérateurs et des accompagnateurs indépendants** et décrocher des missions d'accompagnement. La cible n'est pas un recruteur RH classique : ce sont des pros du voyage. Le site doit inspirer **confiance, sérieux et sens de la sécurité**, tout en donnant envie de partir à l'aventure avec lui.

Avant de coder, **utilise la skill `frontend-design`** pour cadrer la direction visuelle (typographie, tokens, hiérarchie). Fais un **vrai effort de design** : le résultat doit être joli, épuré et professionnel, pas un template générique.

## Stack technique (contraintes)

- **Un seul fichier `index.html`**, autonome.
- **HTML uniquement** + **TailwindCSS via CDN** (`<script src="https://cdn.tailwindcss.com"></script>`).
- Configure les couleurs de la charte dans `tailwind.config` (via le script d'init inline).
- Pas de framework JS, pas de build, pas de dépendance lourde. Un peu de JS vanilla est toléré uniquement si nécessaire (menu mobile, scroll doux).
- **Icônes** : SVG inline (style Lucide/Heroicons), sobres et cohérentes. Pas d'emojis dans le rendu final.
- **Polices** : importe des Google Fonts via `<link>`. Titres en **serif élégante** (ex. *Fraunhaces*, *Playfair Display* ou *Cormorant*) pour la touche caractère ; corps de texte en **sans-serif lisible** (ex. *Inter* ou *Work Sans*).
- Code propre, indenté, commenté par section.

## Charte graphique

- **Couleur principale** : `#3F472B` (vert olive / kaki profond) — fonds de sections marquantes, header/footer, titres, boutons pleins.
- **Couleur secondaire** : `#FFFFFF` — fonds clairs, respiration, texte sur fond foncé.
- Tu peux dériver **1 à 2 nuances complémentaires discrètes** à partir du vert principal (un beige/sable très clair pour alterner les fonds de blocs, un kaki plus clair pour les survols) — reste sobre, pas de couleurs vives.
- **Style visuel** : sobre, épuré, élégant, avec une **légère touche « aventure »** (finesse des filets/traits, éventuels petits repères de type carte/topographie très discrets, angles nets). Beaucoup d'air, marges généreuses, contrastes maîtrisés. Jamais chargé ni « clipart ».

## Structure & mise en page

- **Contenus bien séparés en blocs / encarts / cartes** avec sections alternées (fond blanc / fond sable clair / fond vert foncé) pour rythmer la lecture.
- **Responsive impeccable** : mobile-first, testé du smartphone au grand écran. Grilles qui se réorganisent proprement, typographie fluide, boutons accessibles au pouce, images qui ne débordent pas.
- Espacements cohérents (système d'échelle Tailwind), coins légèrement arrondis, ombres très douces si utiles.
- Accessibilité : contrastes suffisants, balises sémantiques (`header`, `nav`, `section`, `footer`), `alt` sur les images, focus visibles.

### Header (feature demandée)

Header propre et **collant (sticky)** avec :
- Le nom **Hugo Laurent** + sous-titre court « Accompagnateur de voyages d'aventure ».
- Une **navigation ancrée** vers les sections (Parcours, Expériences, Trek, Plongée, Contact).
- **Deux CTA bien visibles** :
  - **CTA contact** → `mailto:hugo.24@wanadoo.fr` (bouton plein vert principal).
  - **CTA « Télécharger le CV »** → lien vers `CV_Hugo_Laurent.pdf` (bouton contour). *Note : le fichier PDF sera déposé par Hugo à la racine du projet ; utilise ce nom de fichier et l'attribut `download`.*
- Menu **burger fonctionnel sur mobile**.

### Sections à produire (dans cet ordre)

1. **Hero** — nom, accroche forte, phrase d'intention, et les 2 CTA répétés. Ambiance visuelle « sommet / itinérance ». Prévois un emplacement image (placeholder propre avec ratio fixe et `alt` explicite).
   - Accroche suggérée : *« Construire l'aventure, anticiper les imprévus, évoluer en sécurité — et mettre cette approche au service des voyageurs. »*
2. **À propos / Mon parcours** — profil et pitch de reconversion.
3. **Ce que j'apporte** — 4 à 6 cartes « atouts » avec icône + titre + courte description (voir contenu ci-dessous).
4. **Expériences** — timeline ou liste en cartes.
5. **Trek & itinérance** — liste des treks/ascensions marquants, mise en valeur (altitudes, autonomie).
6. **Plongée & milieu marin** — formation, volontariat, chiffres clés.
7. **Découverte des territoires & immersion culturelle**.
8. **Formations & certifications** + **Langues** (barres/niveaux discrets) + **Compétences clés** (badges).
9. **Contact / CTA final** — bloc vert principal, coordonnées, gros bouton mail, lien site perso, lien téléchargement CV.
10. **Footer** — nom, mentions simples, retour haut de page.

## Contenu à intégrer (fidèle au CV & au portfolio)

### Identité
- **Nom** : Hugo Laurent
- **Poste visé** : Accompagnateur de voyages d'aventure — Trek | Aventure | Immersion culturelle
- **Téléphone** : 06 51 75 58 46
- **Email** : hugo.24@wanadoo.fr
- **Site perso** : https://hugo-travel.fr

### Profil / accroche
Après dix années comme responsable de showroom, Hugo souhaite mettre ses compétences en management, organisation et relation humaine au service de l'accompagnement de groupes. Ses expériences à l'étranger, son parcours pro et sa pratique du trek lui ont permis de développer des compétences en organisation, coordination, sécurité et relation humaine, qu'il veut aujourd'hui partager avec des groupes francophones.

### « Ce que j'apporte » (cartes atouts)
- **Concevoir une expédition** — itinéraire, logistique, matériel, budget, ravitaillements, démarches administratives ; tout est anticipé avant le départ.
- **Évoluer en autonomie** — lire une carte, anticiper la météo, gérer son énergie sur la durée ; l'autonomie au service de la sécurité du groupe.
- **S'adapter au terrain** — analyse permanente des conditions (météo, dénivelé, fatigue) pour ajuster itinéraire, rythme et objectifs en sécurité.
- **Manager une équipe** — 10 ans de management en prêt-à-porter + encadrement SSI Dive Master : fédérer, coordonner, garantir sécurité et qualité.
- **Explorer le monde** — forte ouverture culturelle et capacité d'adaptation nourries par de nombreux voyages.
- **Accompagnement personnalisé** — écoute, adaptation aux besoins de chacun, relation de confiance.

### Expériences
- **Exploration & voyages en autonomie** — *2022 → aujourd'hui.* Organisation de voyages en autonomie. Rando : GR10, GR20. Trek : Annapurnas (Népal), Salkantay & Santa Cruz (Pérou). Ascensions : Kilimandjaro (Tanzanie), Huayna Potosí (Bolivie), Acatenango & Fuego (Guatemala), Volcan Barú (Panama).
- **SSI Dive Master (formation) — Centre, Thaïlande** — *Février 2024.* Briefings de sécurité, encadrement, travail en équipe internationale, plongées en groupes.
- **Responsable showroom prêt-à-porter — Mathom** — *2013 → 2022.* Management d'équipe, développement commercial, organisation opérationnelle, sens du service client, prise de décision.

### Trek & itinérance (à lister en encarts)
- **GR10 (France)** — 1 mois en autonomie, seul, sous tente.
- **GR20 (Corse)** — 7 jours en autonomie, sous tente.
- **Tour des Annapurnas (Népal)** — 12 jours en autonomie.
- **Salkantay & Santa Cruz (Pérou)** — treks itinérants en autonomie.
- **Canyon de Colca (Pérou)** — trek de 3 jours en autonomie.
- **Kilimandjaro (Tanzanie)** — 5 895 m.
- **Huayna Potosí (Bolivie)** — 6 088 m.
- **Volcans Acatenango & Fuego (Guatemala)**.
- **Volcan Barú (Panama)** — de nuit, en solitaire.
- **Grand Vignemale (France)** — progression avec matériel d'alpinisme (crampons, corde).
- **Treks en forêt amazonienne** (Bolivie, Colombie, Guyane).

### Organisation & autonomie
Voyages de plusieurs mois en Amérique du Sud, Asie et Australie ; boucle de Hà Giang (Nord Vietnam) 10 jours à moto en autonomie ; road trip moto dans le sud du Vietnam ; road trip 4x4 en Australie (achat, préparation, logistique, plusieurs milliers de km). Adaptation régulière des itinéraires selon rencontres, conditions et opportunités.

### Découverte des territoires & immersion culturelle
Préparation de chaque voyage par des recherches sur l'histoire, la géographie et le patrimoine. Sites emblématiques : Machu Picchu (Pérou), temples d'Angkor (Cambodge), Ayutthaya (Thaïlande), Chichén Itzá (Mexique). Régions moins fréquentées : Sulawesi (Indonésie). Grands espaces : Salar d'Uyuni & Sud Lípez (Bolivie), Kakadu & Daintree Rainforest (Australie).

### Plongée & milieu marin (avec chiffres clés)
- Formation **SSI Dive Master** en Thaïlande (sécurité, organisation, assistance aux sorties).
- **Volontariat** en centre de plongée sur l'île de Tioman (Malaisie) : accueil des plongeurs francophones, préparation matériel, logistique, entretien, navettes bateaux.
- **Plus de 100 plongées** : Raja Ampat, Sipadan, Belize, Philippines, Sri Lanka, Indonésie, Thaïlande, Guadeloupe.
- Actions locales : restauration de coraux, nettoyage de plages.

### Formations
- **Master 2 Commerce International** — Formasup Campus, 2016 (alternance).
- **Licence Responsable Technico-Commercial France & International** — Formasup Campus, 2014 (alternance).
- **BTS Négociation Relation Client** — Cité scolaire Laure Gatet, 2013 (alternance).

### Certifications
- **SSI Divemaster** — Thaïlande, 2023.
- **Permis B**.

### Langues
- Français (langue maternelle), Anglais (bon niveau), Espagnol (intermédiaire).

### Compétences clés (badges)
Organisation & logistique d'expédition · Gestion de la sécurité · Lecture de carte & orientation · Gestion des imprévus · Management & coordination d'équipe · Relation & écoute · Autonomie · Adaptation au terrain.

## Images

Prévois des **emplacements images propres** (ratio fixe, coins arrondis discrets, `alt` explicites) pour : hero (sommet/itinérance), portrait, une scène de trek, une scène de plongée, un moment d'immersion. Utilise des placeholders neutres (fond kaki clair + libellé) que Hugo remplacera facilement ; nomme-les de façon parlante (`hero.jpg`, `portrait.jpg`, `trek.jpg`, `plongee.jpg`, `immersion.jpg`) et documente-les en commentaire.

## Finitions attendues

- Scroll doux vers les ancres, état actif du menu, survols soignés sur les CTA et cartes.
- Micro-détails « aventure » discrets (filets fins, séparateurs, éventuel liseré topographique très léger) — sans surcharge.
- Le tout **cohérent, aéré, crédible auprès de professionnels du voyage**.
- Livre le fichier `index.html` complet et fonctionnel, et **rappelle en fin de réponse** à Hugo de déposer `CV_Hugo_Laurent.pdf` et ses images à la racine.