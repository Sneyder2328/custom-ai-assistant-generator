---
to: src/routes/<%= h.inflection.pluralize(module) %>/<%= h.inflection.pluralize(module) %>.services.ts
inject: true
append: true
---
<%
const methodsNames = utils.getMethodsNames(methods)
const Module = h.inflection.capitalize(module)
const modules = h.inflection.pluralize(module)
%>
<% methodsNames.forEach((method, index)=>{ -%>
export const <%= method%><%= Module %> = async () => {
   
}
<% }) -%>
