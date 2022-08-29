# Exam-70-486-Developing-ASP.NET-MVC-Web-Applications

To organize the progression, I will just setup a Python script to initialize an excel timesheet on windows startup

In the PowerShell terminal, I will just run:
> $trigger = New-JobTrigger -AtStartup -RandomDelay 00:00:30

To set up a new 'trigger', at startup (_-AtStartup parameter_), with a delay of 30 seconds to avoid **race condition**

Now, I will relate the _trigger_ with the _file_, just run the command:

> Register-ScheduledJob -Trigger $trigger -FilePath C:\GitHub\Exam-70-486-Developing-ASP.NET-MVC-Web-Applications\Public\inicializacao.ps1 -Name GetBatteryStatus

The expected output is:
![image](https://user-images.githubusercontent.com/56644658/187301945-1715295c-1344-4908-a913-4fd16ad13943.png)

After reboting, you can run **Get-Job** to verify the status

Now I will set the PowerShell script, it will open the excel timesheet on startup:

>_$FilePath = "C:\GitHub\Exam-70-486-Developing-ASP.NET-MVC-Web-Applications\Private\horariosestudo.xlsx"_

_$Excel = New-Object -ComObject Excel.Application_

_$Excel.Visible = $true_

_$Workbook = $Excel.Workbooks.Open($FilePath)_


When I try open it, I receive a error

![image](https://user-images.githubusercontent.com/56644658/187307703-f944af74-6f91-48a2-aeea-0cd4b189224f.png)

I just set the **Execution Policy** to AllSigned, and set a new signature, then I sign the script and run it. 


References:
>https://stackoverflow.com/questions/37665118/how-to-open-excel-workbook-from-powershell-for-automation
>https://devblogs.microsoft.com/scripting/use-powershell-to-create-job-that-runs-at-startup/
>https://docs.microsoft.com/pt-br/powershell/module/microsoft.powershell.security/set-authenticodesignature?view=powershell-7.2
>https://adamtheautomator.com/how-to-sign-powershell-script/
