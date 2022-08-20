require 'test_helper'

class NewPostingMailerTest < ActionMailer::TestCase
  test "pending_posting" do
    mail = NewPostingMailer.pending_posting
    assert_equal "Pending-posting", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "notify_user" do
    mail = NewPostingMailer.notify_user
    assert_equal "Notify user", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
