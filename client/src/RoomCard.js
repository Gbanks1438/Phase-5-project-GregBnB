import { useState, useEffect } from 'react';

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

    return (
        <div className="Card-div">

        {roomsArray.map((aRoom)=>{

        return (
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
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                        {
                        aRoom.room_num
                        }
                        </td>
                        <td>
                        {
                        aRoom.floor_num
                        }
                        </td>
                        <td>
                        {
                        aRoom.num_of_beds
                        }
                        </td>
                        <td>
                        {
                        aRoom.bed_size
                        }
                        </td>
                        <td>
                        {
                        aRoom.room_type
                        }
                        </td>
                    </tr>
                </tbody>
            </table>
                <hr />
        </div>
        );
        
      })}
        </div>
                )
}

export default RoomCard;