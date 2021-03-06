User.create!(first_name:"Joseph",
             last_name:"Johnson",
             username:"joejohn",
             email:"joe@john.com",
             password:"P@ssword1",
             password_confirmation:"P@ssword1")

User.create!(first_name:"Mary",
            last_name:"Johnson",
            username:"maryjohn",
            email:"mary@john.com",
            password:"P@ssword1",
            password_confirmation:"P@ssword1")

Location.create!(raw_address: "48 Wall Street, New York, NY 10012")

Quest.create!(name:"Eat 8 Jalapeno poppers", description:"Down those poppers", price_range:2)

campaign = Campaign.create(name:"PoopyQuesters",
              leader_id: User.first.id,
              start_time: Time.now + 24,
              end_time: Time.now + 30,
              location_id: 1)

User.all.each do |user|
  campaign.users << user
  campaign.save
end

Quest.all.each do |quest|
  campaign.quests << quest
  campaign.save
end
