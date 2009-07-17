#!/usr/bin/env ruby


#
# Svn module
#
module Svn

#
#
#
class Repository

  def initialize( svn_authz, repo_name, repo_path )
   
    @repository_id = [repo_name,repo_path].join(":")]
    @users         = svn_authz[section_id]
  end
end
end

