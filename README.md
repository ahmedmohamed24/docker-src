## Getting started:
1. Fork this Repository

    ``` git clone https://github.com/ahmedmohamed24/docker-src.git docker-laravel ```
1. change the current directory to project path ex:

      ``` cd docker-laravel ```

1. ``` docker-compose build && docker-compose up -d ```

    **alert:** </span> if there is a server running in your machine, you should stop it or change port 80 in docker-compose.yml to another port(8000)
    ```
    services:
      app:
        build:
          context: .
          dockerfile: nginx.dockerfile
          container_name: nginx
          ports:
            - "8000:80"
    ```
    *you can do this with each service*

1. install new laravel project in `src` folder or copy an existing one, to install new project run ```cd src && docker-compose exec php composer create-project --prefer-dist laravel/laravel . && cd ../```
1. Install dependencies with composer

      ```docker-compose exec php composer install ```
1. run migrations

     ``` docker-compose exec php php /var/www/html/artisan migrate ```
1. run seeder

     ``` docker-compose exec php php /var/www/html/artisan db:seed --class=DatabaseSeeder```
1. run testcases

      ``` docker-compose exec php php /var/www/html/artisan test```
