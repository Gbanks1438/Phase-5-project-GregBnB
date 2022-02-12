import { useState, useEffect } from 'react';
import {Link} from 'react-router-dom';

function RoomCard () {

    const [roomsArray, setRooms] = useState( [] )

    useEffect( 
        ()=>{        
          fetch("/rooms", {
            mode: 'cors',
            headers: {'Access-Control-Allow-Origin':'*'}
          })
          .then( r => r.json() )
          .then(
          (fetchedRoomsArray)=>{
            setRooms( [ ...fetchedRoomsArray ] )
            }
          )
        }
      , [] )

      const [filterBy, setFilterBy] = useState("All");

      function handleFilterChange(event) {
        setFilterBy(event.target.value);
      }
    
      const roomsToDisplay = roomsArray.filter((theRoom) => {
        if (filterBy === "All") {
          return true;
        } else {
          return theRoom.location === filterBy;
        }
    });
    
    const roomList = roomsToDisplay.map((aRoom) => (
        <div>
        <img src={aRoom.img_url} className="Image" alt="Room Listing" />
        <table>
            <thead>
                <tr>
                    <th>Room Number:</th>
                    <th>Floor Number:</th>
                    <th>Number Of Beds:</th>
                    <th>Bed Size:</th>
                    <th>Room Type:</th>
                    <th>Location:</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                    {aRoom.room_num}
                    </td>
                    <td>
                    {aRoom.floor_num}
                    </td>
                    <td>
                    {aRoom.num_of_beds}
                    </td>
                    <td>
                    {aRoom.bed_size}
                    </td>
                    <td>
                    {aRoom.room_type}
                    </td>
                    <td>
                    {aRoom.location}
                    </td>
                </tr>
            </tbody>
        </table>
            <hr />
            <br />
    </div>
      ))


return (
    <div className='location-div'>
        <h1>Select a location!</h1>
      <select name="filter" onChange={handleFilterChange} className='filter'>
        <option value="All">All</option>
        <option value="West Sand Lake N.Y.">West Sand Lake N.Y.</option>
        <option value="Lake Placid ADK">Lake Placid ADK</option>
        <option value="Fire Island L.I.">Fire Island L.I.</option>
      </select>
      <br />
      <br />
      <div className="list-div">  
      {roomList}
      </div>
      <br />
        <Link to="/reservations" replace>
        <button className='booking-button'>Book Today!</button>
        </Link>
    </div>
  );
}

export default RoomCard;