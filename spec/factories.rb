Factory.sequence(:number) { |n| n }

##################################################

Factory.define :screencast do |s|
  s.number 1
  s.title { "Screencast#{Factory.next(:number)}" }
  s.url "http://www.example.com/screencast.mov"
end

Factory.define :interested_user do |s|
  s.email { "user#{Factory.next(:number)}@example.com" }
end