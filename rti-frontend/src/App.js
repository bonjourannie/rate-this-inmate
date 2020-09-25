import React, {Component} from 'react';
import {connect} from 'react-redux'
//gives component access to store
import InmatesContainer from './containers/InmatesContainer'
import {fetchInmates} from './actions/fetchInmates'
class App extends Component {

//fetch all inamtes from backend 
componentDidMount(){
  
}


  render() {
    return (
      <div className="App">
        <InmatesContainer />
      </div>
    )
  }
}


//mSTP gives accesse to values in store as props
//ex can call this.props.inmates

export default App
//connect accepts MapStateToProps & action creators 
//mapDispatchToProps or action creator as second argument 
//gives abiliity to update store - fetchInmates