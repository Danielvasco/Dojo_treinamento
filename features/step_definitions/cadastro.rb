                                                                               
Dado("que estou na home do site") do                                           
 	visit "http://opensource.demo.orangehrmlive.com/"
 	fill_in('txtUsername', :with =>'Admin')
  	fill_in('txtPassword', :with =>'admin')
  	click_button('btnLogin') 
end                                                                            
                                                                               
Quando("acessar a pagina de cadastro") do                                      
	click_link('PIM',:match => :first)
 	click_link('Add Employee',:match => :first)

end                                                                            
                                                                               
Quando("informar os dados") do                                                 
  	fill_in('firstName', :with =>'Carlosz')
  	fill_in('lastName', :with =>'admdin')
  	click_button('Save')
end                                                                            
                                                                               
Entao("efetuarei o cadastro") do                                               
  assert_text('Personal Details') 
end                                                                            
                                                                               