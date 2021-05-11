<template>
  <ol typeof="BreadcrumbList">
    <li v-for="(item, i) in crumbs" :key="i" :class="item.classes">
      <button class="br-button">
        <span>
          <nuxt-link :to="item.path" style="text-decoration: none">
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
      // spit the element of the path into the subpath
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
            // if it is active it can not be clicked because you are in that locationn
            crumb.classes = 'is-active'
          }
          crumbs.push(crumb)
        })
      }
      return crumbs
    },
  },
}
</script>

<style scoped>
ol {
  list-style: none;
}
li {
  display: inline;
}

li a {
  color: grey;
  font-size: 18px;
}
li a.nuxt-link-exact-active.nuxt-link-active {
  color: grey;
  font-style: italic;
  font-weight: bold;
}

.br-button {
  display: inline-block;
  border-radius: 4px;
  border: none;
  text-align: center;
  padding-top: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  background-color: transparent;
}

.br-button span {
  cursor: pointer;
  display: inline-block;
  position: relative;

  color: grey;
  font-size: 20px;
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
