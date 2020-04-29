#!/usr/bin/env sh

#"gh": "gh-pages -d dist"

# остановить публикацию при ошибках
set -e

# сборка
npm run build
npm run gh

# переход в каталог сборки
cd dist

# если вы публикуете на пользовательский домен
# echo 'www.example.com' > CNAME

hub browse

cd -
