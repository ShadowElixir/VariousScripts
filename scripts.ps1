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
    Start-Process powershell "irm https://get.activated.win | iex"
})

$DebloatWindows                  = New-Object system.Windows.Forms.Button
$DebloatWindows.text             = "Debloat Windows"
$DebloatWindows.width            = 123
$DebloatWindows.height           = 41
$DebloatWindows.location         = New-Object System.Drawing.Point(41,239)
$DebloatWindows.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$DebloatWindows.ForeColor        = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$DebloatWindows.Add_Click({
    Start-Process powershell "irm cutt.ly/debloat-windows | iex"
})

$BetterPwsh                     = New-Object system.Windows.Forms.Button
$BetterPwsh.text                = "Better Powershell Profile"
$BetterPwsh.width               = 123
$BetterPwsh.height              = 41
$BetterPwsh.location            = New-Object System.Drawing.Point(41,313)
$BetterPwsh.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$BetterPwsh.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$BetterPwsh.Add_Click({
    Start-Process pwsh -ArgumentList "-Command", "irm cutt.ly/powerprofile | iex"
})

$Requirement                          = New-Object system.Windows.Forms.Label
$Requirement.text                     = "*Requires Powershell Core 7"
$Requirement.AutoSize                 = $true
$Requirement.width                    = 25
$Requirement.height                   = 10
$Requirement.location                 = New-Object System.Drawing.Point(41,355)
$Requirement.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',8,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Italic))
$Requirement.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$InstallStore                            = New-Object system.Windows.Forms.Button
$InstallStore.text                       = "Install 
Microsoft Store"
$InstallStore.width                      = 123
$InstallStore.height                     = 41
$InstallStore.location                   = New-Object System.Drawing.Point(238,171)
$InstallStore.Font                       = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$InstallStore.ForeColor                  = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$InstallStore.Add_Click({
    Start-Process powershell "wsreset -i"
})

$PostInstall                            = New-Object system.Windows.Forms.Button
$PostInstall.text                       = "PostInstall Script"
$PostInstall.width                      = 123
$PostInstall.height                     = 41
$PostInstall.location                   = New-Object System.Drawing.Point(238,239)
$PostInstall.Font                       = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$PostInstall.ForeColor                  = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$PostInstall.Add_Click({
    Start-Process powershell "irm cutt.ly/postinstall-confirmation | iex"
})

# $ShadowOS                        = New-Object system.Windows.Forms.Button
# $ShadowOS.text                   = "Launch ShadowOS"
# $ShadowOS.width                  = 123
# $ShadowOS.height                 = 41
# $ShadowOS.location               = New-Object System.Drawing.Point(238,239)
# $ShadowOS.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
# $ShadowOS.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
# $ShadowOS.Add_Click({
#     Start-Process powershell "irm cutt.ly/shadowos | iex"
# })

$Batch                           = New-Object system.Windows.Forms.Button
$Batch.text                      = "CMD Version"
$Batch.width                     = 123
$Batch.height                    = 41
$Batch.location                  = New-Object System.Drawing.Point(238,313)
$Batch.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Batch.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Batch.Add_Click({
    Start-Process powershell "irm cutt.ly/cmdscripts | iex"
})

$StartMenu                           = New-Object system.Windows.Forms.Button
$StartMenu.text                      = "VariousScripts >> Start Menu"
$StartMenu.width                     = 250
$StartMenu.height                    = 41
$StartMenu.location                  = New-Object System.Drawing.Point(95,400)
$StartMenu.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$StartMenu.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$StartMenu.Add_Click({
    Start-Process powershell "irm cutt.ly/manystart | iex"
})

$Form.controls.AddRange(@($VariousScripts,$Author,$ActivateWindows,$DebloatWindows,$BetterPwsh,$Requirement,$InstallStore,$PostInstall,$Batch,$StartMenu)) # $ShadowOS

[void]$Form.ShowDialog()
