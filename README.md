# Exam-70-486-Developing-ASP.NET-MVC-Web-Applications

To organize the progression, I will just setup a Python script to initialize an excel timesheet on windows startup

In the PowerShell terminal, I will just run:
> $trigger = New-JobTrigger -AtStartup -RandomDelay 00:00:30
To set up a new 'trigger', at startup (_-AtStartup parameter_), with a delay of 30 seconds to avoid **race condition**

Now, I will relate the _trigger_ with the _file_, just run the command:
'''
Register-ScheduledJob -Trigger $trigger -FilePath C:\GitHub\Exam-70-486-Developing-ASP.NET-MVC-Web-Applications\Public\inicializacao.ps1 -Name GetBatteryStatus
'''


