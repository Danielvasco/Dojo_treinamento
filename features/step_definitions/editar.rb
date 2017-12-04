Dado("que estou logado no site") do                                               
	visit "http://opensource.demo.orangehrmlive.com/"
 	fill_in('txtUsername', :with =>'Admin')
  	fill_in('txtPassword', :with =>'admin')
  	click_button('btnLogin')     
end                                                                               
                                                                                  
 Quando("entrar na aba cadastro") do 
  	click_link('PIM',:match => :first)
 	click_link('menu_pim_viewEmployeeList',:match => :first)                                              
     
end                                                                               
                                                                                  
Quando("informar os novos  dados") do                                             
  	click_link('Carlosz')
 	click_button('Edit')
 	fill_in('personal_txtEmpLastName', :with =>'silva', wait: 1)
 	click_button('Save')
end                                                                               
                                                                                  
Entao("efetuarei as alterações do cadastro") do                                   
  assert_text('Successfully Saved')
   
end                                                                               
                                                                                  