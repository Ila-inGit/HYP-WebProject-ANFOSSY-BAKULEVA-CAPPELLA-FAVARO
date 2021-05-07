/* eslint-disable no-console */
const { Sequelize, DataTypes } = require('sequelize')
const json = require('../static/fake_db.json')

// Development
// const db = new Sequelize( 
//   'postgres://postgres:@127.0.0.1:5432/hyp-spider'
// )
const db = new Sequelize({
  host: 'localhost',
  port: 5432,
  dialect: 'postgres',
  database: 'test',
  username: 'group',
  password: 'banana',
})
// Production
// const pg = require('pg')
// pg.defaults.ssl = true
// const db = new Sequelize(process.env.DATABASE_URL, {
//   ssl: true,
//   dialectOptions: { ssl: { require: true, rejectUnauthorized: false } },
// })

/**
 * Function to define the structure of the database
 */
function defineDatabaseStructure() {
  const Person = db.define(
    'person',
    {
      name: DataTypes.STRING,
      role: DataTypes.STRING,
      bio: DataTypes.TEXT,
      email: DataTypes.STRING,
      image: DataTypes.STRING,
    },
    { underscored: true }
  )

  const Product = db.define(
    'product',
    {
      name: DataTypes.STRING,
      shortDescription: DataTypes.TEXT,
      longDescription: DataTypes.TEXT,
      image: DataTypes.STRING,
    },
    { underscored: true }
  )
  const Area = db.define(
    'area',
    {
      name: DataTypes.STRING,
      shortDescription: DataTypes.TEXT,
      longDescription: DataTypes.TEXT,
      image: DataTypes.STRING,
    },
    { underscored: true }
  )

  const PersonProduct = db.define('person_product', {}, { underscored: true })

  Area.hasMany(Product)
  Product.belongsTo(Area)
  Area.hasMany(Person)
  Person.belongsTo(Area, {
    as: 'worksIn',
    foreignKey: {
      name: 'worksInArea',
    },
  })
  Person.belongsToMany(Product, { through: PersonProduct })
  Product.belongsToMany(Person, { through: PersonProduct })

  db._tables = {
    Person,
    Product,
    Area,
  }
}

/**
 * Function to insert some info in the database
 */
async function initializeData() {
  const { Person, Product, Area } = db._tables
  await json.product.forEach((item) => {
    Product.create({
      name: item.name,
      shortDescription: item.description,
      longDescription: item.longDescription,
      image: item.image,
    })
  })
  await json.area.forEach((item) => {
    Area.create({
      name: item.name,
      shortDescription: item.description,
      longDescription: item.longDescription,
      image: item.image,
    })
  })
  await json.person.forEach((item) => {
    Person.create({
      name: item.name,
      role: item.role,
      bio: item.description,
      email: item.contacts,
      image: item.image,
      worksInArea: item.area,
    })
  })

  // Adding the first comment to the first article
  // await firstArticle.addComment(comment1.id)
}

/**
 * Function to initialize the database. This is exported and called in the main api.js file
 */
async function initializeDatabase() {
  console.log('Initializing DB... ')
  try {
    await db.authenticate()
    console.log('Connected to DB')
  } catch (error) {
    console.error('Unable to connect to DB: ', error)
  }
  // Call the function for the database structure definition
  defineDatabaseStructure()
  // Synchronize Sequelize with the actual database
  await db.sync({ force: true })
  // Call the function to insert some fake data
  await initializeData()
  console.log('DB ready')
  return db
}

export default initializeDatabase
