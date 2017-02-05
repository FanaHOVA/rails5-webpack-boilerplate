nyc = City.find_or_create_by(name: 'New York City', country: 'USA')
la = City.find_or_create_by(name: 'Los Angeles', country: 'USA')

rome = City.find_or_create_by(name: 'Rome', country: 'Italy')

london = City.find_or_create_by(name: 'London', country: 'UK')

stansted = TravelNode.create(name: 'Stansted Airport', city_id: london.id)
gatwick = TravelNode.create(name: 'Gatwick Airport', city_id: london.id)
heathrow = TravelNode.create(name: 'Heathrow Airport', city_id: london.id)
luton = TravelNode.create(name: 'Luton Airport', city_id: london.id)

fiumicino = TravelNode.create(name: 'Fiumicino Airport', city_id: rome.id)
ciampino = TravelNode.create(name: 'Ciampino Airport', city_id: rome.id)

jfk = TravelNode.create(name: 'JFK Airport', city_id: nyc.id)
laguardia = TravelNode.create(name: 'LaGuardia Airport', city_id: nyc.id)
newark = TravelNode.create(name: 'Newark Airport', city_id: nyc.id)

lax = TravelNode.create(name: 'LAX Airport', city_id: la.id)
