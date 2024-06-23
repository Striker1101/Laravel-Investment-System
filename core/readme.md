# Install PHP dependencies

composer install

# Install Node.js dependencies

npm install

# Build assets for development

npm run dev

# Create the symbolic link for storage

php artisan storage:link

# Publish vendor assets (optional, if you need to publish specific assets)

php artisan vendor:publish --tag=public

php artisan make:migration add_id_number_to_users_table --table=users
php artisan make:migration create_statements_table

// "axios": "^0.21.1",
// "bootstrap-sass": "^3.4.1",
// "cross-env": "^7.0.3",
// "jquery": "^3.6.0",
// "laravel-mix": "^6.0.19",
// "lodash": "^4.17.21",
// "vue": "^2.6.14",
// "sass": "^1.32.13"
