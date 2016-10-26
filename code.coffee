casper.start 'http://translate.google.com/', ->
  @.sendKeys('#source', 'Guten Tag');
  @.then ->
    @.click '#gt-submit'
  @.waitForText('Good day')
  @.then ->
    @.test.assertSelectorHasText '#result_box', 'Good day'
  @.then ->
    @.capture 'output.png'
 
casper.run ->
  @.test.done(1)
