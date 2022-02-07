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
                            <br />
                        <th>Floor Number:</th>
                            <br />
                        <th>Number Of Beds:</th>
                            <br />
                        <th>Bed Size:</th>
                            <br />
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
                            <br />
                        <td>
                        {
                        aRoom.floor_num
                        }
                        </td>
                            <br />
                        <td>
                        {
                        aRoom.num_of_beds
                        }
                        </td>
                            <br />
                        <td>
                        {
                        aRoom.bed_size
                        }
                        </td>
                            <br />
                        <td>
                        {
                        aRoom.room_type
                        }
                        </td>
                    </tr>
                </tbody>
            </table>
                <hr />
                <br />
                <br />
        </div>
        );
        
      })}
        </div>
                )
}

export default RoomCard;