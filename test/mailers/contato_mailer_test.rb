require 'test_helper'

class ContatoMailerTest < ActionMailer::TestCase
  test "contato" do
    mail = ContatoMailer.contato
    assert_equal "Contato", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
