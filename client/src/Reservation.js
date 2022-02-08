import ReservationCard from "./ReservationCard";
import { useState, useEffect } from 'react';

function Reservation () {
    const [reservationsArray, setReservation] = useState( [] )

    useEffect( 
        ()=>{        
          fetch("/reservations", {
            mode: 'cors',
            headers: {'Access-Control-Allow-Origin':'*'}
          })
          .then( r => r.json() )
          .then(
          (fetchedReservationsArray)=>{
          setReservation( [ ...fetchedReservationsArray ] )
            }
          )
        }
      , [] )

      const [formData, setFormData] = useState({
        num_guests: "",
        start_date: "",
        end_date: "",
        user_id: "",
        property_id: ""
      });

      const handleChange = (e) => {
        console.log("handleChange?")
        setFormData({
          ...formData,
          [e.target.name]: e.target.value,
        });
      };
    
      function handleSubmit(e) {
        e.preventDefault();
    
        const reservation = { ...formData };
        
        fetch("/reservations", {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify(reservation),
        })
          .then((r) => r.json())
          .then((user) => {
            console.log(user);
            setFormData({
                num_guests: "",
                start_date: "",
                end_date: "",
                user_id: "",
                property_id: ""
            });
          });
      }

    return (
        <div className="rez-div">
            <br />
             <h2>Reservation Form</h2>
      <form onSubmit={handleSubmit}>
      <label htmlFor="guests">Number Of Guests:</label>
        <input
          id="guests-booking-input"
          type="number"
          name="num_guests"
          value={formData.num_guests}
          onChange={handleChange}
        />
        <br />
        <label htmlFor="start_date">From:</label>
        <input
          id="start_date-booking-input"
          type="datetime-local"
          name="start_date"
          value={formData.start_date}
          onChange={handleChange}
        />
        <br />
        <label htmlFor="end_date">Until:</label>
        <input
          id="end_date-booking-input"
          type="datetime-local"
          name="end_date"
          value={formData.end_date}
          onChange={handleChange}
        />
        <br />
        <label htmlFor="user_alias">Your ID:</label>
        <input
          id="user_alias-booking-input"
          type="number"
          name="user_id"
          value={formData.user_id}
          onChange={handleChange}
        />
        <br />
        <label htmlFor="property_id">Location:</label>
        <select id="property-booking-input" name="property_id" onChange={handleChange}>
          <option value={formData.property_id = 1}>Lake House - Big Bowman Pond, NY</option>
          <option value={formData.property_id = 2}>Adirondack Mountain Lodge - Lake Placid, NY</option>
          <option value={formData.property_id = 3}>Fire Island Beach House - Ocean Beach LI, NY</option>
        </select>
        <br />
        <br />
        <button type="submit" className="Button">Book Now!</button>
      </form>
      <br />
            <h1>Current Reservations</h1>
            {reservationsArray.map((aReservation)=>{
                return (
                    <div>
                        <ReservationCard 
                         key={aReservation.id} // For React
                         aReservation={aReservation} // For Us
                        />
                    </div>
                )
            })}
                <br />
        </div>
    );
  };

  export default Reservation;