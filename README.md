# Nuxt Website

## Build Setup

```bash
# install dependencies
$ npm install

# serve with hot reload at localhost:3000
$ npm run dev

# build for production and launch server
$ npm run build
$ npm run start

# generate static project
$ npm run generate

# for the database connection:
1)Create the database through PgAdmin
2)SUSTITUTE THIS LINE IN THE FILE "db-conn" WITH YOUR DATABASE URL
const db = new Sequelize('postgres://postgres:ADMIN@localhost:PORT/DATABASENAME');
```

For detailed explanation on how things work, check out [Nuxt.js docs](https://nuxtjs.org).
