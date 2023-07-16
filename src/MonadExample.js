
export const pureE = function (a) {
    return function () {
      return a;
    };
  };


  export const bindE = function (a) {
    return function (f) {
      return function () {
        return f(a())();
      };
    };
  };
  
  export const log = function(a) {
    return function(){
        console.log(a);
    }
  }