const hasGetMethod = (methods: string) => {
  return methods.includes("get");
};

const hasPostMethod = (methods: string) => {
  return methods.includes("post");
};

const hasDeleteMethod = (methods: string) => {
  return methods.includes("delete");
};

const hasUpdateMethod = (methods: string) => {
  return methods.includes("put") || methods.includes("patch");
};

const getMethodsNames = (methods: string) => {
  const names = [];
  if (hasGetMethod(methods)) names.push("get");
  if (hasPostMethod(methods)) names.push("create");
  if (hasDeleteMethod(methods)) names.push("delete");
  if (methods.includes("put")) names.push("replace");
  if (methods.includes("patch")) names.push("update");
  return names;
};

export default {
  hasGetMethod,
  hasPostMethod,
  hasDeleteMethod,
  hasUpdateMethod,
  getMethodsNames,
};
