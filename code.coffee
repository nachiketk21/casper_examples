casper.start 'http://www.google.com/', ->
 
  @.then ->
    @.echo 'Foobar'
    @.test.assertTitle 'Google', 'google has the correct title'
	filename = '/home/velocita/ss_test_snapshots/Wed Nov 16 2016 1-14_test_results.txt'

 
casper.run ->
  @.exit()
