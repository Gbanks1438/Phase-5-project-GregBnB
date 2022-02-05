import React, { useState } from "react";
import { Link } from "react-router-dom";

const Login = ({setUser}) => {
  console.log("What is this?" , setUser) 

  const [formData, setFormData] = useState({
    username: "",
    password: "",
  });

  const handleChange = (e) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value,
    });
  };
  
  function handleSubmit(e) {
    e.preventDefault();

    const userCreds = { ...formData };

    fetch("/login", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(userCreds),
    })
      .then((r) => r.json())
      .then((user) => {
        console.log(user);
        setUser(user)
        setFormData({
          username: "",
          password: "",
        });
      });
  }

  return (
    <>
      <h1>Please Log In</h1>
      <form className="form-div" onSubmit={handleSubmit}>
        <label htmlFor="username">Username: </label>
        <input
          id="username-input"
          type="text"
          name="username"
          value={formData.username}
          onChange={handleChange}
        />
        <br />
        <label htmlFor="password">Password: </label>
        <input
          id="password-input"
          type="password"
          name="password"
          value={formData.password}
          onChange={handleChange}
        />
        <br />
        <button type="submit" className="Button">Submit</button>
      </form>
      <br />
      <br />
        <div className="form-div">
      <Link className="a-div" to="/signup" replace>
        Or, sign up first!
      </Link>
      </div>
    </>
  );
};

export default Login;