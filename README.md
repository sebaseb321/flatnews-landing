# Flatnews Landing Page

Landing page para Flatnews - Una plataforma minimalista de noticias diseñada para profesionales.

## 🚀 Despliegue en GitHub Pages

Esta página está lista para ser desplegada en GitHub Pages.

### Pasos para subir a GitHub Pages:

1. **Crear un repositorio en GitHub:**
   - Ve a [GitHub](https://github.com/new)
   - Crea un nuevo repositorio (puedes llamarlo `flatnews-landing` o el nombre que prefieras)
   - **NO** inicialices con README, .gitignore o licencia (ya tenemos estos archivos)

2. **Conectar el repositorio local con GitHub:**
   ```bash
   git remote add origin https://github.com/TU_USUARIO/NOMBRE_REPO.git
   git branch -M main
   git push -u origin main
   ```

3. **Activar GitHub Pages:**
   - Ve a la configuración del repositorio en GitHub
   - Navega a la sección "Pages" en el menú lateral
   - En "Source", selecciona la rama `main` y la carpeta `/ (root)`
   - Haz clic en "Save"
   - Tu sitio estará disponible en: `https://TU_USUARIO.github.io/NOMBRE_REPO/`

## 📁 Estructura del Proyecto

```
Flatnews-landing/
├── index.html          # Página principal (requerido para GitHub Pages)
├── README.md          # Este archivo
└── .gitignore         # Archivos ignorados por git
```

## 🛠️ Tecnologías Utilizadas

- HTML5
- Tailwind CSS (via CDN)
- Iconify (para iconos)
- Google Fonts (Inter)

## 📝 Notas

- El archivo `index.html` es el punto de entrada principal
- Todos los estilos y scripts están incluidos en el HTML
- No se requieren dependencias adicionales ni proceso de build

