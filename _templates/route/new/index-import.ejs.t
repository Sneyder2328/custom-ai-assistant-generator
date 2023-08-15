---
to: src/routes/index.ts
inject: true
after: from "express"
---
<%
const modules = h.inflection.pluralize(module)
%>
import <%= modules %>Router from "./<%= modules %>/<%= modules %>.route.js";