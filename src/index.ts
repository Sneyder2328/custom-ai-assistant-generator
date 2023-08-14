import { program } from "commander";
import enquirer from "enquirer";
import { runner, Logger } from "hygen"; // Make sure to refer to Hygen's documentation for proper import
import { resolve } from "path";
import { execSync } from "child_process";

const generateAction = (args) => {
  const logger = new Logger(console.log.bind(console));
  // NOTE: This is relative to dist, where the build result is.
  const templates = resolve(__dirname, "..", "_templates");
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

program.parse(process.argv);