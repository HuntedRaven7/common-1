# Initialize Homebrew for interactive fish sessions.
# Same graceful-fallback pattern as starship.fish: no-op until brew exists,
# so the first sessions after enabling brew (or before it installs) stay clean.
if status is-interactive; and test -x /home/linuxbrew/.linuxbrew/bin/brew
    /home/linuxbrew/.linuxbrew/bin/brew shellenv | source
end
