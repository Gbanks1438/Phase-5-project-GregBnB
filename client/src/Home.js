import {Link} from 'react-router-dom';
import PropertyCard from "./PropertyCard";
import { useState, useEffect } from 'react';

function Home () {

    const [propertiesArray, setProperties] = useState( [] )

    useEffect( 
        ()=>{        
          fetch("/properties", {
            mode: 'cors',
            headers: {'Access-Control-Allow-Origin':'*'}
          })
          .then( r => r.json() )
          .then(
          (fetchedPropertiesArray)=>{
          setProperties( [ ...fetchedPropertiesArray ] )
            }
          )
        }
      , [] )

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
        <div className="home-div">
            <h1>Properties</h1>
            {propertiesArray.map((aProperty)=>{
                return (
                    <div>
                        <PropertyCard 
                         key={aProperty.id} // For React
                         aProperty={aProperty} // For Us
                        />
                    </div>
                )
            })}
        <Link to="/rooms" replace>
        <button className='room-button'>View Our Rooms</button>
        </Link>
        <br /> 
        </div>
    )
  };
  
  export default Home;