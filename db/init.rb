DB = Sequel.connect('sqlite://db/discussion.db')

require File.dirname(__FILE__) + '/models'

# Set up the tables for each of the models if not already present
[Paper, Author, Authorship, Comment, Block].each do |t| 
  t.create_table unless t.table_exists?
end