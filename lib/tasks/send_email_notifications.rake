namespace :events do
    desc "Send email notifications for Event B"
    task send_email_notifications_for_event_b: :environment do
      users = User.joins(:events).where(events: { name: 'Event B' }).distinct
      iterable_service ||= MockIterableService.new
      users.each do |user|
        iterable_service.send_email_notification(user.email)
      end
    end
end
