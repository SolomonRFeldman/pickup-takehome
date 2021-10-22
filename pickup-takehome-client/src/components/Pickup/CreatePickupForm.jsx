import React, { useState } from 'react'
import { Form, Modal, Button } from 'react-bootstrap'
import { postRequest } from '../../apiRequests'

export default function CreatePickupForm({ show, handleClose, pickups, setPickups }) {
  const [formData, setFormData] = useState({ 
    address: { street_address: '', street_address_line2: '', city: '', state: '', zip: '' },
    date: '',
    status: 'pending'
  })
  const handleChange = event => setFormData({ ...formData, [event.target.id]: event.target.value })
  const handleAddressChange = event => setFormData({ ...formData, address: { ...formData['address'], [event.target.id]: event.target.value }})

  const handleSubmit = event => {
    event.preventDefault()

    return postRequest('/pickups', { pickup: formData }).then(resp => {
      setPickups([...pickups, resp])
      handleClose()
    })
  }

  return(
    <Modal show={show} onHide={handleClose}>
      <Modal.Header closeButton>
        <Modal.Title>Create Pickup</Modal.Title>
      </Modal.Header>
      <Form onSubmit={handleSubmit}>
        <Modal.Body>
          <Form.Group controlId='date'>
            <Form.Label>Date</Form.Label>
            <Form.Control type='date' onChange={handleChange} value={formData.date} />
          </Form.Group>
          <Form.Group controlId='street_address'>
            <Form.Label>Street Address</Form.Label>
            <Form.Control placeholder='Street Address' type='text' onChange={handleAddressChange} value={formData.email} />
          </Form.Group>
          <Form.Group controlId='street_address_line2'>
            <Form.Label>Street Address Line 2</Form.Label>
            <Form.Control placeholder='Street Address Line 2' type='text' onChange={handleAddressChange} value={formData.email} />
          </Form.Group>
          <Form.Group controlId='city'>
            <Form.Label>City</Form.Label>
            <Form.Control placeholder='City' type='text' onChange={handleAddressChange} value={formData.email} />
          </Form.Group>
          <Form.Group controlId='state'>
            <Form.Label>State</Form.Label>
            <Form.Control placeholder='State' type='text' onChange={handleAddressChange} value={formData.email} />
          </Form.Group>
          <Form.Group controlId='zip'>
            <Form.Label>Zip</Form.Label>
            <Form.Control placeholder='Zip' type='text' onChange={handleAddressChange} value={formData.email} />
          </Form.Group>
        </Modal.Body>
        <Modal.Footer>
          <Button aria-label='Create Pickup' type='submit'>Create Pickup</Button>
        </Modal.Footer>
      </Form>
    </Modal>
  )
}