class Contact
  attr_reader :id
  attr_accessor :first_name, :last_name, :email, :note
  @@contacts = []
  @@id = 1

  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id += 1 # this way the next contact will get a different id, one number higher
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, note)
    # remember, we preface the method name with 'self.' if it is a class method
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact
  end#self.create

  # This method should return all of the existing contacts
  def self.all
    @@contacts # from AM lesson code
  end#self.all

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    result = @@contacts.find { |contact| contact.id == id }
    return result
    puts "You found #{ result.first_name } #{ result.last_name }."
  end#self.find

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update
    puts "What would you like to update?"
    puts "First Name -- press 'f'"
    puts "Last Name -- press 'l'"
    puts "Email -- press 'e'"
    puts "Note -- press 'n'"
    puts "(and then press Enter)"
    choice = gets.chomp
    if choice = f
      first_name = gets.chomp
    elsif choice = l
      last_name = gets.chomp
    elsif choice = e
      email = gets.chomp
    elsif choice = n
      note = gets.chomp
    else
      puts "What?! Please choose from the letters above."
      # I need a way to re-start this method here.
    end#if
  end#update

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by
  end#self.find_by

  # This method should delete all of the contacts
  def self.delete_all
    @@contacts.clear # should be all I need here.
  end#self.delete_all

  def full_name
    "#{first_name} #{last_name}" # From AM lesson code
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete
  end

  # Feel free to add other methods here, if you need them.

end
