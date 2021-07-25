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

The database we used for this project is PostgreSQL.
The integration with this object-relational database made possible to save information about the company, all the products sold, the work fields and the team working on them.

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

#### Component: Pop-Up

###### Functionalities and structure:

_This component is used inside the Layout(inside the BottomBar) and it is used to make the user able to share the website on his social networks and by his email. The popup shows also the current full URL of the page (changing dinamically). The component take advantage of Twitter and Facebook share buttons linking directly the user with the social network filling automatically a post, for sharing the content of the website_

#### Component: History Carousel

###### Functionalities and structure:

_This component is used inside the About us page to display a list of text cards that can be slided to up or down by the user thanks to triangular buttons on the side. The component is composed by three different sub-comonents: The "HistoryCardWithCarousel" is the wrapper component where are defined all the cards to be shown. The "HistoryCarousel" defines and take care of the events related to the user's actions. The "HistoryCarouselSlide" is the internal component and represent the single card that is shown at the moment and take care of the animation related to the cards._

## Plugins

# Routing

The website is composed of many pages (i.e. a home page, about page, contact page etc.) and the best way to handle and show all of them is the Routing mechanism provided by Nuxt.js.
Nuxt.js automatically generates the Vue-router configuration for you, based on your provided Vue files inside the pages directory, that’s means it is no more necessary (as in a Vue application) to write manually all the routing configurations. To navigate between the pages we used Nuxtlinks component. Finally, as we have also many pages referring to dynamic elements loaded from database we also exploit the possibility to create dynamic routes by using an underscore ( _ ) followed by the parameter name “id” (like users/_id.vue).
In this way the routing is more secure and also the manipulation of the URLs are more difficult because it is all handle by Nuxt.js routing system. Thanks to this mechanism we could also add a “404 Page not found” page to let the user know there was a problem with the URL and to redirect him to the homepage.

# Store

The store directory is really useful as in many cases the website needs to manage an internal state, and in big application this can be useful to access data all over the components among different pages. In this project we used the store to deal with the chatbot status and to retrieve the messages exchanged between the user and the bot. Thanks to this feature the chat is accessible among all the pages as also the history of all the exchanged messages in the current session.

# Chatbot

The project also include a chatbot that is accessible from all the pages of the website and that is provided by a Multi-Modal Chatbot framework (MMCC). The process description and all the tasks performed by the bot is created in a json format (uploaded with the project). The bot is also able to interact with the routing system and switch between different pages helping the user to navigate throughout the website.

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

### Nuxt.js usage

1. We could exploit SSR (Server Side Rendering) as the server will be used to deliver HTML based on all the components in the application instead of the pure JavaScript, gaining a large SEO (Search Engine Optimization) boost and better UX (user experience).
2. It supports generating a static website based on the Vue application, still having an high score in SEO as the framework will pre-render all pages and include the necessary HTML.
3. It also allows to stick to a more classical approach of web development relying on CSR (Client Side Rendering).
4. The choice between CSR and SSR depends on the weight of the requests made to the server and some other factor including the type of data that you have to retrieve from the server or the level of security you have to achieve. Server-side rendering allows developers to pre-populate a web page with custom user data directly on the server. It is generally faster to make all the requests within a server and it is great for some search engine that crawl the site for better SEO. The cons are that the server needs to be frequently requested and this can bring to a general slowdown of the website. On the other hand Client-side rendering manages the routing dynamically without refreshing the page every time a user requests a different route and it is generally faster after the rendering of the first page (the first request is a complex bundle of all the information needed). It is great for web applications and relies on a selection of JavaScript libraries. The cons of this approach are the low SEO if it is implemented in the wrong way and in many cases the initial load may be quite heavy.
5. Given its modularity, it's possible to reuse code all over the website thanks to the concept of the components. This modular architecture makes the development faster and easier and allowed us to guarantee uniformity in the design of all the pages and also to optimized the code making it more readable.
6. Default Nuxt.js application have also a really useful directory structure so that everything is standardized, but most of all it grants the correct use of some of the functionality offered by this framework as for example the routing or the store function. It also allows the auto detection of the pages, the components (reusable modules) and the page layouts.
7. It grants the integration with some external API such as databases (we used PostgreSQL).

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
