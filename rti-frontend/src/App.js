import React, {Component} from 'react';
import {connect} from 'react-redux'
//gives component access to store
import InmatesContainer from './containers/InmatesContainer'
import {fetchInmates} from './actions/fetchInmates'
class App extends Component {

//fetch all inamtes from backend 
componentDidMount(){
  fetch("https://jailbase-jailbase.p.rapidapi.com/recent/?source_id=ca-lcso", {
	"method": "GET",
	"headers": {
		"x-rapidapi-host": "jailbase-jailbase.p.rapidapi.com",
		"x-rapidapi-key": "5a8b2d2c90mshbe395b4a25ced29p180267jsn00f7c327bfbe"
	}
})
.then(response => {
	console.log(response);
})
.catch(err => {
	console.log(err);
});
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

export default connect(null, {fetchInmates})(App);
//connect accepts MapStateToProps & action creators 
//mapDispatchToProps or action creator as second argument 
//gives abiliity to update store - fetchInmates