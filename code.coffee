#casper = require("casper").create()
#casper.options.logLevel = "info"
casper.options.logLevel = "info"
casper.options.verbose = true
creds =
	'email': "nachiket@shopsocially.com"
	'password': "test1234"                                          
# casper.echo "her again"
casper.start "https://yoda.shopsocially.com/login", ->              
      @echo @getTitle()
      @echo "here"                                                                    
      @test.assertTitle "ShopSocially | Social Platform, Social Apps | Engage. Convert. Amplify.", "homepage title is the one expected"         
casper.then ->
    @fill 'form.form-horizontal', creds, false            
    # @fill 'form.form-horizontal', password: "test1234", true
    @capture '/home/shop/Documents/Casper_tests/code_test.png'                       
    @click "#ss_login"
    @capture '/home/shop/Documents/Casper_tests/code_test1.png'
    @echo "creds filled"
    @waitUntilVisible "#mainbody", ->
    	@click '.btn-primary'
    	@wait 10000, ->
    		@capture '/home/shop/Documents/Casper_tests/code_test3.png'
	# ),(->
		# @echo "Failed to login"
	# ), 9000
    # 

casper.run ->                                  
	@exit()