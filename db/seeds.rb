amusement_park = AmusementPark.create(name:"Ryan's Adventures", admission_price: 60)

mechanic1 = Mechanic.create(name:"Ralph", years_of_experience: 21)
mechanic2 = Mechanic.create(name:"Rhonda", years_of_experience: 12)
mechanic3 = Mechanic.create(name:"Sally", years_of_experience: 3)
mechanic3 = Mechanic.create(name:"Roger", years_of_experience: 7)

ride1 = amusement_park.rides.create(name:"Lightning Racer", thrill_rating: 9)
ride2 = amusement_park.rides.create(name:"Storm Runner", thrill_rating: 7)
ride3 = amusement_park.rides.create(name:"The Greate Bear", thrill_rating: 5)

RideMechanic.create(ride:ride1, mechanic:mechanic1)
RideMechanic.create(ride:ride1, mechanic:mechanic2)
RideMechanic.create(ride:ride2, mechanic:mechanic2)
RideMechanic.create(ride:ride2, mechanic:mechanic3)
RideMechanic.create(ride:ride3, mechanic:mechanic3)
RideMechanic.create(ride:ride3, mechanic:mechanic4)
