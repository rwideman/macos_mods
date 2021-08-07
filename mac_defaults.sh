# Verify all Apple-provided software is current
softwareupdate -i -a

# Enable Auto Update
defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

# Enable Download new updates when available
defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticDownload -bool true

# Enable app update installs
defaults write /Library/Preferences/com.apple.commerce AutoUpdate -bool TRUE

# Enable system data files and security updates install
defaults write /Library/Preferences/com.apple.SoftwareUpdate ConfigDataInstall -bool true
defaults write /Library/Preferences/com.apple.SoftwareUpdate CriticalUpdateInstall -bool true

# Enable macOS update installs
defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticallyInstallMacOSUpdates -bool TRUE

# Enable Set time and date automatically
systemsetup -setnetworktimeserver time.apple.com
systemsetup -setusingnetworktime on

# Ensure time set is within appropriate limits
systemsetup -getnetworktimeserver

# Enable Gatekeeper
spctl --master-enable

# Enable Firewall
defaults write /Library/Preferences/com.apple.alf globalstate -int 2

# Enable Firewall Stealth Mode
/usr/libexec/ApplicationFirewall/socketfilterfw --setstealthmode on

# Enable Location Services
#launchctl load -w /System/Library/LaunchDaemons/com.apple.locationd.plist

# Disable sending diagnostic and usage data to Apple
defaults write /Library/Application\ Support/CrashReporter/DiagnosticMessagesHistory.plist AutoSubmit -bool false
chmod 644 /Library/Application\ Support/CrashReporter/DiagnosticMessagesHistory.plist
chgrp admin /Library/Application\ Support/CrashReporter/DiagnosticMessagesHistory.plist

# Limit Ad tracking and personalized Ads
defaults -currentHost write /Users/*/Library/Preferences/com.apple.Adlib.plist allowApplePersonalizedAdvertising -bool false

# Disable Siri Settings
defaults write com.apple.assistant.support.plist 'Assistant Enabled' -bool false
defaults write com.apple.Siri.plist LockscreenEnabled -bool false
defaults write com.apple.Siri.plist StatusMenuVisible -bool false
defaults write com.apple.Siri.plist VoiceTriggerUserEnabled -bool false
killall -HUP cfprefsd
killall SystemUIServer

# Ensure Firewall is configured to log
/usr/libexec/ApplicationFirewall/socketfilterfw --setloggingmode on

# Disable Bonjour advertising service
defaults write /Library/Preferences/com.apple.mDNSResponder.plist NoMulticastAdvertisements -bool true

# Enable "Show Wi-Fi status in menu bar"
#defaults -currentHost write com.apple.controlcenter.plist WiFi -int 18

# Reduce the sudo timeout period
#  ansible.builtin.lineinfile:
#    path: /etc/sudoers
#    regexp: 'Defaults timestamp_timeout='
#    line: "Defaults timestamp_timeout=0"
#    backup: yes
#    validate: /usr/sbin/visudo -cf %s

# Use a separate timestamp for each user/tty combo (1)
#  ansible.builtin.replace:
#    path: /etc/sudoers
#    regexp: "Defaults !tty_tickets"
#    replace: "Defaults"
#    backup: yes
#    validate: /usr/sbin/visudo -cf %s

# Use a separate timestamp for each user/tty combo (2)
#  ansible.builtin.replace:
#    path: /etc/sudoers
#    regexp: "(Defaults timestamp_type=)\\w+"
#    replace: "Defaults timestamp_type=tty"
#    backup: yes
#    validate: /usr/sbin/visudo -cf %s

# Do not enable the "root" account
#dscl . -create /Users/root UserShell /usr/bin/false

# Get automatic login status
#defaults read /Library/Preferences/com.apple.loginwindow autoLoginUser

# Require a password to wake the computer from sleep or screen saver
#defaults write /Users/*/Library/Preferences/com.apple.screensaver askForPassword -int 1

# Disable Hibernate
pmset -a hibernatemode 0
rm /var/vm/sleepimage
mkdir /var/vm/sleepimage
pmset -a standby 0
pmset -a autopoweroff 0

# Require an administrator password to access system-wide preferences
security authorizationdb read system.preferences > /tmp/system.preferences.plist
defaults write /tmp/system.preferences.plist shared -bool false
security authorizationdb write system.preferences < /tmp/system.preferences.plist
rm /tmp/system.preferences.plist

# Enable Sealed System Volume (SSV)
#echo "Run '/usr/bin/csrutil enable authenticated-root' from the Recovery OS" #Requires a reboot to take effect

# Enable Library Validation
#defaults write /Library/Preferences/com.apple.security.libraryvalidation.plist DisableLibraryValidation -bool false

# Disable guest account login
defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool false

# Disable "Allow guests to connect to shared folders"
defaults write /Library/Preferences/com.apple.AppleFileServer guestAccess -bool false
defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server AllowGuestAccess -bool false

# Remove Guest home folder
rm -R /Users/Guest

# Turn on filename extensions
defaults write /Users/$user/Library/Preferences/.GlobalPreferences.plist AppleShowAllExtensions -bool true

# Disable the automatic run of safe files in Safari
defaults write /Users/$user/Library/Containers/com.apple.Safari/Data/Library/Preferences/com.apple.Safari AutoOpenSafeDownloads -bool false


