# README

# easybroker-test

## Install

### Clone the repository

```shell
git clone git@github.com:AlvaroJTorres/EasyBroker-Test.git
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.7.2`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.7.2
```

### Install dependencies

```shell
bundle install
```

### Configuration

You may want to initiate your server and create a database if neccesary

```shell
rails db:create
```

## Server

```shell
rails s
Visit http://localhost:3000/
```

## Test suite

This proyect counts with 2 tests, to run then use the following command:

```shell
rails test
```

## Endpoints

Method get /properties?page=:int

```shell
http://localhost:3000/properties?page=2
```

![List of Properties](storage/images/Screenshot_2022-01-05_20-44-01.png)

Method get /properties/:property_id

```shell
http://localhost:3000/properties/EB-B5486
```

![Show of a Property](storage/images/Screenshot_2022-01-05_20-48-45.png)

Method post /properties/:property_id/create_contact

```shell
http://localhost:3000/properties/EB-B5486/create_contact
```

![Contact created](storage/images/Screenshot_2022-01-05_20-49-25.png)

## General Instructions

1. Start the application by going to localhost:3000

```shell
http://localhost:3000
```

2. Then you will see a page with 15 listed properties and a pagination bar at the bottom.

![Pagination](storage/images/Screenshot_2022-01-05_21-02-18.png)

3. Click in any number to traverse to that page and see other properties.

4. You can click in any of the listed properties to traverse to the individual view of each property.

5. Inside that view you will see the relevant information of the property, a slideshow containing pictures in case the property has it, and a form to create a new contact.

6. You can click each arrow to change the image presented in the slideshow, in the top left part you can see the number of pictures that slideshow has; in case the property has no pictures a default picture will be see instead.

7. You can complete the form in the right part of the page to create a new contact, once the form is filled click on save and the page will reload, if the contact was succesfully created you will sea a message saying "Contact created, status: succesfull"

8. Also if you want to return to the start, click on the title located in the header of the page.

## Notes

What was the hardest thing you had to solve while building the website?
While doing the controller for creating the new contact it was neccesary to send the headers and the body to the endpoint /contact_requests by using httparty, but apparently the data was not being uploaded properly, by printing in the console I realized that the body was not being sent as a json, so it was neccesary to convert it first, once that was done the controller worked perfectly by sending the request to the API endpoint and returning a status of successful.

Are there any areas of your code that you think isn't that "clean"?
I believe the area that displays the form for creating a contact could be displayed in a better manner, also its elements could be divided more clearly and a proper validation format could be added to secure the data sent by the clients was according to the requisits of the API.
