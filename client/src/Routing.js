import Reservation from './Reservation.js';
import AroundTown from './AroundTown.js';
import Account from './Account.js';
import Home from './Home.js';
import { Routes, Route } from "react-router-dom";
import RoomCard from './RoomCard.js';

const Routing = ({setUser}) => {
  return (
    <div>
    <Routes>

    <Route path='/account' element={<Account setUser={setUser}/>} />
    
    <Route path='/' element={<Home />} />

    <Route path='/rooms' element={<RoomCard />} />

    <Route path='/reservations' element={<Reservation />} />

    <Route path='/around_town' element={<AroundTown />} />
    
  </Routes>
  </div>
  );
};

export default Routing;