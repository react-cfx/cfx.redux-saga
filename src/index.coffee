saga = (
  require 'redux-saga'
).default

sagaEffects = require 'redux-saga/effects'

createSagaMiddleware = (sagas) ->
  saga.apply @, sagas
dispatch = (action, actionType) ->
  sagaEffects.put Object.assign {}
  , action
  , type: actionType

module.exports = {
  saga
  effects: sagaEffects
  createSagaMiddleware
  dispatch
}
