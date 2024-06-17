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
