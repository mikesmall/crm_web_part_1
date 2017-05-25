require_relative 'contact.rb'

class CRM

  def initialize(name)
    @name = name # this is how the variable naming is normally done BTW
  end

  def what_is_the_name_of_this_CRM_again
    "Oh master, how could you forget? It was " + @name
  end
  #  I know I didn't need this, but I'm saving it for reference,
  #  as I still find some basic things about Ruby a little confusing.

  def main_menu
    while true # repeat indefinitely
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end#while
  end#main_menu

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '
  end#print_main_menu

  def call_option(user_selected)
    case user_selected
      when 1 then add_new_contact
      when 2 then modify_existing_contact
      # Finish off the rest for 3 through 6
      when 3 then delete_contact
      when 4 then display_all_contacts
      when 5 then search_by_attribute
      when 6 then exit_program
    #  To be clear, the methods add_new_contact and modify_existing_contact
    #  haven't been implemented yet
    end#case
  end#call_option

  def add_new_contact
    print 'Enter First Name: '
    first_name = gets.chomp
    print 'Enter Last Name: '
    last_name = gets.chomp
    print 'Enter Email Address: '
    email = gets.chomp
    print 'Enter a Note: '
    note = gets.chomp
    Contact.create(first_name, last_name, email, note)
  end#add_new_contact

  def modify_existing_contact(user_selected)
    # As a user, when I enter the id of the user I want to modify I am then prompted to select which attribute I want to change from the list 'first name', 'last name', 'email', or 'note'.
    # As a user, when I enter the attribute I want to change I am then prompted to enter a new value for the attribute.
    Contact.find
    Contact.update
  end

  def delete_contact
    # As a user, if I select delete I am then prompted to enter the id of the contact I want to delete
    Contact.find
    Contact.delete
  end

  def display_all_contacts
    # As a user, if I select display all I am then shown all of the contacts that exist.
    Contact.all
  end

  def search_by_attribute
    # As a user, if search by attribute is selected, I am prompted to select which attribute I want to search by.
    puts "What attribute would you like to search by?"

    # As a user, when I choose which attribute I want to search by, I am then prompted to enter the search term.
        # As a user, when I enter the search term I am then presented with the first contact who matches my search.
    Contact.find_by

    # As a user, when I enter the search term I am then presented with the first contact who matches my search.

  end

  def exit_program
    # As a user, if I select exit I am returned to the command line.
    abort('Exiting program. Bye!')
  end#exit_program

end

# Test Output

a_crm_app = CRM.new(@name)
a_crm_app.main_menu
