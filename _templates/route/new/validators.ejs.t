---
to: src/routes/<%= h.inflection.pluralize(module) %>/<%= h.inflection.pluralize(module) %>.validators.ts
---
<%
const methodsNames = utils.getMethodsNames(methods)
const Module = h.inflection.capitalize(module)
const modules = h.inflection.pluralize(module)
%>
import { body, param } from "express-validator";

<% methodsNames.forEach((method, index)=>{ -%>
export const validate<%= h.inflection.capitalize(method) %><%= Module %> = [
    
]
<% }) -%>
