---
to: "<%= middlewareAnswer == 'y' ? `src/routes/${h.inflection.pluralize(module)}/${h.inflection.pluralize(module)}.middleware.ts` : null %>"
---
<%
const methodsNames = utils.getMethodsNames(methods)
const Module = h.inflection.capitalize(module)
const modules = h.inflection.pluralize(module)
%>
import { NextFunction, Request, Response } from "express";

export const <%= modules %>Middleware = async (req: Request, res: Response, next: NextFunction) => {
    
};