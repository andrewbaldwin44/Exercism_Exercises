export const hey = (message) => {
  const FORCEFUL_QUESTION = /^(?<=\b)[^a-z0-9]+\?$/
  const REGULAR_QUESTION = /\?$/
  const YELLING = /^[^a-z]+(?<!\d)$/
  const SILENCE = /^\s*$/

  message = message.trim();

  if (message.match(FORCEFUL_QUESTION)) return "Calm down, I know what I'm doing!"
  else if (message.match(REGULAR_QUESTION)) return "Sure."
  else if (message.match(YELLING)) return "Whoa, chill out!"
  else if (message.match(SILENCE)) return "Fine. Be that way!"
  else return "Whatever."
};
