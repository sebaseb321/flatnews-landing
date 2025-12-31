#!/bin/bash

# Script para subir Flatnews Landing Page a GitHub
# Uso: ./deploy.sh TU_USUARIO NOMBRE_REPO

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "❌ Error: Debes proporcionar tu usuario de GitHub y el nombre del repositorio"
    echo ""
    echo "Uso: ./deploy.sh TU_USUARIO NOMBRE_REPO"
    echo "Ejemplo: ./deploy.sh sebastianbertolo flatnews-landing"
    exit 1
fi

GITHUB_USER=$1
REPO_NAME=$2
REPO_URL="https://github.com/${GITHUB_USER}/${REPO_NAME}.git"

echo "🚀 Configurando repositorio para GitHub Pages..."
echo ""
echo "Usuario: $GITHUB_USER"
echo "Repositorio: $REPO_NAME"
echo "URL: $REPO_URL"
echo ""

# Verificar si ya existe un remote
if git remote get-url origin &> /dev/null; then
    echo "⚠️  Ya existe un remote 'origin'. ¿Deseas actualizarlo? (s/n)"
    read -r response
    if [[ "$response" =~ ^[Ss]$ ]]; then
        git remote set-url origin "$REPO_URL"
        echo "✅ Remote actualizado"
    else
        echo "❌ Operación cancelada"
        exit 1
    fi
else
    git remote add origin "$REPO_URL"
    echo "✅ Remote agregado"
fi

echo ""
echo "📤 Subiendo código a GitHub..."
git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ ¡Código subido exitosamente!"
    echo ""
    echo "📝 Próximos pasos:"
    echo "1. Ve a: https://github.com/${GITHUB_USER}/${REPO_NAME}/settings/pages"
    echo "2. En 'Source', selecciona: Branch: main, Folder: / (root)"
    echo "3. Haz clic en 'Save'"
    echo "4. Tu sitio estará disponible en: https://${GITHUB_USER}.github.io/${REPO_NAME}/"
else
    echo ""
    echo "❌ Error al subir el código. Verifica:"
    echo "   - Que el repositorio existe en GitHub"
    echo "   - Que tienes permisos para escribir en el repositorio"
    echo "   - Que estás autenticado en GitHub (git config --global user.name y user.email)"
fi

