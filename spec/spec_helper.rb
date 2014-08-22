# Dependencies
require 'rails'
require 'money-rails'
require 'active_record'
require 'sqlite3'

puts "ActiveRecord version #{ActiveSupport::VERSION::STRING}"

# Library
require 'acts_as_priceable_on'
require 'acts_as_priceable_on/active_record/priceable'

# Setup
ActiveRecord::Base.establish_connection adapter: 'sqlite3', database: ":memory:"

ActiveRecord::Schema.define(version: 1) do
  create_table :prices do |t|
    t.decimal :amount
  end

  create_table :products do |t|
    t.string :name
  end

  create_table :services do |t|
    t.string :name
  end
end

# Spec Environment
Dir['./spec/support/**/*.rb'].sort.each { |file| require file }
