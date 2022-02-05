import './App.css';
import logo from './logo.svg';
import logo2 from './Images/welcome-mat.png';
import LoggedIn from './LoggedIn.js';
import LoggedOut from './LoggedOut.js';
import { useEffect, useState } from 'react';

function App() {
  const [user, setUser] = useState(null);
  const [authenticated, setAuthenticated] = useState(false);

  useEffect(() => {
    fetch("/me", {
      credentials: "include",
    }).then((res) => {
      if (res.ok) {
        res.json().then((user) => {
          setUser(user);
          setAuthenticated(true);
        });
      } else {
        setAuthenticated(true);
      }
    });
  }, []);
  
  if (!authenticated) {
    return (<div>
      PLEASE SIGN IN AND REFRESH THE PAGE!
      <img src={logo} className="App-logo" alt="logo" />
      </div>)
  }

  
  return (
    <div>
        {user ? (
          <LoggedIn
            setUser={setUser}
            user={user}
          />
        ) : (
          <LoggedOut setUser={setUser} />
        )}
        <img src={logo2} className="App-logo" alt="logo2" />
    </div>
  );
}

export default App;