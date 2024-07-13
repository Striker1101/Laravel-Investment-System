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

![support ](https://demo.neontheme.com/assets/images/thumb-2@2x.png)

window
open git bash as admin
touch .ssh
ls -al ~/.ssh

mac or linux
use
sudo ls -al ~/.ssh

generate a new ssh key
ssh-keygen -t ed25519 -C "your-email@example.com"

add to ssh agent
eval "$(ssh-agent -s)"
sudo ssh-add ~/.ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub

//carry out this steps

rm -rf .ssh

mkdir .ssh

ls -al ~/.ssh

ssh-keygen -t ed25519 -C "your-email@example.com"

eval "$(ssh-agent -s)"

sudo ssh-add ~/.ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub

add kyc to admin and user dashboard
admin
manage crypto >>
manage default stock
send bulk notification
