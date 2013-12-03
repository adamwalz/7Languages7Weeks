#----------------------------------------------------------------------------
#          FILE:  acts_as_csv.rb
#   DESCRIPTION:  Seven Languages in Seven Weeks - Ruby - Day 3 Exercises
#        AUTHOR:  Adam Walz <adam@adamwalz.net>
#       VERSION:  1.0.0
#
# Modify the CSV application to support an each method to return a CsvRow object.
# Use method_missing on that CsvRow to return the value for the column for a given heading.
#----------------------------------------------------------------------------

module ActsAsCsv

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.csv'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')

      file.each do |row|
        @csv_contents << CsvRow.new(@headers, row.chomp.split(', '))
      end
    end

    attr_accessor :headers, :csv_contents
    def initialize
      read
    end

    def each(&block)
      csv_contents.each &block
    end

    def method_missing(name, *args)
        @headers
    end

  end

  class CsvRow
    attr_accessor :headers, :csv_row

    def initialize(headers, csv_row)
      @headers = headers
      @csv_row = csv_row
    end

    def method_missing(name, *args)
      col_index = @headers.index(name.to_s)
      return @csv_row[col_index] if col_index

      # By coding a method_missing hook without delegating to the original Object definition,
      # we have effectively muted our object’s ability to complain about messages we really didn’t want it to handle
      super # call method_missing all the way up the class hierarchy
    end
  end
end

class RubyCsv # no inheritance! You can mix it in
  include ActsAsCsv
  acts_as_csv
end

m = RubyCsv.new
#puts m.headers.inspect
#puts m.csv_contents.inspect

m.each {|row| puts row.animal}
