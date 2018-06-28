printf "============== copy node_modules to /app ======================"
cp -rf node_modules/ app/
cd app/
printf "============== npm run build ======================"
npm run build
printf "============== npm start ======================"
npm start
