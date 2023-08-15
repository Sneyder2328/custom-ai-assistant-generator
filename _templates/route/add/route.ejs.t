---
to: src/routes/<%= h.inflection.pluralize(module) %>/<%= h.inflection.pluralize(module) %>.route.ts
inject: true
before: export default router
---
<%
const methodsNames = utils.getMethodsNames(methods)
const Module = h.inflection.capitalize(module)
const modules = h.inflection.pluralize(module)
%>
<% methodsNames.forEach((method, index)=>{ -%>
router.<%= methods.split(' ')[index] %>(
  '/<%= modules %>',
  authorizeMiddleware,
  validate<%= h.inflection.capitalize(method) %><%= Module %>,
  <%= method %><%= Module %>Controller
);

<% }) -%>