export const hey = (message) => {
  const noWhitespace = message.replace(/\s/g, '')
  const punctuation = noWhitespace.slice(-1);
  const noPunctuation = message.replace(/[^A-Za-z]/g, "");
  const allCaps = message.replace(/[^A-Z]/g, "");

  const questionResponse = "Sure.";
  const yellResponse = "Whoa, chill out!";
  const yellQuestionResponse = "Calm down, I know what I'm doing!";
  const defaultResponse = "Whatever.";
  const blankResponse = "Fine. Be that way!";

  if (noWhitespace == "") return blankResponse;
  else if (allCaps == noPunctuation && allCaps != "") {
    if (punctuation == "?") return yellQuestionResponse;
    return yellResponse;
  }
  else if (punctuation == "?" && noWhitespace.slice(-1) == punctuation) return questionResponse;
  else return defaultResponse;
};
