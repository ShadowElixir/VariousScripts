<# 
.NAME
    Various Scripts
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(471,481)
$Form.text                       = "Various Scripts"
$Form.TopMost                    = $false
$Form.BackColor                  = [System.Drawing.ColorTranslator]::FromHtml("#626262")

$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $false
$TextBox1.text                   = "Various Scripts"
$TextBox1.width                  = 371
$TextBox1.height                 = 70
$TextBox1.location               = New-Object System.Drawing.Point(39,63)
$TextBox1.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',40)
$TextBox1.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$TextBox1.BackColor              = [System.Drawing.ColorTranslator]::FromHtml("#626262")
$TextBox1.ReadOnly = $true

$ActivateWindows                 = New-Object system.Windows.Forms.Button
$ActivateWindows.text            = "Activate Windows"
$ActivateWindows.width           = 123
$ActivateWindows.height          = 41
$ActivateWindows.location        = New-Object System.Drawing.Point(41,171)
$ActivateWindows.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ActivateWindows.ForeColor       = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$ActivateWindows.Add_Click({
    Start-Job -ScriptBlock { powershell "irm massgrave.dev/get | iex" }
})

$ActivateIDM                     = New-Object system.Windows.Forms.Button
$ActivateIDM.text                = "Activate IDM"
$ActivateIDM.width               = 123
$ActivateIDM.height              = 41
$ActivateIDM.location            = New-Object System.Drawing.Point(41,239)
$ActivateIDM.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ActivateIDM.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$ActivateIDM.Add_Click({
    Start-Job -ScriptBlock { powershell "irm cutt.ly/idmactivation | iex" }
})

$DebloatWindows                  = New-Object system.Windows.Forms.Button
$DebloatWindows.text             = "Debloat Windows"
$DebloatWindows.width            = 123
$DebloatWindows.height           = 41
$DebloatWindows.location         = New-Object System.Drawing.Point(41,313)
$DebloatWindows.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$DebloatWindows.ForeColor        = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$DebloatWindows.Add_Click({
    Start-Job -ScriptBlock { powershell "irm christitus.com/win | iex" }
})

$ShadowOS                        = New-Object system.Windows.Forms.Button
$ShadowOS.text                   = "Launch ShadowOS"
$ShadowOS.width                  = 123
$ShadowOS.height                 = 41
$ShadowOS.location               = New-Object System.Drawing.Point(238,171)
$ShadowOS.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ShadowOS.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$ShadowOS.Add_Click({
    Start-Job -ScriptBlock { powershell "irm https://raw.githubusercontent.com/ShadowElixir/VariousScripts/main/scripts/shadowos.ps1 | iex" }
})

$noahOS                          = New-Object system.Windows.Forms.Button
$noahOS.text                     = "Launch noahOS"
$noahOS.width                    = 123
$noahOS.height                   = 41
$noahOS.location                 = New-Object System.Drawing.Point(238,239)
$noahOS.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$noahOS.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$noahOS.Add_Click({
    Start-Job -ScriptBlock { powershell "irm cutt.ly/noahos | iex" }
})

$Batch                           = New-Object system.Windows.Forms.Button
$Batch.text                      = "CMD Version"
$Batch.width                     = 123
$Batch.height                    = 41
$Batch.location                  = New-Object System.Drawing.Point(237,313)
$Batch.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Batch.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Batch.Add_Click({
    Start-Job -ScriptBlock { powershell "irm cutt.ly/cmdscripts | iex" }
})

$Form.controls.AddRange(@($TextBox1,$ActivateWindows,$ActivateIDM,$DebloatWindows,$ShadowOS,$noahOS,$Batch))

[void]$Form.ShowDialog()
