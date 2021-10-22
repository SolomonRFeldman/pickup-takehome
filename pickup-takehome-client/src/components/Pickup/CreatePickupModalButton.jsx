import React from 'react'
import ModalButton from '../Modal/ModalButton'
import CreatePickupForm from './CreatePickupForm'

export default function CreatePickupModalButton(props) {
  const modal = (props) => <CreatePickupForm {...props} />

  return(
    <ModalButton aria-label='Create Pickup' modal={modal} {...props}>Create Pickup</ModalButton>
  )
}