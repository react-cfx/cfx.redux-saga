saga = require 'redux-saga'
sagaDefault = saga.default
sagaEffects = require 'redux-saga/effects'

createSagaMiddleware = (sagas) ->
  sagaDefault.apply @, sagas
dispatch = (action, actionType) ->
  sagaEffects.put Object.assign {}
  , action
  , type: actionType

module.exports = {
  saga
  sagaDefault
  sagaEffects
  createSagaMiddleware
  dispatch
}
