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
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact
  end

  def self.all
    @@contacts
  end

  # This method should accept an id as an argument and return the contact who has that id
  def self.find(id)
    @@contacts.find { |contact| contact.id == id }
  end

  def update
    case user_selected
      when 1 then
        puts "New first name:"
        self.first_name = gets.chomp
      when 2 then
        puts "New last name:"
        self.last_name = gets.chomp
      when 3 then
        puts "New Email:"
        self.email = gets.chomp
      when 4 then
        puts "New Note:"
        self.note = gets.chomp
      end#case
  end#update


  def self.find_by
    # This method should work similarly to the find method above
    # but it should allow you to search for a contact using attributes other than id
    # by specifying both the name of the attribute and the value
    # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  end#self.find_by


  def delete()
    @@contacts.delete(self)
  end

  def self.delete_all
    @@contacts.clear
  end


  def full_name
    "#{first_name} #{last_name}" # From AM lesson code
  end

  # Feel free to add other methods here, if you need them.

end#Contact
