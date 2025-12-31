# 🚀 Guía de Despliegue a GitHub

## Paso 1: Crear el Repositorio en GitHub

1. Ve a https://github.com/new
2. Nombre del repositorio: `flatnews-landing` (o el nombre que prefieras)
3. Descripción: "Flatnews Landing Page"
4. Elige **Público** (necesario para GitHub Pages gratuito)
5. **NO marques** ninguna opción adicional (README, .gitignore, license)
6. Haz clic en **"Create repository"**

## Paso 2: Conectar y Subir el Código

Después de crear el repositorio, GitHub te mostrará una URL. Copia esa URL y ejecuta estos comandos:

```bash
cd /Users/sebastianbertolo/Desktop/Code-component-seb/Flatnews-landing

# Reemplaza TU_USUARIO y NOMBRE_REPO con tus valores reales
# Ejemplo: git remote add origin https://github.com/sebastianbertolo/flatnews-landing.git
git remote add origin https://github.com/TU_USUARIO/NOMBRE_REPO.git

git branch -M main
git push -u origin main
```

## Paso 3: Activar GitHub Pages

1. Ve a tu repositorio en GitHub
2. Haz clic en **Settings** (Configuración)
3. En el menú lateral, busca y haz clic en **Pages**
4. En la sección **"Source"**:
   - Selecciona **Branch: main**
   - Selecciona **Folder: / (root)**
5. Haz clic en **Save**
6. Espera 1-2 minutos para que GitHub procese el despliegue

## Paso 4: Acceder a tu Sitio

Tu sitio estará disponible en:
```
https://TU_USUARIO.github.io/NOMBRE_REPO/
```

Por ejemplo: `https://sebastianbertolo.github.io/flatnews-landing/`

## ✅ Verificación

- ✅ Repositorio git inicializado
- ✅ Archivos commiteados
- ✅ README.md creado
- ✅ .gitignore configurado
- ✅ Botones enlazados al formulario de Google Forms

## 📝 Notas Importantes

- GitHub Pages puede tardar unos minutos en activarse después de la primera configuración
- Cualquier cambio que hagas y subas con `git push` se reflejará automáticamente en el sitio
- El sitio se actualiza automáticamente cuando haces push a la rama `main`

