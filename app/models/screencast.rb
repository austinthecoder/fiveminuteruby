class Screencast < ActiveRecord::Base
  
  validates_presence_of %w(number url title)
  
  def to_param
    [id, title.downcase.gsub(/\s+/, '-').gsub(/[^\w-]/, '')].join('-')
  end
  
end