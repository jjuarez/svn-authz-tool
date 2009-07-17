#!/usr/bin/env ruby


#
# Svn module
#
module Svn


#
# Svn Group representation
#
class Group

  attr_reader :group_id
  attr_reader :users

  def initialize( group_id, users=nil )

    @group_id = group_id
    @users    = users
  end

  def add_users( new_user )

    @users << new_user
  end

  def to_s( )

    "group_id: #{@group_id} #{@users.inspect()}"
  end
end


#
# A set of groups
#
class Groups

  attr_reader :groups

  def initialize( svn_authz )

    @groups = []

    if( svn_authz.has_section?( :groups ) )
 
      svn_authz[:groups].each { |group, members|

        @groups << Group.new( group, members.split( "," ) ) 
      }
    end
  end


  def get_group( group_id )

    #TODO: ???
  end
end

end # module

