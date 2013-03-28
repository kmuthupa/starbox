FactoryGirl.define do
   factory :beverage do 
     name ['Coffee', 'Caffe Latte', 'Cafe Americano'].sample
     recipe
   end
end