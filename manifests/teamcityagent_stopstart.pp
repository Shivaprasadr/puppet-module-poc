class poc::teamcityagent_stopstart(
		$run,
		) {
			if ($run == 'true') { service {'stop TCBuildAgent':
					      ensure => stopped,
					      name => TCBuildAgent,
							}
					      service {'start TCBuildAgent':
                                              ensure => running,
                                              name => TCBuildAgent,
                                                        }
					     }
			elsif ($run == 'false') { 
						  notify{"The value of run is: ${run}": }
						 } 
		    }

					
				
