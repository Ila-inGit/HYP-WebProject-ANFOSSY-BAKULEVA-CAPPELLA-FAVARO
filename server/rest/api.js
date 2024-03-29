import express from 'express'
import initializeDatabase from '../db-conn'
const app = express()

// We need this one if we send data inside the body as JSON
app.use(express.json())

async function init() {
  // Call the init function that returns the Database
  const db = await initializeDatabase()

  const { Product, Person, Area } = db._tables

  // API to get all products
  app.get('/product_list', async (req, res) => {
    const products = await Product.findAll()
    return res.json(products)
  })

  // API to get all areas
  app.get('/area_list', async (req, res) => {
    const areas = await Area.findAll()
    return res.json(areas)
  })

  // API to get all people
  app.get('/person_list', async (req, res) => {
    const people = await Person.findAll()
    return res.json(people)
  })

  // API to get a product given an id
  app.get('/product/:id', async (req, res) => {
    const { id } = req.params
    const product = await Product.findOne({
      where: {
        ID: id,
      },
    })
    return res.json(product)
  })

  // API to get an area given an id
  app.get('/area/:id', async (req, res) => {
    const { id } = req.params
    const area = await Area.findOne({
      where: {
        ID: id,
      },
    })
    return res.json(area)
  })

  // API to get a person given an id
  app.get('/person/:id', async (req, res) => {
    const { id } = req.params
    const person = await Person.findOne({
      where: {
        ID: id,
      },
    })
    return res.json(person)
  })

  // API to get items related to the parent
  // parent type: person/product/area
  // item type: person/product/area to get
  app.get('/relatedItems/:parentId/:parentType/:itemType', async (req, res) => {
    const { parentId, parentType, itemType } = req.params
    let parent = null
    let child = null
    // get child class
    if (itemType === 'person') {
      child = Person
    } else if (itemType === 'area') {
      child = Area
    } else if (itemType === 'product') {
      child = Product
    }
    // get parent class
    if (parentType === 'person') {
      parent = Person
    } else if (parentType === 'area') {
      parent = Area
    } else if (parentType === 'product') {
      parent = Product
    }
    const items = await parent.findAll({
      where: { ID: parentId },
      include: {
        model: child,
        through: { attributes: [] },
      },
    })

    return res.json(items)
  })
}

init()

export default app
