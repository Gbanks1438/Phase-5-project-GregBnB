import { useState } from 'react';

function PropertyCard ({aProperty}) {

    const [like, setLike] = useState(false)

    return (
        <div className="Card-div">
            <img src={
                aProperty.img_url
            } className="Image" alt="Property Listing" />
            <h2 onClick={() => setLike((prevState) => !prevState)}>
            Enjoy Your Stay? {like ? "💖" : "♡"}
            </h2>
            <br />
            <table>
                <thead>
                    <tr>
                        <th>Name:</th>
                        <th>Address:</th>
                        <th>Cell reception:</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                        {aProperty.name}
                        </td>
                        <td>
                        {aProperty.address}
                        </td>
                        <td>
                        {aProperty.has_cell_reception}
                        </td>
                    </tr>
                </tbody>
            </table>
                <hr />
                <br />
                <br />
        </div>
        );
      };
      
export default PropertyCard;