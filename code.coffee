casper.userAgent('Mozilla/5.0 (Macintosh; Intel Mac OS X)')
casper.start 'http://casperjs.org', ->
  @.viewport(1024, 768);
  @.thenClick('.dropdown-toggle')
  @.then ->
    @.clickLabel 'Tester API'
  @.then ->
    @.clickLabel 'Extending'
  @.then ->
    @.test.assertUrlMatch 'http://casperjs.org/extending.html'
    @.capture 'test.png'
 
casper.run ->
  @.test.done(1)
