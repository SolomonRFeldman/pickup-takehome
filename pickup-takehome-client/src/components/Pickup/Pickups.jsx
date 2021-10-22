import React, { useState } from 'react'

export default function Pickups({pickups}) {
  return (
    pickups.map(pickup => {
      return(
        <ul>
          <li>{pickup.date}</li>
          <li>{pickup.address.street_address}</li>
          <li>{pickup.status}</li>
        </ul>
      )
    })
  )
}