# CSS Group

## Elena Bakuleva

Number: 10719262
Mail: elena.bakuleva@mail.polimi.it
Contribution summary: people overview page, people details page, realistic content generation

## Francesca Anfossy

Number: 10789800
Mail: francesca.anfossy@mail.polimi.it
Contribution summary: about page, chatbot logic, database creation, realistic content generation

## Ilaria Cappella

Number: 10620359
Mail: ilaria.cappella@mail.polimi.it
Contribution: areas page, contacts page, breadcrumbs, styling and animation, layouts, social features

## Marzia Favaro

Number: 10749161
Mail: marzia.favaro@mail.polimi.it
Contribution: products page, mobile devices experience, database integration and apis, topbar

# Documentation

## Server and DB technologies used

We used PostgreSQL for the DB

## Components

The generic page has a layout with the following elements:

1. The top bar: Consists on a navigation bar with the company logo to go to the home page, and a dropdown menu with the main (introductory) pages to visit. When out of the home page, breadcrumbs are also displayed in the lower part of this bar.

2. The chat bot: Consists on a chat icon to display a chat that interacts with the user to offer a guide through the page or only make the transition to a contact medium.

3. The footer: Has a button to return to the home page quickly instead of scrolling up to return, and has a share button to interact with other social media. The share button activates a pop up component with these elements.

In addition, every page counts with a page title that is customized for the content type. More details of the single components below or in the Readme of components, and more details of the components under the context of each page in the Readme of pages.

#### Component: Breadcrumbs

###### Functionalities and structure:

_This component is used as secondary navigation system that shows a user's location in a site. It take advantage of the URL of the current page and give to the user the opportunity to change page. Each text link is for a page that is one level higher than the one on its right. The last one correspond to the current location and it is not clickable as it is mark as active and because it would redirect the user to the same page_

#### Component: Carousel

###### Functionalities and structure:

_This component is used inside pages for showing a list of images that can be slided to the left or to the right by the user thanks to buttons or by clicking the left or right arrow on the keyboard. The component is composed by three different sub-comonents: The "CardWithCarousel" is the wrapper component where you can define all the images to be shown. The "Carousel" defines and take care of the events related to the user's actions. The "CarouselSlide" is the internal component and represent the single slide(image) that is shown at the moment and take care of the animation related to the slides._

#### Component: Map

###### Functionalities and structure:

_This component is used inside the contact page for showing the location of the offices in the world and take advantage of a google api for loading google map(development purpuses only). The component is composed by three different sub-comonents: The "GoogleMapLoader" is the component that import the api and load it in the page. The "GoogleMapMarker" is a separate file to define the script associated to the markers in the maps for showing the location on the map and uses the mapSetting.js file where there are all the configuration of the map(colors, type of marker, etc.). The "Map" is the main component where everything is imported and where the data about the locations are initialized_

#### Component: PopUp

###### Functionalities and structure:

_This component is used inside the Layout(inside the BottomBar) and it is used to make the user able to share the website on his social networks and by his email. The popup shows also the current full URL of the page (changing dinamically). The component take advantage of Twitter and Facebook share buttons linking directly the user with the social network filling automatically a post, for sharing the content of the website_

#### Component: History Carousel

###### Functionalities and structure:

_This component is used inside the About us page to display a list of text cards that can be slided to up or down by the user thanks to triangular buttons on the side. The component is composed by three different sub-comonents: The "HistoryCardWithCarousel" is the wrapper component where are defined all the cards to be shown. The "HistoryCarousel" defines and take care of the events related to the user's actions. The "HistoryCarouselSlide" is the internal component and represent the single card that is shown at the moment and take care of the animation related to the cards._

## Plugins

Routing:
Store:

## Best practices

To develop this project we used the _Vue.js_ framework. The code style consistency is obtained both following the Vue common style practices presented below and thanks to prettier, which improves the readability of the code, homogenizing what could have been our different coding styles.

### Layout

We have a main layout which is kept active in all the pages. This allows the user to always have a frame of reference and gives them the possibility to change the site status easily.\
Breadcrumbs and the chatbot are the main orientation features. Breadcrumbs allow the user to backtrack their actions and the chatbot allows them to explore.

### File structure

Our files maintain the same structure, demanded by Vue: a pure html template, a scripting component which deals with the logic, and css. The separation of these components improves the readability and allows to focus on the three aspects separately.\
The components allowed us to get more uniform and coherent pages thanks to component reuse and to have lighter and more readable files.\
Through the filenames we are implicitely defining the structure of our pages (the directory structure reflects the page hierarchy, index files are the parent), and defining the pages which depend on parameters (will access apis) by using the "underscore notation"

### Communication

Data exchange in the tree hierarchy of components is performed in different ways according to the information direction:

- parent to child: the data is passed through props
- child to parent: emission of events carry the information upwards. This type of communication is rare, mostly employed for propagating the _click event_.

### Vue in html

Vue allows to simplify the coding of the logic behind the elements to display. In particular, it is direcly embedded in the html code to set the components' props, to define conditional rendering (_v-if_) and to do list rendering (_v-for_).

### Vue for JS logic

In the script section of the code we specify the logic of our component, defining its own _data_ and the methods it uses. The latter can be called directly (_methods_) or automatically during different stages of the page creation (e.g., _computed_, _mounted_...).

### Data storage

Our application is required to store data which persists during the navigation, mainly about the chatbot status. For this reason we used the store functionality.

### Database integration

Sequelize module has been used to integrate the database with the application. The two communicate through apis which access the db and answer to a get request.

# Nuxt Website

You can find the build of the project at [this link](https://hyp-comc.herokuapp.com/)

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
```
