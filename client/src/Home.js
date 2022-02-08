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