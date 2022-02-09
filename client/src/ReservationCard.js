import { useState } from 'react';

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

    function handleEditToggle() {
    
        const editForm = document.getElementById("edit-rez-div");
    
        const displaySetting = editForm.style.display;
   
        if (displaySetting === 'none') {
          editForm.style.display = 'block';
        }
        else {
          editForm.style.display = 'none';
        }
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
            {/* <button
                onClick={handleEditToggle} id="rez-edit-button" className="edit-button">Edit
            </button> */}
            <button
                onClick={handleDelete}
                className="cancel-button">
                Cancel
            </button>
             <br />
            <div className="edit-rez-div">
                <br />
                <h2>Edit Reservation Form</h2>
                <form onSubmit={handleSubmit} className="edit-rez-form">
                    {/* <label htmlFor="reservation-id">Reservation ID:</label>
                    <input
                        id="reservation-id-input"
                        type="number"
                        name="id"
                        value={formData.id}
                        onChange={handleChange}
                    />
                    <br /> */}
                    <label htmlFor="guests">Number Of Guests:</label>
                    <input
          id="guests-booking-input"
          type="number"
          name="num_guests"
          value={formData.num_guests}
          onChange={handleChange}
        />
      {/* <select id="property-booking-input" name="property_id" onChange={handleChange}>
          <option value={formData.num_guests = 1}>1</option>
          <option value={formData.num_guests = 2}>2</option>
          <option value={formData.num_guests = 3}>3</option>
          <option value={formData.num_guests = 4}>4</option>
          <option value={formData.num_guests = 5}>5</option>
          <option value={formData.num_guests = 6}>6</option>
          <option value={formData.num_guests = 7}>7</option>
          <option value={formData.num_guests = 8}>8</option>
          <option value={formData.num_guests = 9}>9</option>
          <option value={formData.num_guests = 10}>10</option>
          <option value={formData.num_guests = 11}>11</option>
          <option value={formData.num_guests = 12}>12</option>
        </select> */}
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
                    <input
          id="property-booking-input"
          type="number"
          name="property_id"
          value={formData.property_id}
          onChange={handleChange}
        />
        {/* <select id="property-booking-input" name="property_id" onChange={handleChange}>
          <option value={formData.property_id = 1}>Lake House - Big Bowman Pond, NY</option>
          <option value={formData.property_id = 2}>Adirondack Mountain Lodge - Lake Placid, NY</option>
          <option value={formData.property_id = 3}>Fire Island Beach House - Ocean Beach LI, NY</option>
        </select> */}
                    <br />
                    <br />
                    <button type="submit" className="Button">Submit Changes</button>
                </form>
                <br />
            </div>
        </div>
    );
};

export default ReservationCard;


  // onClick={() => {console.log("Edit button pressed! ", aReservation.id)}} id="rez-edit-button" className="edit-button">Edit