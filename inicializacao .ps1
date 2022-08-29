$FilePath = "C:\GitHub\Exam-70-486-Developing-ASP.NET-MVC-Web-Applications\Private\horariosestudo.xlsx"
$Excel = New-Object -ComObject Excel.Application
$Excel.Visible = $true
$Workbook = $Excel.Workbooks.Open($FilePath)

# SIG # Begin signature block
# Key
# SIG # End signature block
