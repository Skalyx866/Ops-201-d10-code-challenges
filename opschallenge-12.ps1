$path = "C:\Users\CodyR\Documents\network-report.txt"
#setting a variable to set the path to the textfile network-report.txt

function get-ipv4 {Select-String -Path $path -Pattern "ipv4"}
#creating a function using the select screen and using the path variable to set the path to the network-report.txt and using select-string to grabe the line that says ipv4
get-ipv4