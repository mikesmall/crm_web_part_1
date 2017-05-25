class Contact
  attr_reader :id
  attr_accessor :first_name, :last_name, :email, :note
  @@contacts = []
  @@id = 1

  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id += 1
  end

  def self.create(first_name, last_name, email, note)
    # remember, we preface the method name with 'self.' if it is a class method
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact
  end#self.create

  def self.all
    puts "Here are all of your contacts:"
    puts " #{ @@contacts } "
  end#self.all

  # This method should accept an id as an argument and return the contact who has that id
  def self.find(id)
    puts "Enter a contact id: "
    id = gets.to_i
    puts "You chose id number #{ id }."
    result = @@contacts.find { |contact| contact.id == id }
    return result
    puts "You found #{ result.first_name } #{ result.last_name }."
  end#self.find

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update
    puts "Which of #{ result.first_name }'s attributes would you like to change?"
    puts '[1] First Name'
    puts '[2] Last Name'
    puts '[3] Email'
    puts '[4] Note'
    case user_selected
      when 1 then
        puts "New first name:"
        first_name = gets.chomp
      when 2 then
        puts "New last name:"
        last_name = gets.chomp
      when 3 then
        puts "New Email:"
        email = gets.chomp
      when 4 then
        puts "New Note:"
        note = gets.chomp
    end#case
  end#update

  def self.find_by
    # This method should work similarly to the find method above
    # but it should allow you to search for a contact using attributes other than id
    # by specifying both the name of the attribute and the value
    # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  end#self.find_by

  # This method should delete all of the contacts
  def self.delete_all
    @@contacts.clear # should be all I need here.
  end#self.delete_all

  def full_name
    "#{first_name} #{last_name}" # From AM lesson code
  end

  def delete
    # # This method should delete the contact
    # HINT: Check the Array class docs for built-in methods that might be useful here

    # deletes instance from @@contacts
  end

  # Feel free to add other methods here, if you need them.

end
