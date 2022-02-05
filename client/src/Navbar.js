import { NavLink } from "react-router-dom";

function Navbar({setUser}) {

    const handleLogout = () => {
        fetch("/logout", {
          method: 'DELETE'
        })
        console.log('logged out')
        setUser(null)
      }

 return (
        <div className="Navbar">
        <header>
        <nav>
            <ul>
                <li className='nav-links'>
                    <NavLink to='/account'>Account</NavLink>
                </li>
                <li className='nav-links'>
                    <NavLink to='/'>Home</NavLink>
                </li>
                   <li className='nav-links'>
                    <NavLink to='/reservations'>Reservations</NavLink>
                </li>
                <li className='nav-links'>
                <br/> <br/>
                    <NavLink to='/around_town'>Around Town</NavLink>
                </li>
                <button className="Logout-button" onClick={handleLogout}>Logout</button>
            </ul>
        </nav>
        <br/><br/><br/> <br/><br/><br/><br/>
        </header>
        </div>
        );
    }

export default Navbar;