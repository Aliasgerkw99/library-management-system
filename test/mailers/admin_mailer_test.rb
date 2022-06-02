require "test_helper"

class AdminMailerTest < ActionMailer::TestCase
  test "record_created" do
    mail = AdminMailer.record_created
    assert_equal "Record created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
