#!/usr/bin/env node
import { program } from "commander";
import enquirer from "enquirer";
import changeCase from "change-case";
import inflection from "inflection";
import _ from "lodash";
import { runner, Logger } from "hygen"; // Make sure to refer to Hygen's documentation for proper import
import { resolve } from "path";
import { execSync } from "child_process";

const generateAction = (args) => {
  const logger = new Logger(console.log.bind(console));
  const templates = resolve(__dirname, ".", "_templates");
  runner(args, {
    templates,
    logger,
    cwd: process.cwd(),
    debug: !!process.env.DEBUG,
    exec: (command) => {
      logger.notice(`Run ${command}`);
      execSync(command);
    },
    // @ts-ignore
    createPrompter: () => enquirer,
  });
};

program
  .command("generate <args...>")
  .description("Generate code based on a specific template")
  .alias("gen")
  .action(generateAction);
//   .action(async (template) => {
//     console.log("template=", template);

//     // Prompt user for input using Enquirer
//     const response = await enquirer.prompt([
//       {
//         type: "input",
//         name: "name",
//         message: "Enter the name of the component:",
//       },
//     ]);
//     // Manipulate and transform strings using change-case, inflection, lodash
//     // @ts-ignore
//     const componentName = changeCase.pascalCase(response.name);
//     const pluralComponent = inflection.pluralize(componentName);
//     const lodashExample = _.camelCase(pluralComponent);
//     // Generate code using Hygen
//     // runner(['generator', template, '--name', lodashExample]);
//     console.log(`Generated code for ${componentName}!`);
//   });

program.parse(process.argv);