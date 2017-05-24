require_relative 'contact.rb' # I added this. Too early to know for sure if it belongs here.

class CRM

  def initialize
  end

  def main_menu
    # As a user, upon starting the CRM, I am presented with a prompt to add, modify, delete, display all, search by attribute, and exit.
  end
  def print_main_menu
  end

  def call_option
  end

  def add_new_contact
  end

  def modify_existing_contact
    # As a user, when I enter the id of the user I want to modify I am then prompted to select which attribute I want to change from the list 'first name', 'last name', 'email', or 'note'.
    # As a user, when I enter the attribute I want to change I am then prompted to enter a new value for the attribute.
  end

  def delete_contact
    # As a user, if I select delete I am then prompted to enter the id of the contact I want to delete.
  end

  def display_all_contacts
    # As a user, if I select display all I am then shown all of the contacts that exist.
  end

  def search_by_attribute
    # As a user, if search by attribute is selected, I am prompted to select which attribute I want to search by.
    # As a user, when I choose which attribute I want to search by, I am then prompted to enter the search term.
    # As a user, when I enter the search term I am then presented with the first contact who matches my search.
  end

  def exit
    # As a user, if I select exit I am returned to the command line.
  end


end
