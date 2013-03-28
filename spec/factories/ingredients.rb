FactoryGirl.define do
   factory :ingredient do 
     name ['Milk', 'Sugar', 'Cream'].sample
     units 25
     price [0.25, 0.75, 0.3].sample
   end
end