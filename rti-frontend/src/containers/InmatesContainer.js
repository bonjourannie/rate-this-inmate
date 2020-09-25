import React, {Component} from 'react';
import InmateList from '../components/InmateList'
import InmateInput from '../components/InmateInput'
// import InmateShow from '../components/InmateShow'
import {connect} from 'react-redux';
import {Route, Switch} from 'react-router-dom'
import {fetchInmates} from '../actions/fetchInmates'
//import NavBar from '../components/NavBar' 

//containers render other components, passes them data,
//class components because they deal with state

class InmatesContainer extends Component {

    componentDidMount(){
        this.props.fetchInmates()
    }
    //give access to store through props
    //when this container mounts, we have to make a request to backend
    //react & redux don't hold state if you refresh 

    render (){
        return (
            <div>
                {/* <NavBar />  */}
                InmatesContainer
                <InmateList inmates={this.props.inmates}/>
                <InmateInput/>
                <Switch>
                    will be routes/links to InmatesList and Inmate
                </Switch>
            </div>
        )
    }

}

const mapStateToProps = state => {
    return {
        inmates: state.inmates 
    }
}

export default connect(mapStateToProps, {fetchInmates})(InmatesContainer)
