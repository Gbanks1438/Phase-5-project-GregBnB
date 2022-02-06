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
          (fetchedpropertiesArray)=>{
          setProperties( [ ...fetchedpropertiesArray ] )
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
        </div>
    );
  };
  
  export default Home;