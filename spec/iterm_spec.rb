require File.expand_path('../spec_helper', __FILE__)

describe ItermAutomator::Iterm do
  before do
    @result = ItermAutomator::Iterm.new
  end

  describe '.new' do
  end

  describe '.open_window' do
    it 'opens a new window' do
      old_count = @result.iterm.terminals.count
      @result.open_window
      new_count = @result.iterm.terminals.count

      expect(old_count + 1).to equal(new_count)
    end
  end

  describe '.open_tab' do
    it 'opens a new tab' do
      old_count = @result.active_window.sessions.count
      @result.open_tab
      new_count = @result.active_window.sessions.count

      expect(old_count + 1).to equal(new_count)
    end
  end

  describe '.active_tab' do
    it 'returns current tab' do
      expect(@result.active_tab).to eq(@result.iterm.current_terminal.current_session)
    end
  end

  describe '.active_window' do
    it 'returns current window' do
      expect(@result.active_window).to eq(@result.iterm.current_terminal)
    end
  end

  describe '.iterm' do
    it 'returns current app instance' do
      expect(@result.iterm).to eq(Appscript.app('iTerm'))
    end
  end

  describe '.execute_command' do
    before(:each) do
      path = File.expand_path('../../tmp', __FILE__)
      @file_path = "#{path}/test.txt"
    end

    after(:each) do
      if File.file?(@file_path)
        FileUtils.rm(@file_path)
      end
    end

    it 'write text to session' do
      @result.execute_command("touch #{@file_path}")

      expect(File.file?(@file_path)).to be_true
    end
  end
end