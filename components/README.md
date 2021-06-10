# Components

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
