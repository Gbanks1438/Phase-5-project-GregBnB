import { useState, useEffect } from 'react';

function AroundTown () {
  
    const [activitiesArray, setActivities] = useState( [] )

    useEffect( 
        ()=>{        
          fetch("/activities", {
            mode: 'cors',
            headers: {'Access-Control-Allow-Origin':'*'}
          })
          .then( r => r.json() )
          .then(
          (fetchedActivities)=>{
          setActivities( [ ...fetchedActivities ] )
            }
          )
        }
      , [] )

      const [filterBy, setFilterBy] = useState("All");

      function handleFilterChange(event) {
        setFilterBy(event.target.value);
      }
    
      const activitiesToDisplay = activitiesArray.filter((theActivity) => {
        if (filterBy === "All") {
          return true;
        } else {
          return theActivity.location === filterBy;
        }
      });

      const activityList = activitiesToDisplay.map((activity) => (
        <div>
        <table>
        <thead>
            <tr>
                <th key={activity.id}>Name:</th>
                    <br />
                <th key={activity.id}>Category:</th>
                    <br />
                <th key={activity.id}>Location:</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                {activity.name}
                </td>
                <br />
                <td>
                {activity.category}
                </td>
                <br />
                <td>
                {activity.location}
                </td>
            </tr>
        </tbody>
        </table>
        <a key={activity.id} href={activity.url}>Website</a>
        <hr />
        </div>
      ));
    
      return (
        <div>
            <h1>What's Around?</h1>
          <select name="filter" onChange={handleFilterChange} className='filter'>
            <option value="All">All</option>
            <option value="West Sand Lake N.Y.">West Sand Lake N.Y.</option>
            <option value="Lake Placid ADK">Lake Placid ADK</option>
            <option value="Fire Island L.I.">Fire Island L.I.</option>
          </select>
          <br />
          <br />
          <div className="list-div">  
          {activityList}
          </div>
        </div>
      );

    // return (
    //     <div className="activity-div-background">
    //         <br />
    //         <h1>What's Around?</h1>
    //         <div className="activity-div">
    //         {activitiesArray.map((anActivity)=>{

    //             return (
    //                 <div className="list-div">
    //                     <ul>
    //                         <li>
    //                             Name: {anActivity.name}
    //                         </li>
    //                         <li>
    //                             Category: {anActivity.category}
    //                         </li>
    //                         <li>
    //                             Location: {anActivity.location} 
    //                         </li>
    //                         <li>
    //                             <a href={anActivity.url}>Website</a>
    //                         </li>
    //                     </ul>
    //                 </div>
    //             )
    //         })}
    //     </div>
    //     </div>
    // );

  };
  
  export default AroundTown;