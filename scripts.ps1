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

$DebloatWindows                  = New-Object system.Windows.Forms.Button
$DebloatWindows.text             = "Debloat Windows"
$DebloatWindows.width            = 123
$DebloatWindows.height           = 41
$DebloatWindows.location         = New-Object System.Drawing.Point(41,239)
$DebloatWindows.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$DebloatWindows.ForeColor        = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$DebloatWindows.Add_Click({
    Start-Job -ScriptBlock { powershell "irm christitus.com/win | iex" }
})

$BetterPwsh                     = New-Object system.Windows.Forms.Button
$BetterPwsh.text                = "Better Powershell Profile"
$BetterPwsh.width               = 123
$BetterPwsh.height              = 41
$BetterPwsh.location            = New-Object System.Drawing.Point(41,313)
$BetterPwsh.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BetterPwsh.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BetterPwsh.Add_Click({
    Start-Job -ScriptBlock { powershell "irm https://massgrave.dev/ias | iex" }
})

$Requirement                          = New-Object system.Windows.Forms.Label
$Requirement.text                     = "*Requires Powershell Core 7"
$Requirement.AutoSize                 = $true
$Requirement.width                    = 25
$Requirement.height                   = 10
$Requirement.location                 = New-Object System.Drawing.Point(41,350)
$Requirement.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',11,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Italic))
$Requirement.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

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

$JustGuitars                            = New-Object system.Windows.Forms.Button
$JustGuitars.text                       = "Launch 
Just Guitars"
$JustGuitars.width                      = 123
$JustGuitars.height                     = 41
$JustGuitars.location                   = New-Object System.Drawing.Point(238,239)
$JustGuitars.Font                       = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$JustGuitars.ForeColor                  = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$JustGuitars.Add_Click({
    Start-Job -ScriptBlock { powershell "start "" https://cutt.ly/justguitars" }
})

$Batch                           = New-Object system.Windows.Forms.Button
$Batch.text                      = "CMD Version"
$Batch.width                     = 123
$Batch.height                    = 41
$Batch.location                  = New-Object System.Drawing.Point(238,313)
$Batch.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Batch.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Batch.Add_Click({
    Start-Job -ScriptBlock { powershell "irm cutt.ly/cmdscripts | iex" }
})

$Form.controls.AddRange(@($VariousScripts,$Author,$ActivateWindows,$DebloatWindows,$BetterPwsh,$Requirement,$ShadowOS,$JustGuitars,$Batch))

[void]$Form.ShowDialog()
