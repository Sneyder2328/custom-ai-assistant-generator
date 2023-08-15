---
to: src/routes/<%= h.inflection.pluralize(module) %>/<%= h.inflection.pluralize(module) %>.controllers.ts
inject: true
append: true
---
<%
const methodsNames = utils.getMethodsNames(methods)
const Module = h.inflection.capitalize(module)
const modules = h.inflection.pluralize(module)
%>
<% methodsNames.forEach((method, index)=>{ -%>
export const <%= method%><%= Module %>Controller = createController(
  async (req: Request, res: Response) => {
    const result = await <%= method %><%= Module%>();
    res.status(200).json(result);
  }
);
<% }) -%>
