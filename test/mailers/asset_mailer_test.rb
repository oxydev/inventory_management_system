require 'test_helper'

class AssetMailerTest < ActionMailer::TestCase
  test "request_mail" do
    mail = AssetMailer.request_mail
    assert_equal "Request mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
