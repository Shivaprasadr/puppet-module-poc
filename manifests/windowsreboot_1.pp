class poc::windowsreboot{
        
	file {'c:/testfile.txt':
		content =>'testing reebot',
		source_permissions => ignore,
		}
	reboot{'reboot':
	subscribe => File['c:/testfile.txt'],
    		}
       }
