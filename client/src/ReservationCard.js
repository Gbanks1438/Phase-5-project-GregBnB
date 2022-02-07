function ReservationCard ({aReservation}) {
    
    return (
        <div className="rez-card-div">
            <table>
                <thead>
                    <tr>
                        <th>Number Of Guests:</th>
                        <br />
                        <th>From:</th>
                        <br />
                        <th>Until:</th>
                        <br />
                        <th>Booked By:</th>
                        <br />
                        <th>Location:</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                        {
                        aReservation.num_guests
                        }
                        </td>
                        <br />
                        <td>
                        {
                        aReservation.start_date
                        }
                        </td>
                        <br />
                        <td>
                        {
                        aReservation.end_date
                        }
                        </td>
                        <br />
                        <td>
                        {
                        aReservation.user_id
                        }
                        </td>
                        <br />
                        <td>
                        {
                        aReservation.property_id
                        }
                        </td>
                    </tr>
                </tbody>
            </table>
            <br />
            <button onClick={console.log("Edit button pressed!")} className="edit-button">Edit</button>
            <br />
            <button onClick={console.log("Cancel button pressed!")} className="cancel-button">Cancel</button>
            <hr />
            <br />
            <br />
        </div>
        );
      };
      
export default ReservationCard;