#!/usr/bin/env ruby

# frozen_string_literal: true

require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'octokit'
end

GITHUB_TOKEN = ENV.fetch('GITHUB_TOKEN', '')
raise 'please set GITHUB_TOKEN' if GITHUB_TOKEN.strip.empty?

client = Octokit::Client.new(access_token: GITHUB_TOKEN)
pull_requests = client.search_issues('archived:false type:pr state:open review-requested:@me')
puts pull_requests.total_count unless pull_requests.nil? || pull_requests.total_count.zero?
