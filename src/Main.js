

export const myLog = function(str){
  console.log(str);
  return () => str;
}