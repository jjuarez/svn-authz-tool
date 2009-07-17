#!/usr/bin/env ruby

module Svn

#
# Subversion ACL User representation
#
class User

  attr_reader :id

  def initialize( id )

    @id = id
  end
end
end

