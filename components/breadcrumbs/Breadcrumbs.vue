<template>
  <ol typeof="BreadcrumbList">
    <li v-for="(item, i) in crumbs" :key="i">
      <button class="br-button">
        <span>
          <nuxt-link
            :to="{
              path: item.path,
              query: item.query,
            }"
            style="text-decoration: none"
            :class="{ 'nuxt-link-active': item.class }"
          >
            {{ item.name }}
          </nuxt-link>
        </span>
      </button>
    </li>
  </ol>
</template>

<script>
export default {
  computed: {
    crumbs() {
      const crumbs = []
      // complete path to the current page
      const currentRoute = this.$route.path
      // split the element of the path into the subpath
      const arrayOfCrumbs = currentRoute.split('/')
      // remove home from routes
      arrayOfCrumbs.shift()

      console.log(currentRoute)
      console.log(arrayOfCrumbs.toString())
      // don't want to display breadcrumbs in the home page
      if (currentRoute !== '/') {
        // iterate for each element in the array of subpath
        arrayOfCrumbs.forEach((item, i, { length }) => {
          const crumb = {}
          // create the correct path for the single breadcrumbs
          crumb.path = currentRoute.substring(
            0,
            currentRoute.indexOf(item) + item.length
          )
          // select the name to display
          crumb.name = item.replace('_', ' ')
          crumb.query = ''
          console.log(
            '-> path: ' +
              crumb.path +
              '   name: ' +
              crumb.name +
              ' length:' +
              length +
              ' i:' +
              i
          )
          // is last item?
          if (i === length - 1) {
            // replace the ids with other more meaningful stuff

            if (/^\d+$/.test(crumb.name)) {
              crumb.name = 'details'
            }
            // if it is active it can not be clicked because you are in that locationn
            crumb.class = 'true'
          }
          crumbs.push(crumb)
        })
      }
      return crumbs
    },
  },
  metaInfo: {
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
    ],
  },
}
</script>

<style scoped>
ol {
  list-style: none;
}

@media screen and (max-width: 600px) {
  ol {
    display: flex;
    justify-content: space-around;
    padding-left: 0%;
  }
}
li {
  display: inline;
  padding-left: 5%;
}
@media screen and (max-width: 600px) {
  li {
    display: flex;
    justify-content: center;
    padding-left: 0%;
  }
}
li a {
  color: rgb(63, 63, 63);
  padding: 1% 0%;
  font-size: 1.5rem;
}
.nuxt-link-exact-active.nuxt-link-active {
  color: rgb(63, 63, 63);
  font-style: italic;
  font-weight: bold;
}

.br-button {
  display: inline-block;
  border-radius: 4px;
  border: none;
  text-align: center;
  width: fit-content;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  background-color: transparent;
}

.br-button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  color: rgb(63, 63, 63);
  font-size: 1.25rem;
  transition: 0.5s;
}

.br-button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.br-button:hover span {
  padding-right: 25px;
}

.br-button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
