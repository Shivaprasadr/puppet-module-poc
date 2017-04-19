class poc::teamcityagent_autorestart(
			  $run,
			){
  			  if $run == true { service{'TCBuildAgent':
           		   	   			ensure => 'running',
   		   	           			enable => true,
			  	  		       }			  
						notify {" ran as the varriable run was ${run}": }
			   		      }
			  elsif $run == false {
						   notify {"did not run anything as the variable run was ${run}": }
						  }
			  }

