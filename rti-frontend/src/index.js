import React from 'react';
import ReactDOM from 'react-dom';
import {createStore} from 'redux'
import thunk from 'redux-thunk'
import {Provider} from 'redux-store' //any component wrapped in Provider gets access to store
import {createStore, applyMiddleware} from 'redux'

import App from './App';

// set up store here {}

ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);

