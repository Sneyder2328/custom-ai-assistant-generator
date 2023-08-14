---
to: src/routes/<%= h.inflection.pluralize(module) %>/<%= h.inflection.pluralize(module) %>.controllers.ts
---
<%
const methodsNames = utils.getMethodsNames(methods)
const Module = h.inflection.capitalize(module)
const modules = h.inflection.pluralize(module)
%>
import { Request, Response } from "express";
import { createController } from "../../utils/controllers/createController.js";

import {
  <% methodsNames.forEach((method, index)=>{ -%>
    <%= method %><%= Module %>,
  <% }) -%>
} from "./<%= modules %>.services.js";


<% methodsNames.forEach((method, index)=>{ -%>
export const <%= method%><%= Module %>Controller = createController(
async (req: Request, res: Response) => {
  const result = await <%= method %><%= Module%>();
  res.status(200).json(result);
}
);
<% }) -%>
