﻿param($installPath, $toolsPath, $package, $project)

$modules = Get-ChildItem $ToolsPath -Filter *.psm1
$modules | ForEach-Object { Import-Module -Name  $_.FullName }

@"
========================
Chocolatey
========================
Welcome to Chocolatey, your local machine repository built on the NuGet infrastructure. Chocolatey allows you to install application packages to your machine with the goodness of a #chocolatey #nuget combo.
Application executables get added to the path automatically so you can call them from anywhere (command line/powershell prompt), not just in Visual Studio.

Lets get Chocolatey!
----------
Visual Studio -
----------
Please run Initialize-Chocolatey one time per machine to set up the repository.
If you are upgrading, please remember to run Initialize-Chocolatey again.
After you have run Initialize-Chocolatey, you can safely uninstall the chocolatey package from your current Visual Studio solution.
----------
Alternative NuGet -
----------
If you are not using NuGet in Visual Studio, please navigate to the directory with the chocolateysetup.psm1 and run that in PowerShell, followed by Initialize-Chocolatey.
Upgrade is the same, just run Initialize-Chocolatey again.
----------
Once you've run initialize or upgrade, you can uninstall this package from the local project without affecting your chocolatey repository.
========================
"@ | Write-Host

# SIG # Begin signature block
# MIInKwYJKoZIhvcNAQcCoIInHDCCJxgCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCB4QB+fuKUSzfWB
# VJJyTKWIh0uBqhRfeHjEF1GjlNI6qqCCIK4wggWNMIIEdaADAgECAhAOmxiO+dAt
# 5+/bUOIIQBhaMA0GCSqGSIb3DQEBDAUAMGUxCzAJBgNVBAYTAlVTMRUwEwYDVQQK
# EwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xJDAiBgNV
# BAMTG0RpZ2lDZXJ0IEFzc3VyZWQgSUQgUm9vdCBDQTAeFw0yMjA4MDEwMDAwMDBa
# Fw0zMTExMDkyMzU5NTlaMGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2Vy
# dCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERpZ2lD
# ZXJ0IFRydXN0ZWQgUm9vdCBHNDCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoC
# ggIBAL/mkHNo3rvkXUo8MCIwaTPswqclLskhPfKK2FnC4SmnPVirdprNrnsbhA3E
# MB/zG6Q4FutWxpdtHauyefLKEdLkX9YFPFIPUh/GnhWlfr6fqVcWWVVyr2iTcMKy
# unWZanMylNEQRBAu34LzB4TmdDttceItDBvuINXJIB1jKS3O7F5OyJP4IWGbNOsF
# xl7sWxq868nPzaw0QF+xembud8hIqGZXV59UWI4MK7dPpzDZVu7Ke13jrclPXuU1
# 5zHL2pNe3I6PgNq2kZhAkHnDeMe2scS1ahg4AxCN2NQ3pC4FfYj1gj4QkXCrVYJB
# MtfbBHMqbpEBfCFM1LyuGwN1XXhm2ToxRJozQL8I11pJpMLmqaBn3aQnvKFPObUR
# WBf3JFxGj2T3wWmIdph2PVldQnaHiZdpekjw4KISG2aadMreSx7nDmOu5tTvkpI6
# nj3cAORFJYm2mkQZK37AlLTSYW3rM9nF30sEAMx9HJXDj/chsrIRt7t/8tWMcCxB
# YKqxYxhElRp2Yn72gLD76GSmM9GJB+G9t+ZDpBi4pncB4Q+UDCEdslQpJYls5Q5S
# UUd0viastkF13nqsX40/ybzTQRESW+UQUOsxxcpyFiIJ33xMdT9j7CFfxCBRa2+x
# q4aLT8LWRV+dIPyhHsXAj6KxfgommfXkaS+YHS312amyHeUbAgMBAAGjggE6MIIB
# NjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBTs1+OC0nFdZEzfLmc/57qYrhwP
# TzAfBgNVHSMEGDAWgBRF66Kv9JLLgjEtUYunpyGd823IDzAOBgNVHQ8BAf8EBAMC
# AYYweQYIKwYBBQUHAQEEbTBrMCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5kaWdp
# Y2VydC5jb20wQwYIKwYBBQUHMAKGN2h0dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNv
# bS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcnQwRQYDVR0fBD4wPDA6oDigNoY0
# aHR0cDovL2NybDMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJlZElEUm9vdENB
# LmNybDARBgNVHSAECjAIMAYGBFUdIAAwDQYJKoZIhvcNAQEMBQADggEBAHCgv0Nc
# Vec4X6CjdBs9thbX979XB72arKGHLOyFXqkauyL4hxppVCLtpIh3bb0aFPQTSnov
# Lbc47/T/gLn4offyct4kvFIDyE7QKt76LVbP+fT3rDB6mouyXtTP0UNEm0Mh65Zy
# oUi0mcudT6cGAxN3J0TU53/oWajwvy8LpunyNDzs9wPHh6jSTEAZNUZqaVSwuKFW
# juyk1T3osdz9HNj0d1pcVIxv76FQPfx2CWiEn2/K2yCNNWAcAgPLILCsWKAOQGPF
# mCLBsln1VWvPJ6tsds5vIy30fnFqI2si/xK4VC0nftg62fC2h5b9W9FcrBjDTZ9z
# twGpn1eqXijiuZQwggauMIIElqADAgECAhAHNje3JFR82Ees/ShmKl5bMA0GCSqG
# SIb3DQEBCwUAMGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMx
# GTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0IFRy
# dXN0ZWQgUm9vdCBHNDAeFw0yMjAzMjMwMDAwMDBaFw0zNzAzMjIyMzU5NTlaMGMx
# CzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjE7MDkGA1UEAxMy
# RGlnaUNlcnQgVHJ1c3RlZCBHNCBSU0E0MDk2IFNIQTI1NiBUaW1lU3RhbXBpbmcg
# Q0EwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDGhjUGSbPBPXJJUVXH
# JQPE8pE3qZdRodbSg9GeTKJtoLDMg/la9hGhRBVCX6SI82j6ffOciQt/nR+eDzMf
# UBMLJnOWbfhXqAJ9/UO0hNoR8XOxs+4rgISKIhjf69o9xBd/qxkrPkLcZ47qUT3w
# 1lbU5ygt69OxtXXnHwZljZQp09nsad/ZkIdGAHvbREGJ3HxqV3rwN3mfXazL6IRk
# tFLydkf3YYMZ3V+0VAshaG43IbtArF+y3kp9zvU5EmfvDqVjbOSmxR3NNg1c1eYb
# qMFkdECnwHLFuk4fsbVYTXn+149zk6wsOeKlSNbwsDETqVcplicu9Yemj052FVUm
# cJgmf6AaRyBD40NjgHt1biclkJg6OBGz9vae5jtb7IHeIhTZgirHkr+g3uM+onP6
# 5x9abJTyUpURK1h0QCirc0PO30qhHGs4xSnzyqqWc0Jon7ZGs506o9UD4L/wojzK
# QtwYSH8UNM/STKvvmz3+DrhkKvp1KCRB7UK/BZxmSVJQ9FHzNklNiyDSLFc1eSuo
# 80VgvCONWPfcYd6T/jnA+bIwpUzX6ZhKWD7TA4j+s4/TXkt2ElGTyYwMO1uKIqjB
# Jgj5FBASA31fI7tk42PgpuE+9sJ0sj8eCXbsq11GdeJgo1gJASgADoRU7s7pXche
# MBK9Rp6103a50g5rmQzSM7TNsQIDAQABo4IBXTCCAVkwEgYDVR0TAQH/BAgwBgEB
# /wIBADAdBgNVHQ4EFgQUuhbZbU2FL3MpdpovdYxqII+eyG8wHwYDVR0jBBgwFoAU
# 7NfjgtJxXWRM3y5nP+e6mK4cD08wDgYDVR0PAQH/BAQDAgGGMBMGA1UdJQQMMAoG
# CCsGAQUFBwMIMHcGCCsGAQUFBwEBBGswaTAkBggrBgEFBQcwAYYYaHR0cDovL29j
# c3AuZGlnaWNlcnQuY29tMEEGCCsGAQUFBzAChjVodHRwOi8vY2FjZXJ0cy5kaWdp
# Y2VydC5jb20vRGlnaUNlcnRUcnVzdGVkUm9vdEc0LmNydDBDBgNVHR8EPDA6MDig
# NqA0hjJodHRwOi8vY3JsMy5kaWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkUm9v
# dEc0LmNybDAgBgNVHSAEGTAXMAgGBmeBDAEEAjALBglghkgBhv1sBwEwDQYJKoZI
# hvcNAQELBQADggIBAH1ZjsCTtm+YqUQiAX5m1tghQuGwGC4QTRPPMFPOvxj7x1Bd
# 4ksp+3CKDaopafxpwc8dB+k+YMjYC+VcW9dth/qEICU0MWfNthKWb8RQTGIdDAiC
# qBa9qVbPFXONASIlzpVpP0d3+3J0FNf/q0+KLHqrhc1DX+1gtqpPkWaeLJ7giqzl
# /Yy8ZCaHbJK9nXzQcAp876i8dU+6WvepELJd6f8oVInw1YpxdmXazPByoyP6wCeC
# RK6ZJxurJB4mwbfeKuv2nrF5mYGjVoarCkXJ38SNoOeY+/umnXKvxMfBwWpx2cYT
# gAnEtp/Nh4cku0+jSbl3ZpHxcpzpSwJSpzd+k1OsOx0ISQ+UzTl63f8lY5knLD0/
# a6fxZsNBzU+2QJshIUDQtxMkzdwdeDrknq3lNHGS1yZr5Dhzq6YBT70/O3itTK37
# xJV77QpfMzmHQXh6OOmc4d0j/R0o08f56PGYX/sr2H7yRp11LB4nLCbbbxV7HhmL
# NriT1ObyF5lZynDwN7+YAN8gFk8n+2BnFqFmut1VwDophrCYoCvtlUG3OtUVmDG0
# YgkPCr2B2RP+v6TR81fZvAT6gt4y3wSJ8ADNXcL50CN/AAvkdgIm2fBldkKmKYcJ
# RyvmfxqkhQ/8mJb2VVQrH4D6wPIOK+XW+6kvRBVK5xMOHds3OBqhK/bt1nz8MIIG
# sDCCBJigAwIBAgIQCK1AsmDSnEyfXs2pvZOu2TANBgkqhkiG9w0BAQwFADBiMQsw
# CQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3d3cu
# ZGlnaWNlcnQuY29tMSEwHwYDVQQDExhEaWdpQ2VydCBUcnVzdGVkIFJvb3QgRzQw
# HhcNMjEwNDI5MDAwMDAwWhcNMzYwNDI4MjM1OTU5WjBpMQswCQYDVQQGEwJVUzEX
# MBUGA1UEChMORGlnaUNlcnQsIEluYy4xQTA/BgNVBAMTOERpZ2lDZXJ0IFRydXN0
# ZWQgRzQgQ29kZSBTaWduaW5nIFJTQTQwOTYgU0hBMzg0IDIwMjEgQ0ExMIICIjAN
# BgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA1bQvQtAorXi3XdU5WRuxiEL1M4zr
# PYGXcMW7xIUmMJ+kjmjYXPXrNCQH4UtP03hD9BfXHtr50tVnGlJPDqFX/IiZwZHM
# gQM+TXAkZLON4gh9NH1MgFcSa0OamfLFOx/y78tHWhOmTLMBICXzENOLsvsI8Irg
# nQnAZaf6mIBJNYc9URnokCF4RS6hnyzhGMIazMXuk0lwQjKP+8bqHPNlaJGiTUyC
# EUhSaN4QvRRXXegYE2XFf7JPhSxIpFaENdb5LpyqABXRN/4aBpTCfMjqGzLmysL0
# p6MDDnSlrzm2q2AS4+jWufcx4dyt5Big2MEjR0ezoQ9uo6ttmAaDG7dqZy3SvUQa
# khCBj7A7CdfHmzJawv9qYFSLScGT7eG0XOBv6yb5jNWy+TgQ5urOkfW+0/tvk2E0
# XLyTRSiDNipmKF+wc86LJiUGsoPUXPYVGUztYuBeM/Lo6OwKp7ADK5GyNnm+960I
# HnWmZcy740hQ83eRGv7bUKJGyGFYmPV8AhY8gyitOYbs1LcNU9D4R+Z1MI3sMJN2
# FKZbS110YU0/EpF23r9Yy3IQKUHw1cVtJnZoEUETWJrcJisB9IlNWdt4z4FKPkBH
# X8mBUHOFECMhWWCKZFTBzCEa6DgZfGYczXg4RTCZT/9jT0y7qg0IU0F8WD1Hs/q2
# 7IwyCQLMbDwMVhECAwEAAaOCAVkwggFVMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYD
# VR0OBBYEFGg34Ou2O/hfEYb7/mF7CIhl9E5CMB8GA1UdIwQYMBaAFOzX44LScV1k
# TN8uZz/nupiuHA9PMA4GA1UdDwEB/wQEAwIBhjATBgNVHSUEDDAKBggrBgEFBQcD
# AzB3BggrBgEFBQcBAQRrMGkwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmRpZ2lj
# ZXJ0LmNvbTBBBggrBgEFBQcwAoY1aHR0cDovL2NhY2VydHMuZGlnaWNlcnQuY29t
# L0RpZ2lDZXJ0VHJ1c3RlZFJvb3RHNC5jcnQwQwYDVR0fBDwwOjA4oDagNIYyaHR0
# cDovL2NybDMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0VHJ1c3RlZFJvb3RHNC5jcmww
# HAYDVR0gBBUwEzAHBgVngQwBAzAIBgZngQwBBAEwDQYJKoZIhvcNAQEMBQADggIB
# ADojRD2NCHbuj7w6mdNW4AIapfhINPMstuZ0ZveUcrEAyq9sMCcTEp6QRJ9L/Z6j
# fCbVN7w6XUhtldU/SfQnuxaBRVD9nL22heB2fjdxyyL3WqqQz/WTauPrINHVUHmI
# moqKwba9oUgYftzYgBoRGRjNYZmBVvbJ43bnxOQbX0P4PpT/djk9ntSZz0rdKOtf
# JqGVWEjVGv7XJz/9kNF2ht0csGBc8w2o7uCJob054ThO2m67Np375SFTWsPK6Wrx
# oj7bQ7gzyE84FJKZ9d3OVG3ZXQIUH0AzfAPilbLCIXVzUstG2MQ0HKKlS43Nb3Y3
# LIU/Gs4m6Ri+kAewQ3+ViCCCcPDMyu/9KTVcH4k4Vfc3iosJocsL6TEa/y4ZXDlx
# 4b6cpwoG1iZnt5LmTl/eeqxJzy6kdJKt2zyknIYf48FWGysj/4+16oh7cGvmoLr9
# Oj9FpsToFpFSi0HASIRLlk2rREDjjfAVKM7t8RhWByovEMQMCGQ8M4+uKIw8y4+I
# Cw2/O/TOHnuO77Xry7fwdxPm5yg/rBKupS8ibEH5glwVZsxsDsrFhsP2JjMMB0ug
# 0wcCampAMEhLNKhRILutG4UI4lkNbcoFUCvqShyepf2gpx8GdOfy1lKQ/a+FSCH5
# Vzu0nAPthkX0tGFuv2jiJmCG6sivqf6UHedjGzqGVnhOMIIGwjCCBKqgAwIBAgIQ
# BUSv85SdCDmmv9s/X+VhFjANBgkqhkiG9w0BAQsFADBjMQswCQYDVQQGEwJVUzEX
# MBUGA1UEChMORGlnaUNlcnQsIEluYy4xOzA5BgNVBAMTMkRpZ2lDZXJ0IFRydXN0
# ZWQgRzQgUlNBNDA5NiBTSEEyNTYgVGltZVN0YW1waW5nIENBMB4XDTIzMDcxNDAw
# MDAwMFoXDTM0MTAxMzIzNTk1OVowSDELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDkRp
# Z2lDZXJ0LCBJbmMuMSAwHgYDVQQDExdEaWdpQ2VydCBUaW1lc3RhbXAgMjAyMzCC
# AiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAKNTRYcdg45brD5UsyPgz5/X
# 5dLnXaEOCdwvSKOXejsqnGfcYhVYwamTEafNqrJq3RApih5iY2nTWJw1cb86l+uU
# UI8cIOrHmjsvlmbjaedp/lvD1isgHMGXlLSlUIHyz8sHpjBoyoNC2vx/CSSUpIIa
# 2mq62DvKXd4ZGIX7ReoNYWyd/nFexAaaPPDFLnkPG2ZS48jWPl/aQ9OE9dDH9kgt
# XkV1lnX+3RChG4PBuOZSlbVH13gpOWvgeFmX40QrStWVzu8IF+qCZE3/I+PKhu60
# pCFkcOvV5aDaY7Mu6QXuqvYk9R28mxyyt1/f8O52fTGZZUdVnUokL6wrl76f5P17
# cz4y7lI0+9S769SgLDSb495uZBkHNwGRDxy1Uc2qTGaDiGhiu7xBG3gZbeTZD+BY
# QfvYsSzhUa+0rRUGFOpiCBPTaR58ZE2dD9/O0V6MqqtQFcmzyrzXxDtoRKOlO0L9
# c33u3Qr/eTQQfqZcClhMAD6FaXXHg2TWdc2PEnZWpST618RrIbroHzSYLzrqawGw
# 9/sqhux7UjipmAmhcbJsca8+uG+W1eEQE/5hRwqM/vC2x9XH3mwk8L9CgsqgcT2c
# kpMEtGlwJw1Pt7U20clfCKRwo+wK8REuZODLIivK8SgTIUlRfgZm0zu++uuRONhR
# B8qUt+JQofM604qDy0B7AgMBAAGjggGLMIIBhzAOBgNVHQ8BAf8EBAMCB4AwDAYD
# VR0TAQH/BAIwADAWBgNVHSUBAf8EDDAKBggrBgEFBQcDCDAgBgNVHSAEGTAXMAgG
# BmeBDAEEAjALBglghkgBhv1sBwEwHwYDVR0jBBgwFoAUuhbZbU2FL3MpdpovdYxq
# II+eyG8wHQYDVR0OBBYEFKW27xPn783QZKHVVqllMaPe1eNJMFoGA1UdHwRTMFEw
# T6BNoEuGSWh0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFRydXN0ZWRH
# NFJTQTQwOTZTSEEyNTZUaW1lU3RhbXBpbmdDQS5jcmwwgZAGCCsGAQUFBwEBBIGD
# MIGAMCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5kaWdpY2VydC5jb20wWAYIKwYB
# BQUHMAKGTGh0dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFRydXN0
# ZWRHNFJTQTQwOTZTSEEyNTZUaW1lU3RhbXBpbmdDQS5jcnQwDQYJKoZIhvcNAQEL
# BQADggIBAIEa1t6gqbWYF7xwjU+KPGic2CX/yyzkzepdIpLsjCICqbjPgKjZ5+PF
# 7SaCinEvGN1Ott5s1+FgnCvt7T1IjrhrunxdvcJhN2hJd6PrkKoS1yeF844ektrC
# QDifXcigLiV4JZ0qBXqEKZi2V3mP2yZWK7Dzp703DNiYdk9WuVLCtp04qYHnbUFc
# jGnRuSvExnvPnPp44pMadqJpddNQ5EQSviANnqlE0PjlSXcIWiHFtM+YlRpUurm8
# wWkZus8W8oM3NG6wQSbd3lqXTzON1I13fXVFoaVYJmoDRd7ZULVQjK9WvUzF4UbF
# KNOt50MAcN7MmJ4ZiQPq1JE3701S88lgIcRWR+3aEUuMMsOI5ljitts++V+wQtaP
# 4xeR0arAVeOGv6wnLEHQmjNKqDbUuXKWfpd5OEhfysLcPTLfddY2Z1qJ+Panx+VP
# NTwAvb6cKmx5AdzaROY63jg7B145WPR8czFVoIARyxQMfq68/qTreWWqaNYiyjvr
# moI1VygWy2nyMpqy0tg6uLFGhmu6F/3Ed2wVbK6rr3M66ElGt9V/zLY4wNjsHPW2
# obhDLN9OTH0eaHDAdwrUAuBcYLso/zjlUlrWrBciI0707NMX+1Br/wd3H3GXREHJ
# uEbTbDJ8WC9nR2XlG3O2mflrLAZG70Ee8PBf4NvZrZCARK+AEEGKMIIG7TCCBNWg
# AwIBAgIQBNI793flHTneCMtwLiiYFTANBgkqhkiG9w0BAQsFADBpMQswCQYDVQQG
# EwJVUzEXMBUGA1UEChMORGlnaUNlcnQsIEluYy4xQTA/BgNVBAMTOERpZ2lDZXJ0
# IFRydXN0ZWQgRzQgQ29kZSBTaWduaW5nIFJTQTQwOTYgU0hBMzg0IDIwMjEgQ0Ex
# MB4XDTI0MDUwOTAwMDAwMFoXDTI3MDUxMTIzNTk1OVowdTELMAkGA1UEBhMCVVMx
# DzANBgNVBAgTBkthbnNhczEPMA0GA1UEBxMGVG9wZWthMSEwHwYDVQQKExhDaG9j
# b2xhdGV5IFNvZnR3YXJlLCBJbmMxITAfBgNVBAMTGENob2NvbGF0ZXkgU29mdHdh
# cmUsIEluYzCCAaIwDQYJKoZIhvcNAQEBBQADggGPADCCAYoCggGBAPDJgdZWj0RV
# lBBBniCyGy19FB736U5AahB+dAw3nmafOEeG+syql0m9kzV0gu4bSd4Al587ioAG
# DUPAGhXf0R+y11cx7c1cgdyxvfBvfMEkgD7sOUeF9ggZJc0YZ4qc7Pa6qqMpHDru
# pjshvLmQMSLaGKF68m+w2mJiZkLMYBEotPiAC3+IzI1MQqidCfN6rfQUmtcKyrVz
# 2zCt8CvuR3pSyNCBcQgKZ/+NwBfDqPTt1wKq5JCIQiLnbDZwJ9F5433enzgUGQgh
# KRoIwfp/hap7t7lrNf859Xe1/zHT4qtNgzGqSdJ2Kbz1YAMFjZokYHv/sliyxJN9
# 7++0BApX2t45JsQaqyQ60TSKxqOH0JIIDeYgwxfJ8YFmuvt7T4zVM8u02Axp/1YV
# nKP2AOVca6FDe9EiccrexAWPGoP+WQi8WFQKrNVKr5XTLI0MNTjadOHfF0XUToyF
# H8FVnZZV1/F1kgd/bYbt/0M/QkS4FGmJoqT8dyRyMkTlTynKul4N3QIDAQABo4IC
# AzCCAf8wHwYDVR0jBBgwFoAUaDfg67Y7+F8Rhvv+YXsIiGX0TkIwHQYDVR0OBBYE
# FFpfZUilS5A+fjYV80ib5qKkBoczMD4GA1UdIAQ3MDUwMwYGZ4EMAQQBMCkwJwYI
# KwYBBQUHAgEWG2h0dHA6Ly93d3cuZGlnaWNlcnQuY29tL0NQUzAOBgNVHQ8BAf8E
# BAMCB4AwEwYDVR0lBAwwCgYIKwYBBQUHAwMwgbUGA1UdHwSBrTCBqjBToFGgT4ZN
# aHR0cDovL2NybDMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0VHJ1c3RlZEc0Q29kZVNp
# Z25pbmdSU0E0MDk2U0hBMzg0MjAyMUNBMS5jcmwwU6BRoE+GTWh0dHA6Ly9jcmw0
# LmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFRydXN0ZWRHNENvZGVTaWduaW5nUlNBNDA5
# NlNIQTM4NDIwMjFDQTEuY3JsMIGUBggrBgEFBQcBAQSBhzCBhDAkBggrBgEFBQcw
# AYYYaHR0cDovL29jc3AuZGlnaWNlcnQuY29tMFwGCCsGAQUFBzAChlBodHRwOi8v
# Y2FjZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkRzRDb2RlU2lnbmlu
# Z1JTQTQwOTZTSEEzODQyMDIxQ0ExLmNydDAJBgNVHRMEAjAAMA0GCSqGSIb3DQEB
# CwUAA4ICAQAW9ANNkR2cF6ulbM+/XUWeWqC7UTqtsRwj7WAo8XTr52JebRchTGDH
# BZP9sDRZsFt+lPcPvBrv41kWoaFBmebTaPMh6YDHaON+uc19CTWXsMh8eog0lzGU
# iA3mKdbVit0udrgNlBUqTIuvMlMFIARWSz90FMeQrCFokLmqoqjp7u0sVPM7ng6T
# 9D8ct/m5LSpIa5TJCjAfyfw75GK0wzTDdTi1MgiAIyX0EedMrEwXjOjSApQ+uhIW
# v/AHDf8ukJzDFTTeiUkYZ1w++z70QZkzLfQTi6eH9vqgyXWcnGCwOxKquqe8RSIe
# M3FdtLstn9nI8S4qeiKdmomG6FAZTzYiGULJdJGsLh6Uii56zZdq3bSre/yrfed4
# hf/0MqEtWSU7LpkWM8AApRkIKRBZIQ73/7WxwsF9kHoZxqoRMDGTzWt+S7/XrSOa
# QbKf0CxdxMPHKC2A1u3xGNDChtQEwpHxYXf/teD7GeFYFQJg/wn4dC72mZze97+c
# YcpmI4R13Q7owmRthK1hnuq4EOQIcoTPbQXiaRzULbYrcOnJi7EbXcqdeAAnZAyV
# b6zGqAaE9Sw4RYvkosL5IlBgrdIwSFJMbeirBoM2GukIHQ8UaEu3l1PoNQvVbqM1
# 8zHiN4WA4rp9G9wfcAlZWq9iKF34sA+Xu03qSVaKPKn6YJMl5PfUsDGCBdMwggXP
# AgEBMH0waTELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDkRpZ2lDZXJ0LCBJbmMuMUEw
# PwYDVQQDEzhEaWdpQ2VydCBUcnVzdGVkIEc0IENvZGUgU2lnbmluZyBSU0E0MDk2
# IFNIQTM4NCAyMDIxIENBMQIQBNI793flHTneCMtwLiiYFTANBglghkgBZQMEAgEF
# AKCBhDAYBgorBgEEAYI3AgEMMQowCKACgAChAoAAMBkGCSqGSIb3DQEJAzEMBgor
# BgEEAYI3AgEEMBwGCisGAQQBgjcCAQsxDjAMBgorBgEEAYI3AgEVMC8GCSqGSIb3
# DQEJBDEiBCBmCuIP/Ys57X3sOZpsPBpWLL9hV2DFR8cnBYOErtgaPDANBgkqhkiG
# 9w0BAQEFAASCAYDp71PKBPxViF8RFHYqexMt4VwmAo96ld0OzmNko1t8BFhmqgFF
# EQq9OtApTUyaY12/jNkJ+QBGhNJO+j+VDGYZ9dU5JvU6mEGVmTJjLbWuOcUdF4bK
# B1Z+Jp3nBA6eN/8yuL6nl6BPHtIL/gvE11tAD75ZOmE3aHtopOdF6Wlca2GyXGvR
# B32mcSYRRvE3uoJm8HqUBdjT34Rk+7+Dpy4sCeOOuLuPa6rXSuqzkNJA6sRyN+4R
# k1IaXNoZgj4JvtDPhSO9+Sczw5uw47SinylMdjrgrrBI+3KbaPP07XGI0lpF1cXr
# r2mvjObam3gFuCafC9TW+ZwUOfHvQ5HIJ+X2owDSY5B0xNul+Vyw3OLyXEs34T3p
# qde71JfGTs8CKR3Zm9tnr11O+7n0fuz0v9Sfd5d22mTLTSB9pH7kzEpJnptg9XIi
# ePwlg/tfiuUB9RP9XT4DvfwTm8Vplj4X4J9qE+OHiOn9R/0Jap0xFT/c3D3eTE7c
# cV+h0pc2mfQb/ZShggMgMIIDHAYJKoZIhvcNAQkGMYIDDTCCAwkCAQEwdzBjMQsw
# CQYDVQQGEwJVUzEXMBUGA1UEChMORGlnaUNlcnQsIEluYy4xOzA5BgNVBAMTMkRp
# Z2lDZXJ0IFRydXN0ZWQgRzQgUlNBNDA5NiBTSEEyNTYgVGltZVN0YW1waW5nIENB
# AhAFRK/zlJ0IOaa/2z9f5WEWMA0GCWCGSAFlAwQCAQUAoGkwGAYJKoZIhvcNAQkD
# MQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMjQwNTE2MTYxOTEyWjAvBgkq
# hkiG9w0BCQQxIgQgklVwD1qLHjNYHbAdm7FcthKndTh7nL50k8MF0lDN8QUwDQYJ
# KoZIhvcNAQEBBQAEggIACxXff2hqmMHR6jBVww/q3J9h/c1Cgm3s+itfdkQuXZ03
# H/U5VWxXJlPZonBu/9O0Bi/nivvCVFsxlU+9plpLD/jfaWLeIdkJez4+10osy47w
# d63QBjpPQTCD10b9U4+wlQQ9/JY6ZFr4Ivnt7ZHHvCrFL4R0mk2jtVcr9aPGbILd
# tmx13dWTFQVJZbX+25HbtshLjwJrx72Y2TuC5zDp3OkuY/5FJGNJ4bhL8x4aReho
# VcoiLyx6/L+wSfygagwqUEVZmAjrsmWtERgCe8JZfw/QUi0m9RmSW+544L3emVpi
# Ew/SJHu6s3sf5yMFcxvw1QtyDIOEzfR/rqZ+SzCACbihjFrXq+m2a2zBsHPirZUJ
# pq+hqiqtEerolnTnY5M6DcbyJaosK3UzMgqiERbkYZo2DUHk4GgheQqXRfOPX0a2
# t3toPDmnbUBHKaPUy129+votyI7nNmnCzwfYr0DeTeRpX9NYnDRqPN/DeWZPYAdR
# d/VPoBnc4Qbf43zi4lltVzg60iAaMbRp7GGZt6WT0IyEkNGB87dcOPEHOINQDHIq
# oIHYBBSKNbjgt6Jsn53j9gyEMMt8xWD6App5DpR6/JIRPZa1Sg63oXcmVQ9mj8kz
# xFmN10Idmc+tIJ6d+kbWL1IQ8RQiRT8okmn6dWXlrzCQvJk12uB9lw2xdflvcAk=
# SIG # End signature block
