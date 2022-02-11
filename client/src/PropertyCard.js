// import {Link} from 'react-router-dom';
function PropertyCard ({aProperty}) {
    
    return (
        <div className="Card-div">
        {/* <Link to="/rooms" replace> */}
            <img src={
                aProperty.img_url
            } className="Image" alt="Property Listing" />
        {/* </Link> */}
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