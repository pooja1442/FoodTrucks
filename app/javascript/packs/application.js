// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
require("imports-loader")

import 'imports-loader?define=>false,module.exports=>false!jquery-validation';

//require('imports-loader?define=>false!jquery.validate')(window, $)

//= require jquery3
//= require jquery-ui
//= require jquery_ujs
//= require_tree
//= require jquery.validate


function validateForm(){
  $("#new_user").validate({
    debug: false,
    errorClass: 'error',
     rules: {
      "user[first_name]": { required: true ,minlength: 5, maxlength: 20 } ,
      "user[last_name]": { required: true ,minlength: 5, maxlength: 20 } ,
      "user[email]": {  required: true,  email: true } , 
      "user[phone_number]" : { required: true , number: true , minlength:10 , maxlength: 10 },
      "user[password]" : {required: true , minlength: 6 , maxlength: 20 },
      "user[password_confirmation]" : { required: true, equalTo: '#user_password' },
      "user[time_zone]" : { required: true }
           },
      messages:{
        "user[first_name]" : {
          required: 'Please Enter First Name',
          minlength: 'Firstname must be atleast 5 charachters long',
          maxlength: 'Firstname should not be longer than 20 characters'
        },
        "user[last_name]" : {
          required: 'Please Enter Last Name',
          minlength: 'Lastname must be atleast 5 charachters long',
          maxlength: 'Lastname should not be longer than 20 characters'
        },
        "user[email]" : {
          required: 'Please Enter Email' , 
          email: 'Please Enter Valid Email'
        },
        "user[phone_number]" : {
          required: 'Please Enter Mobile Number',
          minlength:  'Phone number should not be less than 10 characters ' ,
          maxlength: 'Phone number should not be more than 10 characters ',
          number: 'Only numbers are allowed'
        },
        "user[password]" : {
          required: 'Please Enter Password' , 
          minlength: 'Password must be atleast 6 characters long ',
          mixlength: 'Password should not be longer than 20 charachters'
        },
        "user[password_confirmation]" : {
          required: 'Please Enter confirm password' , 
          equalTo: 'Confirm password must be same as password'
        },
        "user[time_zone]" : {
          required : "Enter Your Time zone"
        }
      }
     });  
}
function ValidateEditForm(){
  $("#edit_user").validate({
    debug: false,
    errorClass: 'error',
     rules: {
      "user[first_name]": { required: true ,minlength: 5, maxlength: 20 } ,
      "user[last_name]": { required: true ,minlength: 5, maxlength: 20 } ,
      "user[email]": {  required: true,  email: true } , 
      "user[phone_number]" : { required: true , number: true , minlength:10 , maxlength: 10 },
      "user[password]" : { minlength: 6 , maxlength: 20 },
      "user[password_confirmation]" : {  equalTo: '#user_password' },
      "user[birth_date]" : { required : true} , 
      "user[current_password]" : {required:true , minlength: 6 , maxlength: 20}
           },
      messages:{
        "user[first_name]" : {
          required: 'Please Enter First Name',
          minlength: 'Firstname must be atleast 5 charachters long',
          maxlength: 'Firstname should not be longer than 20 characters'
        },
        "user[last_name]" : {
          required: 'Please Enter Last Name',
          minlength: 'Lastname must be atleast 5 charachters long',
          maxlength: 'Lastname should not be longer than 20 characters'
        },
        "user[email]" : {
          required: 'Please Enter Email' , 
          email: 'Please Enter Valid Email'
        },
        "user[phone_number]" : {
          required: 'Please Enter Mobile Number',
          minlength:  'Phone number should not be less than 10 characters ' ,
          maxlength: 'Phone number should not be more than 10 characters ',
          number: 'Only numbers are allowed'
        },
        "user[password]" : {
          required: 'Please Enter Password' , 
          minlength: 'Password must be atleast 6 characters long ',
          mixlength: 'Password should not be longer than 20 charachters'
        },
        "user[password_confirmation]" : {
          equalTo: 'Confirm password must be same as password'
        },
        "user[birth_date]" : {
          required : "Enter Your Birthdate"
        },
        "user[time_zone]" : {
          required: "Enter Your time Zone"
        },
        "user[current_password]" : {
          required: 'Please Enter Current Password' , 
          minlength: 'Password must be atleast 6 characters long ',
          mixlength: 'Password should not be longer than 20 charachters'
        },
      }
     });
}

function validateProduct(){
  $("#new_product").validate({
    debug: false,
    errorClass: 'error',
     rules: 
     {
      "product[name]": { required: true  } ,
      "product[cost_in_dollars]": { required: true  } ,
      "product[description]": {  required: true} , 
      "product[menu_category]" : { required: true }
     },
      messages:{
        "product[name]" : {
          required: 'Please Enter Product Name'
        },
        "product[cost_in_dollars]" : {
          required: 'Please Enter cost of Product '
         },
        "product[description]" : {
          required: "Please Enter product's description"
        },
        "product[menu_category]" : {
          required: 'Please Enter description of Product'
             }
      }
  });
 }

 function validateVendor(){
  $("#new_vendor").validate({
    debug: false,
    errorClass: 'error',
     rules: 
     {
      "vendor[name]": { required: true  } ,
      "vendor[tagline]": { required: true } ,
      "vendor[default_fulfillment_time_in_minutes]": {  required: true} , 
      "vendor[category_ids_1]" : { required: true } ,
      "vendor[terms_of_service]" : { required: true}
     },
      messages:{
        "vendor[name]" : {
          required: "Please Enter Foodtruck's name"
        },
        "vendor[tagline]" : {
          required: 'Please Enter your tagline'
         },
        "vendor[default_fulfillment_time_in_minutes]" : {
          required: "Please select order fulfillment in time"
        },
        "vendor[category_ids_1]" : {
          required: 'Please choose categories'
             },
        "vendor[terms_of_service]" : {
          required: 'Please agree to terms and conditions'
        }
        
      }
  });
 }
 $(document).on('turbolinks:load', function() {  
  $('#signup,#login').click(function() {
   validateForm();  // This is not working and is not validating the form
  });

  $("#update").click(function(){
    ValidateEditForm();
  });

  $('#createProduct').click(function(){
    validateProduct();
  });

  $('#createVendor').click(function(){
    validateVendor();
  });
 
  $('#vendor_city_name').autocomplete
    source: $('#vendor_city_name').data('autocomplete-source')
 
   
});

/*

$('ul.navbar-nav li').click(function(e) {
  $('.navbar li.active').removeClass('active');
  var $this = $(this);
  if($this.hasClass('active')){
    $this.removeClass('active');
  }
  if (!$this.hasClass('active')) {
      $this.addClass('active');
  }
  e.preventDefault();
});*/


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
