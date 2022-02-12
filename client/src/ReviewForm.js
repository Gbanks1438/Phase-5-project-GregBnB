import { useState, useEffect } from 'react';

function ReviewForm () {

    const [reviewsArray, setReview] = useState( [] )

    useEffect( 
        ()=>{        
          fetch("/reviews", {
            mode: 'cors',
            headers: {'Access-Control-Allow-Origin':'*'}
          })
          .then( r => r.json() )
          .then(
          (fetchedReviewsArray)=>{
          setReview( [ ...fetchedReviewsArray ] )
            }
          )
        }
      , [] )

      const [formData, setFormData] = useState({
            review: "",
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
        e.preventDefault(e);
    
        const review = { ...formData };
        
        fetch("/reviews", {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify(review),
        })
          .then((r) => r.json())
          .then((review) => {
            console.log(review);
            setFormData({
                review: "",
                user_id: "",
                property_id: ""
            });
          });
      }

      return (
          <div>
              <h3>Reviews:</h3>
              {reviewsArray.map((aReview)=> {
                  console.log()
                  return (
                    <div>
                         <table>
                <thead>
                    <tr>
                        <th>Review</th>
                        <th>By:</th>
                        <th>About:</th>
                        <th>Date:</th>
                        </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            {aReview.review}
                        </td>
                        <td>
                            {aReview.user.username}
                        </td>
                        <td>
                            {aReview.property.name}
                        </td>
                        <td>
                            {aReview.created_at}
                        </td>
                        </tr>
                </tbody>
            </table>  
                    </div>
                  )
              }
              )}
              <br />
              <h3>Write A Review</h3>
            <form className="review-form" onSubmit={handleSubmit}>
            <label htmlFor="review">Your Review:</label>
            <br />
            <input
               id="review-text-input"
               type="text"
               name="review"
               value={formData.review}
               onChange={handleChange}
             />
            <br />
            <label htmlFor="user_alias">Your ID:</label>
            <input
                id="review-input"
                type="number"
                name="user_id"
                value={formData.user_id}
                onChange={handleChange}
            />
            <br />
            <label htmlFor="property_id">Location:</label>
            <input
                id="review-input"
                type="number"
                name="property_id"
                value={formData.property_id}
                onChange={handleChange}
            />
            <br /><br />
            <button type="submit" className="Button">Submit</button>
            </form>
          </div>
      )
}

export default ReviewForm;