# CSS Group

## Elena Bakuleva

Number: 10719262
Mail: elena.bakuleva@mail.polimi.it
Contribution summary: People page

## Francesca Anfossy

Number: 10789800
Mail: francesca.anfossy@mail.polimi.it
Contribution summary: Database, About us page

## Ilaria Cappella

Number: 10620359
Mail: ilaria.cappella@mail.polimi.it
Contribution: Areas page, Contact Us page

## Marzia Favaro

Number: 10749161
Mail: marzia.favaro@mail.polimi.it
Contribution: Products page

# Documentation

## Server and DB technologies used

Used PostgreSQL for the DB

## Components

#### Component: Breadcrumbs

###### Functionalities and structure:

_This component is used as secondary navigation system that shows a user's location in a site. It take advantage of the URL of the current page and give to the user the opportunity to change page. Each text link is for a page that is one level higher than the one on its right. The last one correspond to the current location and it is not clickable as it is mark as active and because it would redirect the user to the same page_

#### Component: Carousel

###### Functionalities and structure:

_This component is used inside pages for showing a list of images that can be slided to the left or to the right by the user thanks to buttons or by clicking the left or right arrow on the keyboard. The component is composed by three different sub-comonents: The "CardWithCarousel" is the wrapper component where you can define all the images to be shown. The "Carousel" defines and take care of the events related to the user's actions. The "CarouselSlide" is the internal component and represent the single slide(image) that is shown at the moment and take care of the animation related to the slides._

#### Component: Map

###### Functionalities and structure:

_This component is used inside the contact page for showing the location of the offices in the world and take advantage of a google api for loading google map(development purpuses only). The component is composed by three different sub-comonents: The "GoogleMapLoader" is the component that import the api and load it in the page. The "GoogleMapMarker" is a separate file to define the script associated to the markers in the maps for showing the location on the map and uses the mapSetting.js file where there are all the configuration of the map(colors, type of marker, etc.). The "Map" is the main component where everything is imported and where the data about the locations are initialized_

####Component: PopUp

######Functionalities and structure:

_This component is used inside the Layout(inside the BottomBar) and it is used to make the user able to share the website on his social networks and by his email. The popup shows also the current full URL of the page (changing dinamically). The component take advantage of Twitter and Facebook share buttons linking directly the user with the social network filling automatically a post, for sharing the content of the website_
Component: Functionalities and structure
Component: Functionalities and structure

## Plugins

Routing:
Store:

## Best practices

Comments about how your usage of the framework was compliant to the best practices for
the specific application domain of your website (discussed during the course).

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
