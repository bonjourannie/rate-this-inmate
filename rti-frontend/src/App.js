import React, {Component} from 'react';

import InmatesContainer from './containers/InmatesContainer'
class App extends Component {

//fetch all inamtes from backend 
// componentDidMount(){
//   fetch("https://jailbase-jailbase.p.rapidapi.com/recent/?source_id=ca-lcso", {
// 	"method": "GET",
// 	"headers": {
// 		"x-rapidapi-host": "jailbase-jailbase.p.rapidapi.com",
// 		"x-rapidapi-key": "5a8b2d2c90mshbe395b4a25ced29p180267jsn00f7c327bfbe"
// 	}
// })
// .then(response => {
// 	console.log(response);
// })
// .catch(err => {
// 	console.log(err);
// });
// }


  render() {
    return (
      <div className="App">
        <InmatesContainer />
      </div>
    )
  }
}


export default App