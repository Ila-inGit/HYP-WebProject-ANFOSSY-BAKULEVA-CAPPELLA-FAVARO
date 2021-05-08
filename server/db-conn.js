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
  define: {
    freezeTableName: true,
  },
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

  /*
   * The relations between tables are based on the assumption of ids from 1 to whatever
   * Is it nice? No. Do I care? No
   */
  const PersonProduct = db.define('person_product', {}, { underscored: true })

  Area.hasMany(Product)
  Product.belongsTo(Area, {
    foreignKey: {
      name: 'belongsToArea',
    },
  })
  Area.hasMany(Person)
  Person.belongsTo(Area, {
    foreignKey: {
      name: 'worksInArea',
    },
  })
  Person.belongsToMany(Product, {
    through: PersonProduct,
    foreignKey: { name: 'hasDeveloper' },
  })
  Product.belongsToMany(Person, {
    through: PersonProduct,
    foreignKey: { name: 'worksOn' },
  })

  db._tables = {
    Person,
    Product,
    Area,
    PersonProduct,
  }
}

/**
 * Function to insert some info in the database
 */
async function initializeData() {
  const { Person, Product, Area, PersonProduct } = db._tables
  await json.area.forEach((item) => {
    Area.create({
      name: item.name,
      shortDescription: item.description,
      longDescription: item.longDescription,
      image: item.image,
    })
  })
  await json.product.forEach((item) => {
    Product.create({
      name: item.name,
      shortDescription: item.description,
      longDescription: item.longDescription,
      image: item.image,
      belongsToArea: item.areas,
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
  await json.product.forEach((product) => {
    product.people.forEach((person) => {
      PersonProduct.create({
        worksOn: product.id,
        hasDeveloper: person,
      })
    })
  })
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
