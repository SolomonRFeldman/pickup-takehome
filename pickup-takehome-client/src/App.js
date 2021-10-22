import logo from './logo.svg';
import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css'
import CreatePickupModalButton from './components/Pickup/CreatePickupModalButton';
import React, { useState } from 'react';
import Pickups from './components/Pickup/Pickups';

function App() {
  const [pickups, setPickups] = useState([])

  return (
    <div className="App">
      <CreatePickupModalButton pickups={pickups} setPickups={setPickups} />
      <Pickups pickups={pickups} />
    </div>
  );
}

export default App;
