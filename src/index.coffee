saga = require 'redux-saga'
sagaDefault = saga.default
sagaEffects = require 'redux-saga/effects'

createSagaMiddleware = (sagas) ->
  sagaDefault.apply @, sagas
dispatch = (action, actionType) ->
  sagaEffects.put Object.assign {}
  , action
  , type: actionType

export default {
  saga
  sagaDefault
  sagaEffects
  createSagaMiddleware
  dispatch
}
