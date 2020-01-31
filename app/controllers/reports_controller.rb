class ReportsController < ApplicationController
  def index
    @report_topic = params[:report_topic]
    return unless @report_topic.present?
    @files = Dir.entries("public/reports/#{@report_topic.downcase}")[2..-1]
  end
end
