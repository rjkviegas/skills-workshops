# A solution

```
POST       /spaces               spaces#create
GET        /spaces/:id           spaces#show
PUT/PATCH  /spaces/:id           spaces#update
DELETE     /spaces/:id           spaces#destroy
GET        /spaces               spaces#index
GET        /spaces/new           spaces#new
GET        /spaces/:id/edit      spaces#edit
GET        /spaces/:id/bookings  bookings#index

POST       /bookings             bookings#create
GET        /bookings/:id         bookings#show
PUT/PATCH  /bookings/:id         bookings#update
DELETE     /bookings/:id         bookings#destroy
GET        /bookings             bookings#index
GET        /bookings/new         bookings#new
GET        /bookings/:id/edit    bookings#edit
```
