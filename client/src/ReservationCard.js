function ReservationCard ({aReservation}) {
    
    return (
        <div className="rez-card-div">
            <table>
                <thead>
                    <tr>
                        <th>Number Of Guests:</th>
                        <th>From:</th>
                        <th>Until:</th>
                        <th>Booked By:</th>
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
                        <td>
                        {
                        aReservation.start_date
                        }
                        </td>
                        <td>
                        {
                        aReservation.end_date
                        }
                        </td>
                        <td>
                        {
                        aReservation.user_id
                        }
                        </td>
                        <td>
                        {
                        aReservation.property_id
                        }
                        </td>
                    </tr>
                </tbody>
            </table>
                            <button onClick={console.log("Edit button pressed!")} className="edit-button">Edit</button>
                        <br />
                        <br />
                            <button onClick={console.log("Cancel button pressed!")} className="cancel-button">Cancel</button>
                        <hr />
        </div>
        );
      };
      
export default ReservationCard;