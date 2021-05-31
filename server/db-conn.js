/* eslint-disable no-console */
const { Sequelize, DataTypes } = require('sequelize')

// Development
// const db = new Sequelize(
//   'postgres://postgres:@127.0.0.1:5432/hyp-spider'
// )
// DB credentials
// database: 'CSS_project',
// username: 'postgres',
// password: 'derp',
const db = new Sequelize({
  host: 'localhost',
  port: 5432,
  dialect: 'postgres',
  database: 'CSS_project',
  username: 'postgres',
  password: 'derp',
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
    'people',
    {
      ID: { type: DataTypes.SMALLINT, primaryKey: true },
      Name: DataTypes.STRING,
      Role: DataTypes.STRING,
      Bio: DataTypes.TEXT,
      Email: DataTypes.STRING,
      Picture: DataTypes.STRING,
    },
    { timestamps: false }
  )

  const Product = db.define(
    'products',
    {
      ID: { type: DataTypes.SMALLINT, primaryKey: true },
      Title: DataTypes.STRING,
      Short: DataTypes.TEXT,
      Long: DataTypes.TEXT,
      Image: DataTypes.STRING,
    },
    { timestamps: false }
  )
  const Area = db.define(
    'areas',
    {
      ID: { type: DataTypes.SMALLINT, primaryKey: true },
      Title: DataTypes.STRING,
      Short: DataTypes.TEXT,
      Long: DataTypes.TEXT,
      Image: DataTypes.STRING,
    },
    { timestamps: false }
  )

  const Development = db.define('development')
  const Work = db.define('work')
  const Offer = db.define('offer')

  Person.belongsToMany(Product, {
    through: Development,
    foreignKey: { name: 'ID_Person' },
  })
  Product.belongsToMany(Person, {
    through: Development,
    foreignKey: { name: 'ID_Product' },
  })

  Product.belongsToMany(Area, {
    through: Offer,
    foreignKey: { name: 'ID_Product' },
  })

  Area.belongsToMany(Product, {
    through: Offer,
    foreignKey: { name: 'ID_Area' },
  })

  Area.belongsToMany(Person, {
    through: Work,
    foreignKey: { name: 'ID_Area' },
  })
  Person.belongsToMany(Area, {
    through: Work,
    foreignKey: { name: 'ID_Person' },
  })

  db._tables = {
    Person,
    Product,
    Area,
    Development,
    Work,
    Offer,
  }
}

/**
 * Function to initialize the database. This is exported and called in the main api.js file
 */
async function initializeDatabase() {
  try {
    await db.authenticate()
    console.log('Connected to DB')
  } catch (error) {
    console.error('Unable to connect to DB: ', error)
  }
  // Call the function for the database structure definition
  defineDatabaseStructure()
  console.log('DB ready')
  return db
}

export default initializeDatabase
