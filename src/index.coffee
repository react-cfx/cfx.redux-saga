import * as saga from 'redux-saga'
import { default as sagaEffects } from 'redux-saga/effects'
import { call, put, takeEvery, takeLatest } from 'redux-saga/effects'

sagaDefault = saga.default

{ createSagaMiddleware } = saga
sagaMiddleware = createSagaMiddleware()

# createSagaMiddleware = (sagas) ->
#   sagaDefault.apply @, sagas

sagasRun = (sagas) ->
  for sagaOne in sagas
    sagaMiddleware.run sagaOne
  return

dispatch = (action, actionType) ->
  sagaEffects.put Object.assign {}
  , action
  , type: actionType

export default {
  saga
  sagaDefault
  sagaEffects
  # createSagaMiddleware
  dispatch
  sagaMiddleware
  sagasRun
}
