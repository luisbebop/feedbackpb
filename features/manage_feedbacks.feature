Feature: Manage feedbacks
  In order to make a feedback system
  As an user
  I want to see feedbacks for me and assign a feedback for my co-workers

	Scenario: Show co-workers list
	  Given the following users records
		 | username              |
		 | luis@planobe.com.br   |
		 | danilo@planobe.com.br |
		 | bruno@planobe.com.br  |
		And I am logged in as "teste@planobe.com.br" with password "123456"
	  When I go to the list of users
	  Then I should see "luis@planobe.com.br"
		And I should see "danilo@planobe.com.br"
		And I should see "bruno@planobe.com.br"
		
	Scenario: Show my feedback list
		Given I am logged in as "teste@planobe.com.br" with password "123456"
		And the following feedback records
			| username              | continue                | start                                              | stop                                                                      |
			| teste@planobe.com.br   | Programando e estudando | Se envolver mais nos projetos .NET                 | Parar de reclamar                                                         |
			| teste@planobe.com.br   | Praticar esportes       | Se envolver mais com os outros projetos da empresa | Ser menos assertivo quando não concordar com alguma coisa                 |
		When I go to teste@planobe.com.br's feedback page
		Then I should see "teste@planobe.com.br"
		And I should see "Você recebeu 2 feedbacks até agora!"
		And I should see "Programando e estudando"
		And I should see "Se envolver mais nos projetos .NET"
		And I should see "Parar de reclamar"
		And I should see "Praticar esportes"
		And I should see "Se envolver mais com os outros projetos da empresa"
		And I should see "Ser menos assertivo quando não concordar com alguma coisa"
		
		
	Scenario: Show the feedback list only for the feedback page owner
	  Given I am logged in as "teste@planobe.com.br" with password "123456"
		And the following feedback records
		 | username              | continue                | start                                              | stop                                                      |
		 | teste@planobe.com.br   | Programando e estudando | Se envolver mais nos projetos .NET                 | Parar de reclamar                                         |
		 | teste@planobe.com.br   | Praticar esportes       | Se envolver mais com os outros projetos da empresa | Ser menos assertivo quando não concordar com alguma coisa |
		 | danilo@planobe.com.br | Estudar programacao     | Se comunicar melhor                                | Parar de desviar a atencao durante a programacao          |
	  When I go to danilo@planobe.com.br's feedback page
		Then I should see "danilo@planobe.com.br"
		And I should see "danilo@planobe.com.br recebeu 1 feedback até agora!"
	  Then I should not see "Estudar programacao"
		And I should not see "Se comunicar melhor"
		And I should not see "Parar de desviar a atencao durante a programacao"
		
	Scenario: Create a valid feedback for a co-worker
	  Given I am logged in as "teste@planobe.com.br" with password "123456"
	 	And the following users records
			 | username              |
			 | luis@planobe.com.br   |
			 | danilo@planobe.com.br |
			 | bruno@planobe.com.br  |
		When I go to the list of users
	  And I follow "danilo@planobe.com.br"
		And I fill in the following:
			| user_feedbacks_attributes_0_continue | Estudar programacao                              |
			| user_feedbacks_attributes_0_start    | Se comunicar melhor                              |
			| user_feedbacks_attributes_0_stop     | Parar de desviar a atencao durante a programacao |
		And I press "Dar feedback!"
		Then I should see "Seu companheiro recebeu o feedback e lerá em breve."
		And I should have 1 feedback for the user "danilo@planobe.com.br"