# Outline

Server:

  2 endpoints: 
  
    POST /pickups
    GET /pickups/{:pickup_id}

Database:

  Tables:
 
    pickup: date: {date type}, location_id: {int type}, status: {enum type ["pending", "complete", "failed"]}
    address: street_address: {string type}, street_address_line_two: {string type, default: ""} city: {string type}, state: {string type}, zip: {string type}
  (Unless default, all fields require not NULL)

Client: Simple frontend with react, react routes, bootstrap and minimal styling.

  Paths:
  
    root_path: form for creating a pickup -> POST requests server with pickup params -> redirects to '/pickups/{pickup_id}'
    '/pickups/{pickup_id}': GET request to /pickups/{:pickup_id} on server

Notes: 
  Forgoing Users and signin for time contraints and to strictly adheer to the user story. It should be very easy to impliment on top of this app later.

## Iterative Steps
- [x] Initialize rails app with postgres DB and api flags
- [x] Create address table
- [ ] Create activerecord address model
- [ ] Create pickup table
- [ ] Create activerecord pickup model
- [ ] Initialize react client
- [ ] Create create endpoint in the pickups_controller and routes
- [ ] Create on client a POST request form to '/pickups'
- [ ] Create show endpoint in the pickups_controller and routes
- [ ] Create on client a show page for a pickup at '/pickups/{pickup_id}' with the respective GET request
- [ ] Make POST form redirect to '/pickups/{pickup_id}'
(All steps for models and controllers imply tests be written before implimenting features)