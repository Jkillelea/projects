# people
bob = {
    firstName: "Bob"
    lastName: "Jones"
    phoneNumber: "(650) 777-777"
    email: "bob.jones@example.com"
}

mary = {
    firstName: "Mary"
    lastName: "Johnson"
    phoneNumber: "(650) 888-8888"
    email: "mary.johnson@example.com"
}

contacts = [bob, mary]

printPerson = (person) ->
  console.log person.firstName + " " + person.lastName
  return # stops implicit return of the previous line


list = () ->
  contactsLength = contacts.length
  for p in contacts
    printPerson(p)
  return # stops implicit return of the previous line


search = (lastName) ->
  for person in contacts
    if person.lastName is lastName
      printPerson(person)
  return


add = (firstName, lastName, phoneNumber, email) ->
  contacts[contacts.length] =
    firstName: firstName
    lastName: lastName
    phoneNumber: phoneNumber
    email: email
  return


add("Barak", "Obama", "111-111-1111", "president@whitehouse.gov")

list()
