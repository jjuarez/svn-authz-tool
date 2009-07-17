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

  def find_ldap_id( alias )

    @svn_aliases[alias]
  end
end

end # module

