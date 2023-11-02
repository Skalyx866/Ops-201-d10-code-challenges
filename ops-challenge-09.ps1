Get-EventLog -LogName System -Before '11/1/2023 16:00:00' -After '11/2/2023 16:00:00' > Desktop/last_24.txt
#This command is looking at the event logs, looking under system, and then everything that has happened in a 24 hour period and putting it in a text file

Get-EventLog -LogName System -EntryType error > Desktop/errors.txt
#This command is going into the logs, looking under system, finding every error event and putting it in a text file

Get-EventLog -LogName System -InstanceId 16
#Going into the event log, looking under system, and pulling all events with ID 16

Get-EventLog -LogName system -Newest 20
#Going into the event log, looking under system, and grabbing the 20 most recent events

Get-EventLog -LogName System -Newest 500 | Format-Table -Wrap
#Going into the event log, looking under system, grabbing the most recent 500 events, then putting it into a format table allowing it to wrap