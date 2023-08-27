<# 
.NAME
    Various Scripts
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(471,520)
$Form.text                       = "Various Scripts"
$Form.TopMost                    = $false
$Form.BackColor                  = [System.Drawing.ColorTranslator]::FromHtml("#626262")

$VariousScripts                          = New-Object system.Windows.Forms.Label
$VariousScripts.text                     = "Various Scripts"
$VariousScripts.AutoSize                 = $false
$VariousScripts.width                    = 481
$VariousScripts.height                   = 68
$VariousScripts.location                 = New-Object System.Drawing.Point(21,10)
$VariousScripts.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',45)
$VariousScripts.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$Author                          = New-Object system.Windows.Forms.Label
$Author.text                     = "By ShadowElixir"
$Author.AutoSize                 = $true
$Author.width                    = 25
$Author.height                   = 10
$Author.location                 = New-Object System.Drawing.Point(35,75)
$Author.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',11,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Italic))
$Author.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$Github                          = New-Object system.Windows.Forms.Label
$Github.text                     = "/ShadowElixir"
$Github.AutoSize                 = $true
$Github.width                    = 25
$Github.height                   = 10
$Github.location                 = New-Object System.Drawing.Point(120,340)
$Github.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',34)
$Github.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$GithubLogo                     = New-Object system.Windows.Forms.PictureBox
$GithubLogo.width               = 138
$GithubLogo.height              = 80
$GithubLogo.location            = New-Object System.Drawing.Point(10,325)
$GithubLogo.imageLocation       = "https://i.imgur.com/5ggdeCE.png"
$GithubLogo.SizeMode            = [System.Windows.Forms.PictureBoxSizeMode]::zoom

$YouTube                          = New-Object system.Windows.Forms.Label
$YouTube.text                     = "/@shadowelixir"
$YouTube.AutoSize                 = $true
$YouTube.width                    = 25
$YouTube.height                   = 10
$YouTube.location                 = New-Object System.Drawing.Point(120,420)
$YouTube.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',34)
$YouTube.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$YouTubeLogo                     = New-Object system.Windows.Forms.PictureBox
$YouTubeLogo.width               = 138
$YouTubeLogo.height              = 50
$YouTubeLogo.location            = New-Object System.Drawing.Point(10,420)
$YouTubeLogo.imageLocation       = "https://i.imgur.com/4tAjnkA.png"
$YouTubeLogo.SizeMode            = [System.Windows.Forms.PictureBoxSizeMode]::zoom

$ActivateWindows                 = New-Object system.Windows.Forms.Button
$ActivateWindows.text            = "Activate Windows"
$ActivateWindows.width           = 123
$ActivateWindows.height          = 41
$ActivateWindows.location        = New-Object System.Drawing.Point(41,122)
$ActivateWindows.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ActivateWindows.ForeColor       = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$ActivateWindows.Add_Click({
    Start-Job -ScriptBlock { powershell "irm massgrave.dev/get | iex" }
})

$ActivateIDM                     = New-Object system.Windows.Forms.Button
$ActivateIDM.text                = "Activate IDM"
$ActivateIDM.width               = 123
$ActivateIDM.height              = 41
$ActivateIDM.location            = New-Object System.Drawing.Point(41,190)
$ActivateIDM.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ActivateIDM.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$ActivateIDM.Add_Click({
    Start-Job -ScriptBlock { powershell "irm cutt.ly/idmactivation | iex" }
})

$DebloatWindows                  = New-Object system.Windows.Forms.Button
$DebloatWindows.text             = "Debloat Windows"
$DebloatWindows.width            = 123
$DebloatWindows.height           = 41
$DebloatWindows.location         = New-Object System.Drawing.Point(41,264)
$DebloatWindows.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$DebloatWindows.ForeColor        = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$DebloatWindows.Add_Click({
    Start-Job -ScriptBlock { powershell "irm christitus.com/win | iex" }
})

$ShadowOS                        = New-Object system.Windows.Forms.Button
$ShadowOS.text                   = "Launch ShadowOS"
$ShadowOS.width                  = 123
$ShadowOS.height                 = 41
$ShadowOS.location               = New-Object System.Drawing.Point(238,122)
$ShadowOS.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$ShadowOS.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$ShadowOS.Add_Click({
    Start-Job -ScriptBlock { powershell "irm https://raw.githubusercontent.com/ShadowElixir/VariousScripts/main/scripts/shadowos.ps1 | iex" }
})

$noahOS                          = New-Object system.Windows.Forms.Button
$noahOS.text                     = "Launch noahOS"
$noahOS.width                    = 123
$noahOS.height                   = 41
$noahOS.location                 = New-Object System.Drawing.Point(238,190)
$noahOS.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$noahOS.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$noahOS.Add_Click({
    Start-Job -ScriptBlock { powershell "irm cutt.ly/noahos | iex" }
})

$Batch                           = New-Object system.Windows.Forms.Button
$Batch.text                      = "CMD Version"
$Batch.width                     = 123
$Batch.height                    = 41
$Batch.location                  = New-Object System.Drawing.Point(237,264)
$Batch.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Batch.ForeColor                 = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Batch.Add_Click({
    Start-Job -ScriptBlock { powershell "irm cutt.ly/cmdscripts | iex" }
})

$Form.controls.AddRange(@($VariousScripts,$Author,$Github,$GithubLogo,$YouTube,$YouTubeLogo,$ActivateWindows,$ActivateIDM,$DebloatWindows,$ShadowOS,$noahOS,$Batch))

[void]$Form.ShowDialog()
