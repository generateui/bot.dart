part of bot;

void require(bool truth, [String message]) {
  if(!truth) {
    throw new Exception(message);
  }
}

void requireArgument(bool truth, String argName, [String message]) {
  _metaRequireArgumentNotNullOrEmpty(argName);
  if(!truth) {
    throw new DetailedArgumentError(argName, message);
  }
}

void requireArgumentNotNull(argument, String argName) {
  _metaRequireArgumentNotNullOrEmpty(argName);
  if(argument == null) {
    throw new NullArgumentError(argName);
  }
}

void requireArgumentNotNullOrEmpty(String argument, String argName) {
  _metaRequireArgumentNotNullOrEmpty(argName);
  if(argument == null) {
    throw new NullArgumentError(argName);
  }
  else if(argument.length == 0) {
    throw new DetailedArgumentError(argName, 'cannot be an empty string');
  }
}

void _metaRequireArgumentNotNullOrEmpty(String argName) {
  if(argName == null || argName.length == 0) {
    throw new InvalidOperationError("That's just sad. Give me a good argName");
  }
}
