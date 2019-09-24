const path = require('path')
const express = require('express')
const xss = require('xss')

const usersRouter = express.Router()
const jsonParser = express.json()

const UsersService = {
  getAllUsers(knex) {
    return knex.select('*').from('users')
  },
  insertNote(knex, newUser) {
    return knex
      .insert(newUser)
      .into ('users')
      .returning('*')
      .then(rows => {
        return rows[0]
      })
  }}

const serializeUser = user => ({
    id: user.id,
    password: user.password,
    first_name: user.first_name,
    last_name: user.last_name,
    email: user.email,
    location: xss(user.location),
    website: user.website,
    created_at: user.created_at,
    followers_count: user.followers_count,
    following_count: user.following_count
  })


usersRouter
  .route('/users')
  .get((req, res, next) => {
    const knexInstance = req.app.get('db')
    UsersService.getAllUsers(knexInstance)
      .then(users => {
        res.json(users.map(serializeUser))
      })
      .catch(next)
  })
  .post(jsonParser, (req, res, next) => {
    const { password, first_name, last_name, email, location, website, created_at, followers_count, following_count } = req.body
    const newUser = { password, first_name, last_name, email, location, website, created_at, followers_count, following_count }

    for (const [key, value] of Object.entries(newUser))
      if (value == null)
        return res.status(400).json({
          error: { message: `Missing '${key}' in request body` }
        })
    
    UsersService.insertUser(
      req.app.get('db'),
      newUser
    )
      .then(user => {
        res
          .status(201)
          .location(path.posix.join(req.originalUrl, `/${user.id}`))
          .json(serializeUser(user))
      })
      .catch(next)
  })

  module.exports = usersRouter