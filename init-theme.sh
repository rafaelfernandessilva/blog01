#!/bin/bash

# Inicializar e atualizar submodules
echo "Inicializando submodules..."
git submodule init
git submodule update --recursive --remote

# Verificar se o tema foi baixado
if [ -d "themes/hugo-theme-stack" ]; then
    echo "✅ Tema baixado com sucesso!"
    ls -la themes/hugo-theme-stack/
else
    echo "❌ Erro ao baixar o tema"
    exit 1
fi 