casper.start 'http://www.google.com/', ->
 
  @.then ->
    @.echo 'Foobar'
    @.test.assertTitle 'Google', 'google has the correct title'
  
 
casper.run ->
  @.exit()
