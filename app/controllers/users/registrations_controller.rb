# app/controllers/users/registrations_controller.rb

# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
    def create
      super
      UserMailer.welcome(resource).deliver if resource.valid?
    end
  end