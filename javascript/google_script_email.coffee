createAndSendDocument = () ->
  doc     = DocumentApp.create 'Hello, world!' # new document
  url     = doc.getUrl()                       # get its url
  email   = Session.getActiveUser().getEmail() # my email address
  subject = doc.getName()                      # 'Hello, world!'
  body    = "Link to your doc: #{url}"

  doc.getBody().appendParagraph 'This document was created by Google Apps Script.'
  GmailApp.sendEmail email, subject, body
  return
