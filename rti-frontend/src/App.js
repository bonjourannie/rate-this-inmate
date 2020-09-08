import React from 'react';


class App extends React.Component {

  componentDidMount(){
    fetch('http://localhost:3001/api/v1/inmates')
    .then(resp => resp.json())
    .then(resp => console.log(resp))
  }

  render() {
    return (
      <div className="App">
        App
      </div>
    );
  }
}


export default App;