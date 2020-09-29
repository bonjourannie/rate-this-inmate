//functional component because it lists inmates (basically a function) 
//responsible for rendering a list of inmates 
//going to get them from InmatesContainer as props
//class components, you can call this.props
//functional component, they get passed in as argument 


import React, {Component} from 'react'

const InmateList = ({inmates}) => {

    console.log({inmates})

    return(
        <div>
            {inmates.map(inmate => 
            <ul key = {inmate.id}>
                Name: {inmate.name} <br/>
                Charges: {inmate.charges}<br/>
                mugshot <br/>
                <img src ={inmate.mugshot} alt = "mugshot"/> <br/>
                Booked on {inmate.book_date_formatted}
            </ul>)}
        </div>
    )
 
    

}

export default InmateList;