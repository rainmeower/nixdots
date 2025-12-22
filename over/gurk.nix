(final: prev: {
  gurk-rs = prev.gurk-rs.overrideAttrs {
    prePatch = ''
      substituteInPlace src/ui/draw.rs --replace-fail \
      '.title("Channels")' \
      ""
      substituteInPlace src/ui/draw.rs --replace-fail \
      '.title("Messages")' \
      '.title("")'
      substituteInPlace src/ui/draw.rs --replace-fail \
      '"Messages".to_string()' \
      '"".to_string()'
      substituteInPlace src/ui/draw.rs --replace-fail \
      'format!("Messages {' \
      'format!("{'
      substituteInPlace src/ui/draw.rs --replace-fail \
      '=> "Input"' \
      '=> ""'

      # TODO change writing... to typing...
    '';
  };
})
