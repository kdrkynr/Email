$smtp = Read-Host "Enter the MTA Server"
$from = Read-Host "Enter Sender Mail Address"
$to = Read-Host "Enter Recipient Mail Address"
$subject = Read-Host "Enter Subject of Email"
$body = Read-Host "Enter the Body of Email"
$attachment = Read-Host "Enter the Attachment File Location"
$BCC = Read-Host "Enter the BCC Recipients"
$priority = Read-Host "Priority Level Low/Normal/High >"
$ReplyTo = Read-Host "Enter ReplyTo address if exists"
$credential = Read-Host "Enter the credential account"
$UseSSL = Read-Host "Type Yes to Use SSL Connection"
$port	= Read-Host "Enter Port Number (if required)"

$x = "Send-MailMessage -SmtpServer $smtp -From $from -To $to"

if ($subject -ne ""){
$x = "$x -subject $subject"}
if ($body -ne ""){
$x = "$x -body $body"}
if ($attachment -ne ""){
$x = "$x -attachment $attachment"}
if ($BCC -ne ""){
$x = "$x -bcc $BCC"}
if ($priority -ne ""){
$x = "$x -priority $priority"}
if ($ReplyTo -ne ""){
$x = "$x -replyto $ReplyTo"}
if ($credential -ne ""){
$x = "$x -credential $credential"}
if ($UseSSL -ne ""){
$x = "$x -UseSSL"}
if ($port -ne ""){
$x = "$x -port $port"}

Invoke-Expression $x
