import Reservation from './Reservation.js';
import AroundTown from './AroundTown.js';
import Account from './Account.js';
import Home from './Home.js';
import { Routes, Route } from "react-router-dom";
import RoomCard from './RoomCard.js';
import ReviewForm from './ReviewForm.js';

const Routing = ({setUser}) => {
  return (
    <div>
    <Routes>

    <Route path='/account' element={<Account setUser={setUser}/>} />
    
    <Route path='/' element={<Home />} />

    <Route path='/rooms' element={<RoomCard />} />

    <Route path='/reservations' element={<Reservation setUser={setUser}/>} />

    <Route path='/around_town' element={<AroundTown />} />

    <Route path='/reviews' element={<ReviewForm setUser={setUser}/>} />
    
  </Routes>
  </div>
  );
};

export default Routing;