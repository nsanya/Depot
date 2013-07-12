Order.transaction do
  (1..100).each do |i|
    Order.create(:name => "User #{i}", :address => "#{i} street", :email => "user-#{i}@mail.ru",
    :pay_type => "Check")
  end
end