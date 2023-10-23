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

$VariousScripts                          = New-Object system.Windows.Forms.Label
$VariousScripts.text                     = "Various Scripts"
$VariousScripts.AutoSize                 = $false
$VariousScripts.width                    = 481
$VariousScripts.height                   = 68
$VariousScripts.location                 = New-Object System.Drawing.Point(20,53)
$VariousScripts.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',45)
$VariousScripts.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$Author                          = New-Object system.Windows.Forms.Label
$Author.text                     = "By ShadowElixir"
$Author.AutoSize                 = $true
$Author.width                    = 25
$Author.height                   = 10
$Author.location                 = New-Object System.Drawing.Point(42,118)
$Author.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',11,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Italic))
$Author.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

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
    Start-Job -ScriptBlock { powershell "irm cutt.ly/shadowos | iex" }
})

$AppLauncher                          = New-Object system.Windows.Forms.Button
$AppLauncher.text                     = "Launch AppLauncher"
$AppLauncher.width                    = 123
$AppLauncher.height                   = 41
$AppLauncher.location                 = New-Object System.Drawing.Point(238,239)
$AppLauncher.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$AppLauncher.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$AppLauncher.Add_Click({
    Start-Job -ScriptBlock { powershell "irm cutt.ly/appslauncher | iex" }
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

$Form.controls.AddRange(@($VariousScripts,$Author,$ActivateWindows,$ActivateIDM,$DebloatWindows,$ShadowOS,$AppLauncher,$Batch))

[void]$Form.ShowDialog()
