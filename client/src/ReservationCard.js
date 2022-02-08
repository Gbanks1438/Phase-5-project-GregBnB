import { useState } from 'react'; //

function ReservationCard({ aReservation }) {

    const handleDelete = () => {
        fetch(`/reservations/${aReservation.id}`, {
            method: 'DELETE',
            headers: {
                'Content-type': 'application/json',
            },
        })
    }

    const [formData, setFormData] = useState({
        id: "",
        num_guests: "",
        start_date: "",
        end_date: "",
        user_id: "",
        property_id: ""
    });

    const handleChange = (e) => {
        setFormData({
            ...formData,
            [e.target.name]: e.target.value,
        });
    };

    function handleSubmit(e) {
        e.preventDefault();

        const reservationFormData = { ...formData };

        fetch(`/reservations/${aReservation.id}`, {
            method: "PATCH",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify(reservationFormData),
        })
            .then((r) => r.json())
            .then((reservation) => {
                setFormData({
                    id: "",
                    num_guests: "",
                    start_date: "",
                    end_date: "",
                    user_id: "",
                    property_id: ""
                });
            });
    }

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
                            {aReservation.num_guests}
                        </td>
                        <td>
                            {aReservation.start_date}
                        </td>
                        <td>
                            {aReservation.end_date}
                        </td>
                        <td>
                            {aReservation.user.username}
                        </td>
                        <td>
                            {aReservation.property.name}
                        </td>
                    </tr>
                </tbody>
            </table>
            <button
                onClick={() => {
                    return (
                            <div className="edit-rez-div">
                                <br />
                                <h2>Reservation Form</h2>
                                <form onSubmit={handleSubmit}>
                                    <label htmlFor="reservation-id">Reservation ID:</label>
                                    <input
                                        id="reservation-id-input"
                                        type="number"
                                        name="rez-id"
                                        value={formData.id}
                                        onChange={handleChange}
                                    />
                                    <br />
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
                                    <label htmlFor="property-id">Your ID:</label>
                                    <input
                                        id="property-id-input"
                                        type="number"
                                        name="property_id"
                                        value={formData.property_id}
                                        onChange={handleChange}
                                    />
                                    <button type="submit" className="Button">Submit Changes</button>
                                </form>
                            </div>
                    )
                    // console.log("Edit button pressed! ", aReservation.id)
                }}
                className="edit-button">Edit
            </button>
            <br />
            <button
                onClick={handleDelete}
                className="cancel-button">
                Cancel
            </button>
            <hr />
        </div>
    );
};

export default ReservationCard;