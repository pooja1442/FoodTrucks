Category.create!([{
  name: "BBQ" , 
  is_active: true
},
{
  name: "American" , 
  is_active: true
},
{
  name: "Breakfast" , 
  is_active: true
},
{
  name: "Chinese" , 
  is_active: true
},
{
  name: "Asian" , 
  is_active: true
},
{
  name: "Coffee and Tea" , 
  is_active: true
},
{
  name: "Ethiopian" , 
  is_active: true
},
{
  name: "French" , 
  is_active: true
},
{
  name: "Greek" , 
  is_active: true
},
{
  name: "Indian" , 
  is_active: true
},
{
  name: "Halal" , 
  is_active: true
},
{
  name: "Hamburgers" , 
  is_active: true
},
{
  name: "Jamaican" , 
  is_active: true
},
{
  name: "Italian" , 
  is_active: true
},
{
  name: "Lobster Rolls" , 
  is_active: true
},
{
  name: "Mediterranean" , 
  is_active: true
},
{
  name: "Maxican" , 
  is_active: true
},
{
  name: "Middle Eastern" , 
  is_active: true
},
{
  name: "Pizza" , 
  is_active: true
},
{
  name: "Poke" , 
  is_active: true
},
{
  name: "Sushi" , 
  is_active: true
},
{
  name: "Seafood" , 
  is_active: true
},
{
  name: "Thai" , 
  is_active: true
},
{
  name: "Sweets" , 
  is_active: true
},
{
  name: "Vegetarian" , 
  is_active: true
},
{
  name: "Vegan" , 
  is_active: true
},
{
  name: "South Indian" , 
  is_active: true
},
{
  name: "Smoothies and juices" , 
  is_active: true
},
])


City.create!([
  {
  name: "Ahmedabad" , 
  state_name: "Gujarat",
  country_name: "India"
},
{
  name: "Surat" , 
  state_name: "Gujarat",
  country_name: "India"
},
{
  name: "Rajkot" , 
  state_name: "Gujarat",
  country_name: "India"
},
{
  name: "Baroda" , 
  state_name: "Gujarat",
  country_name: "India"
},
{
  name: "Gandhinagar" , 
  state_name: "Gujarat",
  country_name: "India"
},
])
p "Created #{Category.count} Category"
p "Created #{City.count} City"