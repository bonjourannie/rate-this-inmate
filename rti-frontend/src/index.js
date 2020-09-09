import React from 'react';
import ReactDOM from 'react-dom';
import thunk from 'redux-thunk'
import {Provider} from 'redux-store' //any component wrapped in Provider gets access to store
import {createStore, applyMiddleware, compose} from 'redux'

import App from './App';

// store holds (stores) data globally
// reducer tells you what to do with/update store based on actions

const composeEnhancers = window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose;

const enhancer = composeEnhancers(
  applyMiddleware(thunk),
  // other store enhancers if any
);

const store = createStore(reducer, enhancer);

ReactDOM.render(
  <React.StrictMode>
    <Provider store={store}>
      <Router>
        <App />
      </Router>
    </Provider>
  </React.StrictMode>,
  document.getElementById('root')
);

