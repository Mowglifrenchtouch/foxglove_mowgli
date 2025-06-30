# 🔌 Addon Foxglove Bridge pour Mowgli-Docker

Ce pack ajoute un conteneur `foxglove_bridge` au projet `mowgli-docker` pour permettre une visualisation distante avec [Foxglove Studio](https://foxglove.dev/studio).

## 📦 Contenu

- `foxglove_bridge_docker/` → Dossier Docker pour builder l’image du bridge
- `docker-compose.override.yaml` → À placer à la racine de `mowgli-docker/` pour activer l'addon
- `README.md` → Ce fichier

## ⚙️ Installation

1. Copier le dossier `foxglove_bridge_docker/` dans `mowgli-docker/`
2. Copier `docker-compose.override.yaml` à la racine du projet
3. Lancer le conteneur :

```bash
docker compose up -d foxglove_bridge
```

## 🛰 Utilisation

Depuis ton PC (Foxglove Studio) :
- Se connecter à `ws://<IP_DU_PI>:8765`
- Choisir "Foxglove WebSocket"

🎯 Tu verras tous les topics ROS du robot, y compris `/odom`, `/tf`, `/cmd_vel`, `/status`, etc.

⚠️ Ce service est **optionnel** : il ne modifie aucun autre composant de `mowgli-docker`.

