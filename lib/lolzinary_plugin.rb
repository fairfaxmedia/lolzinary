# -*- encoding : utf-8 -*-
require 'active_support'
require 'cloudinary'

module Lolcommits
  class Lolzinary < Plugin

    def initialize(runner)
      super
      options.concat(%w(
        cloud_name
        api_key
        secret
      ))
    end

    def run_postcapture
      return unless valid_configuration?

      if runner.git_info.repo.empty?
        puts 'Repo is empty, skipping upload'
      else
        debug "Posting capture to Cloudinary!"
        upload = Cloudinary::Uploader.upload(runner.main_image, upload_metadata)
        if upload.present?
          puts "Upload complete! view me at #{upload["secure_url"]}"
        else
          puts "Upload failed. :-("
        end
      end
    end

    def auth_details
      {
          cloud_name: "#{configuration['cloud_name']}",
          api_key: "#{configuration['api_key']}",
          api_secret: "#{configuration['secret']}"
      }
    end

    def upload_metadata
      auth_details.merge!(tags: ["lolcommits", "#{runner.git_info.repo}"],
                          context: {caption: "Uploaded by #{runner.git_info.author_name} while working on #{runner.git_info.repo}"},
                          folder: "lolcommits/#{runner.git_info.repo}",
                          public_id: "#{runner.sha}")
    end

    def self.name
      'lolzinary'
    end

    def self.runner_order
      :postcapture
    end
  end
end
