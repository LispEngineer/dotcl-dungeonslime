#!/usr/bin/bash
#
# Enable access for the game to run under the "dummy" account

# X-windows
xhost +si:localuser:dummy

# Sound
setfacl -m u:dummy:x /run/user/1000
setfacl -m u:dummy:x /run/user/1000/pulse
setfacl -m u:dummy:rw /run/user/1000/pulse/native
exit

# For the dummy account:
#export PULSE_SERVER=unix:/run/user/1000/pulse/native
#export DISPLAY=:0
#/tmp/bin/Debug/net10.0/arch-x64/DungeonSlime

cat >/dev/null <<EOF
To give the  dummy  user account access to the primary user's audio server (PipeWire/PulseAudio) for testing purposes, 
the  dummy  user must be granted permission to access the primary user's sound server socket.

Modern Linux distributions run the audio server as a user-level service (under the primary user's systemd user         
instance). Access can be shared by configuring file system ACLs (Access Control Lists) on the socket and setting the   
PULSE_SERVER  environment variable.

Here are the steps to accomplish this:

### Step 1: Grant access under the host account (e.g.,  dfields )

Run the following commands in the host terminal to allow the  dummy  user to search the run directory and read/write   
the PulseAudio socket:

1. Retrieve the host user's numeric UID:
  id -u
  (Assuming the returned UID is  1000  in the following steps; replace it if it differs.)
2. Grant search/execute permissions on the host user runtime directories:
  setfacl -m u:dummy:x /run/user/1000
  setfacl -m u:dummy:x /run/user/1000/pulse

3. Grant read/write permissions on the socket file itself:
  setfacl -m u:dummy:rw /run/user/1000/pulse/native

──────
### Step 2: Configure the environment under the  dummy  account

After switching to the  dummy  user, export the  PULSE_SERVER  variable pointing to the host user's socket before      
running the game:

  [dummy@AdmiralIXA ~]$ export PULSE_SERVER=unix:/run/user/1000/pulse/native
  [dummy@AdmiralIXA ~]$ /tmp/bin/Debug/net10.0/arch-x64/DungeonSlime

This routes all audio calls from the game running under the  dummy  account directly to the host's active audio server 
session, enabling full sound playback during multi-user testing.

---

To allow only the  dummy  user account to access the active X11 display session, the  xhost  command can be configured 
using a Server Interpret ( si ) local user rule.

Run this command from the primary user's terminal session:

  xhost +si:localuser:dummy

### How this works:

•  + : Adds a rule to the X server access control list (whereas  -  removes a rule).
•  si : Specifies a Server Interpret rule.
•  localuser : Limits the access rule to local user accounts on the same system.
•  dummy : Identifies the specific username being granted access.

This ensures that only the  dummy  user account is permitted to open windows on the current display, keeping the X     
session secure from other local users.


EOF