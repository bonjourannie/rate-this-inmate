//action creator is a function
//returns or dispatches an action (action object) to reducer based on action sent

//update redux store with dispatch & dispatch action to reducer 
//which is responsible for updating state based on action that comes in



export function fetchInmates(){
    return (dispatch) => {
        fetch ("https://jailbase-jailbase.p.rapidapi.com/recent/?source_id=fl-mdc", {
            "method": "GET",
            "headers": {
                "x-rapidapi-host": "jailbase-jailbase.p.rapidapi.com",
                "x-rapidapi-key": "5a8b2d2c90mshbe395b4a25ced29p180267jsn00f7c327bfbe"
            }
        })
        .then(resp => resp.json())
        .then(inmates => dispatch({
            type: 'FETCH_INMATES',
            payload: inmates
        }) )
    }
}

