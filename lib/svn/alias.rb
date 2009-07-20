#/usr/bin/env ruby

#
# Svn module
#
module Svn

#
# Representation of Aliases for Subversion Path Authorization
#
class Aliases

  attr_reader :aliases

  def initialize( svn_authz )

    @svn_aliases = svn_authz[:aliases] 
  end

  def find_ldap_id( alias_id )

    @svn_aliases[alias_id]
  end
end

end # module

