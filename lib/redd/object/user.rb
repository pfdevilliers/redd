require "redd/thing"

module Redd
  module Object
    class User < Redd::Thing
      attr_reader :created_utc
      attr_reader :name
      attr_reader :is_friend
      attr_reader :link_karma
      attr_reader :comment_karma
      attr_reader :gold_creddits
      attr_reader :gold_expiration
      attr_reader :is_gold
      attr_reader :is_mod
      attr_reader :has_verified_email
      attr_reader :has_mod_mail
      attr_reader :has_mail

      alias_method :has_gold, :is_gold

      def created
        @created ||= Time.at(@attributes[:created])
      end

      def fullname
        @fullname ||= "#{kind}_#{id}"
      end
    end
  end
end