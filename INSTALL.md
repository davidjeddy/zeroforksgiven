# Install

## DEV

### Requirements

Terminal
Docker

### Suggest

If on Windows / Mac: https://github.com/IFSight/d4m-nfs


### Process

#### Development (DEV)

Add domain to your machines hosts file

    127.0.0.1 m3-server.dev

Retrieve the application source code

    git clone git@github.com:davidjeddy/zeroforksgiven.git

Enter the project directory

    cd /zeroforksgiven

Create .env from .dist version; Edit values as needed, specifically any domain based values.

    cp .env.dist .env

Copy the docker override file

    cp ./docker-compose.override.yml.dist ./docker-compose.override.yml

OR, if using D4M

    cp ./docker-compose.override.yml.d4m.dist ./docker-compose.override.yml

Now we begin the container service build process

    cd ./docker && docker-compose up --build

Install application dependencies

    docker-compose run --rm app wget https://getcomposer.org -O composer.phar
    docker-compose run --rm app php composer.phar global require "fxp/composer-asset-plugin" -vvv
    docker-compose run --rm app php composer.phar install --ansi --profile --prefer-dist -o -vvv

And finally initialize the database schema and demo filler data

    docker exec -it zeroforksgiven_db_1 mysql -uroot -proot --execute="CREATE DATABASE IF NOT EXISTS zfg"
    docker-compose run --rm php console/yii app/setup --interactive=0
    docker-compose run --rm php console/yii migrate/up --interactive=0 --migrationPath=./vendor/davidjeddy/yii2-resutoran/src/migrations/

Now we are ready to send a request to the specified domain and observe output.
