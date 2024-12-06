#!/bin/sh

# Reemplazar el valor de API_BACKEND en environment.ts
sed -i "s|http://localhost:3000|${API_BACKEND}|g" /app/src/environment.ts

# Iniciar la aplicación
npm start