" Defines helpers to run shell commands in the current iTerm terminal.

" Don't try to load if we don't have Ruby support.
if !has("ruby")
  finish
endif

command! SpecFocused :ruby ITerm.spec_focused
command! SpecFile :ruby ITerm.spec_all
command! SpecLast :ruby ITerm.spec_last


ruby <<EOF

require 'pathname'

module ITerm

  def self.spec_file
    Pathname(VIM::Buffer.current.name)
  end


  def self.project_root
    `cd #{ spec_file.dirname } && git rev-parse --show-toplevel`.chomp
  end


  def self.spec_focused
    line_number = VIM::Buffer.current.line_number
    spec "#{spec_file}:#{line_number}"
  end


  def self.spec_all
    spec spec_file
  end


  def self.spec_last
    if @last_specced && !@last_specced.to_s.empty?
      spec @last_specced
    else
      VIM::message "no last spec"
    end
  end


  def self.spec(what)
    @last_specced = what
    exec("clear")
    exec("cd #{ project_root } && bundle exec rspec #{ what }")
  end


  def self.exec(command)
    osascript <<-EOF
      tell application "iTerm"
        try
          set mySession to the current session of the current terminal
        on error
          set myTerminal to (make new terminal)
          tell myTerminal
            launch session "Default"
            set mySession to the current session
          end tell
        end try
        tell mySession to write text "#{command}"
      end tell
    EOF
  end

private

  def self.osascript(script)
    system("osascript", "-e", script)
  end

end

EOF

