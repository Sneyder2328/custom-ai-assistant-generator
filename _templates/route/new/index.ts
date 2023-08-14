import utils from "../../../src/utils";

const promptDefinition = [
  {
    type: "input",
    name: "module",
    message: "What is the module name (use singular word)?",
  },
  {
    type: "input",
    name: "methods",
    message:
      "Indicate the http methods you want generated (choose any of: [get, post, put, patch (partial update), delete] separated by space):",
  },
  {
    type: "input",
    name: "middlewareAnswer",
    message: "Does this module have a middleware? (y/n)",
  },
];

export const prompt = ({ prompter }) => {
  return prompter.prompt(promptDefinition).then((args) => ({ ...args, utils }));
};
