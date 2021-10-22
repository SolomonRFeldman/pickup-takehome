import React, { useState } from 'react'
import { Form, Modal, Button } from 'react-bootstrap'
import { postRequest } from '../../apiRequests'

export default function CreatePickupForm({ show, handleClose }) {
  const handleSubmit = event => {
    event.preventDefault()
  }

  return(
    <Modal show={show} onHide={handleClose}>
      <Modal.Header closeButton>
        <Modal.Title>Create Pickup</Modal.Title>
      </Modal.Header>
      <Form onSubmit={handleSubmit}>
        <Modal.Body>
        </Modal.Body>
        <Modal.Footer>
          <Button aria-label='Create Pickup' type='submit'>Create Pickup</Button>
        </Modal.Footer>
      </Form>
    </Modal>
  )
}