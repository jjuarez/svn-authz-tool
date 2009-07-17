#!/usr/bin/env ruby


module Svn


#
# Format exception
#
class PermissionsFormatError < RuntimeError; end


#
# Subversion ACL permissions representation
#
class Permissions

  attr_reader :r,:w

  def Permissions.parse( permissions_str )

    case permissions_str
      when ""
        { :r=>false, :w=>false }

      when "r"
        { :r=>true,  :w=>false }

      when "w"
        { :r=>false, :w=>true }

      when "rw"
      when "wr"
        { :r=>true,  :w=>true }
      else 
        raise( PermissionFormatError.new( "Permissions format exception" ) )
    end
  end

  def initialize( permissions )

    begin

      permissions_hash = Permissions.parse( permissions )

      @r = permissions_hash[:r]
      @w = permissions_hash[:w]
    rescue => e
      $stderr.puts( e )
    end
  end

  def change_to( new_permissions )

    begin
      permissions_hash = Permissions.parse( new_permissions )

      @r = permissions_hash[:r]
      @w = permissions_hash[:w]
    rescue => e
      $stderr.puts( e )
    end
  end

  def add_read( ) 
    
    @r = true 
  end

  def add_write( ) 

    @w = true
  end

  def remove_read( )

    @r = false
  end

  def remove_write( ) 

    @w = false
  end
end
end

