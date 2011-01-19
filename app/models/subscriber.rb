class Subscriber < ActiveRecord::Base
 validates_uniqueness_of :email, :message => "already exists on our list"
 validates_format_of :email, :with => /^[a-z0-9_.-]+@[a-z0-9.-]+\.[a-z]+$/i
end