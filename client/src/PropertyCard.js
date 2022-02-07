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
                            <br />
                        <th>Address:</th>
                            <br />
                        <th>Cell reception:</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                        {
                        aProperty.name
                        }
                        </td>
                            <br />
                        <td>
                        {
                        aProperty.address
                        }
                        </td>
                            <br />
                        <td>
                        {
                        aProperty.has_cell_reception
                        }
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