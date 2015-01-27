node.default['jetty']['java_options'] << "-javaagent:#{node['dripstat']['home']}/dripstat.jar"
