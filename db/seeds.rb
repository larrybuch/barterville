#create some creature types
Item.delete_all
User.delete_all

i1 = Item.create(:name => "Shoe", :description => 'wtf', :photo => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRiwI9cdoUiGhrNOZfC_pTO2jqh_1N5SP9BDsUSSR3HdngXsePEqQ')
i2 = Item.create(:name => "Bag", :description => 'wtf', :photo => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTbyGSU7t2yr2vViARp-KsPS3BdQC-8MsxXrtRd7F2xOAkqO1V')
i3 = Item.create(:name => "Elephant", :description => 'wtf', :photo => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJtM3tQu7IS-iC0kVyxnU5lIHdwc0zOvc2vWgOKHPlOblcWurkRg')
i4 = Item.create(:name => "Dogs", :description => 'wtf', :photo => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQpPPcSSXiexsByYFo7bY-wjuf3L3oRUJrsiraMJV7IoFI9Hu0GgQ')


('A'..'H').each do |user|
	u = User.create(:name => user, :photo => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQd4c_NVVgdNP0ap4VF1s4EN-KoRd8j_PzFJiXaWU9BwJsyCbKccA', :password => 'a', :password_confirmation => 'a')
end

('H'..'Z').each do |user|
	u2 = User.create(:name => user, :photo => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2biV_tQkxDUtpuKfPrMEX9GrD7_PUsg5iR3FvyfrpWotDtEePHw', :password => 'a', :password_confirmation => 'a')
end


