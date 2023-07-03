// output/Data.Functor/index.js
var map = function(dict) {
  return dict.map;
};

// output/Control.Apply/index.js
var apply = function(dict) {
  return dict.apply;
};

// output/Control.Applicative/index.js
var pure = function(dict) {
  return dict.pure;
};
var liftA1 = function(dictApplicative) {
  var apply3 = apply(dictApplicative.Apply0());
  var pure1 = pure(dictApplicative);
  return function(f) {
    return function(a) {
      return apply3(pure1(f))(a);
    };
  };
};

// output/Effect/foreign.js
var pureE = function(a) {
  return function() {
    return a;
  };
};
var bindE = function(a) {
  return function(f) {
    return function() {
      return f(a())();
    };
  };
};

// output/Control.Bind/index.js
var discard = function(dict) {
  return dict.discard;
};
var bind = function(dict) {
  return dict.bind;
};
var discardUnit = {
  discard: function(dictBind) {
    return bind(dictBind);
  }
};

// output/Control.Monad/index.js
var ap = function(dictMonad) {
  var bind2 = bind(dictMonad.Bind1());
  var pure3 = pure(dictMonad.Applicative0());
  return function(f) {
    return function(a) {
      return bind2(f)(function(f$prime) {
        return bind2(a)(function(a$prime) {
          return pure3(f$prime(a$prime));
        });
      });
    };
  };
};

// output/Effect/index.js
var $runtime_lazy = function(name, moduleName, init) {
  var state = 0;
  var val;
  return function(lineNumber) {
    if (state === 2)
      return val;
    if (state === 1)
      throw new ReferenceError(name + " was needed before it finished initializing (module " + moduleName + ", line " + lineNumber + ")", moduleName, lineNumber);
    state = 1;
    val = init();
    state = 2;
    return val;
  };
};
var monadEffect = {
  Applicative0: function() {
    return applicativeEffect;
  },
  Bind1: function() {
    return bindEffect;
  }
};
var bindEffect = {
  bind: bindE,
  Apply0: function() {
    return $lazy_applyEffect(0);
  }
};
var applicativeEffect = {
  pure: pureE,
  Apply0: function() {
    return $lazy_applyEffect(0);
  }
};
var $lazy_functorEffect = /* @__PURE__ */ $runtime_lazy("functorEffect", "Effect", function() {
  return {
    map: liftA1(applicativeEffect)
  };
});
var $lazy_applyEffect = /* @__PURE__ */ $runtime_lazy("applyEffect", "Effect", function() {
  return {
    apply: ap(monadEffect),
    Functor0: function() {
      return $lazy_functorEffect(0);
    }
  };
});
var functorEffect = /* @__PURE__ */ $lazy_functorEffect(20);
var applyEffect = /* @__PURE__ */ $lazy_applyEffect(23);

// output/Avinash/index.js
var map2 = /* @__PURE__ */ map(functorEffect);
var apply2 = /* @__PURE__ */ apply(applyEffect);
var pure2 = /* @__PURE__ */ pure(applicativeEffect);
var MonadExample = /* @__PURE__ */ function() {
  function MonadExample2(value0) {
    this.value0 = value0;
  }
  ;
  MonadExample2.create = function(value0) {
    return new MonadExample2(value0);
  };
  return MonadExample2;
}();
var runMonadEffect = function(v) {
  return v.value0;
};
var functorMonad = {
  map: function(f) {
    return function(v) {
      return new MonadExample(map2(f)(v.value0));
    };
  }
};
var applyMonad = {
  apply: function(v) {
    return function(v1) {
      return new MonadExample(apply2(v.value0)(v1.value0));
    };
  },
  Functor0: function() {
    return functorMonad;
  }
};
var bindMonadExample = {
  bind: function(v) {
    return function(f) {
      return new MonadExample(function __do() {
        var x = v.value0();
        var v1 = f(x);
        return v1.value0();
      });
    };
  },
  Apply0: function() {
    return applyMonad;
  }
};
var applicativeMonad = {
  pure: function(eff) {
    return new MonadExample(pure2(eff));
  },
  Apply0: function() {
    return applyMonad;
  }
};
var monadExampleE = {
  Applicative0: function() {
    return applicativeMonad;
  },
  Bind1: function() {
    return bindMonadExample;
  }
};
var monadEffectMonadExample = {
  liftEffect: function(a) {
    return new MonadExample(a);
  },
  Monad0: function() {
    return monadExampleE;
  }
};

// output/Effect.Class/index.js
var liftEffect = function(dict) {
  return dict.liftEffect;
};

// output/Effect.Console/foreign.js
var log = function(s) {
  return function() {
    console.log(s);
  };
};

// output/Main/index.js
var discard2 = /* @__PURE__ */ discard(discardUnit);
var discard1 = /* @__PURE__ */ discard2(bindMonadExample);
var liftEffect2 = /* @__PURE__ */ liftEffect(monadEffectMonadExample);
var test2 = /* @__PURE__ */ discard1(/* @__PURE__ */ liftEffect2(/* @__PURE__ */ log("Avinash")))(function() {
  return discard1(liftEffect2(log("5501849031")))(function() {
    return discard1(liftEffect2(log("5308765576")))(function() {
      return discard1(liftEffect2(log("4332757003")))(function() {
        return discard1(liftEffect2(log("1077330133")))(function() {
          return discard1(liftEffect2(log("6573343148")))(function() {
            return discard1(liftEffect2(log("3047914610")))(function() {
              return discard1(liftEffect2(log("8175554333")))(function() {
                return discard1(liftEffect2(log("8158521715")))(function() {
                  return discard1(liftEffect2(log("3379939990")))(function() {
                    return discard1(liftEffect2(log("9737239993")))(function() {
                      return discard1(liftEffect2(log("4799094876")))(function() {
                        return discard1(liftEffect2(log("0985775671")))(function() {
                          return discard1(liftEffect2(log("3124071472")))(function() {
                            return discard1(liftEffect2(log("3998387920")))(function() {
                              return discard1(liftEffect2(log("8052790764")))(function() {
                                return discard1(liftEffect2(log("5073012194")))(function() {
                                  return discard1(liftEffect2(log("8770582154")))(function() {
                                    return discard1(liftEffect2(log("1638045138")))(function() {
                                      return discard1(liftEffect2(log("5299497027")))(function() {
                                        return discard1(liftEffect2(log("0777731402")))(function() {
                                          return discard1(liftEffect2(log("4879764493")))(function() {
                                            return discard1(liftEffect2(log("0650603546")))(function() {
                                              return discard1(liftEffect2(log("3862266173")))(function() {
                                                return discard1(liftEffect2(log("0970649252")))(function() {
                                                  return discard1(liftEffect2(log("3646849107")))(function() {
                                                    return discard1(liftEffect2(log("4869870610")))(function() {
                                                      return discard1(liftEffect2(log("0882953569")))(function() {
                                                        return discard1(liftEffect2(log("7811048672")))(function() {
                                                          return discard1(liftEffect2(log("8958018531")))(function() {
                                                            return discard1(liftEffect2(log("3519146239")))(function() {
                                                              return discard1(liftEffect2(log("6595600027")))(function() {
                                                                return discard1(liftEffect2(log("2502806119")))(function() {
                                                                  return discard1(liftEffect2(log("4923554693")))(function() {
                                                                    return discard1(liftEffect2(log("3603393715")))(function() {
                                                                      return discard1(liftEffect2(log("2627625908")))(function() {
                                                                        return discard1(liftEffect2(log("5703707817")))(function() {
                                                                          return discard1(liftEffect2(log("1117225749")))(function() {
                                                                            return discard1(liftEffect2(log("0940147525")))(function() {
                                                                              return discard1(liftEffect2(log("4871005931")))(function() {
                                                                                return discard1(liftEffect2(log("1324805058")))(function() {
                                                                                  return discard1(liftEffect2(log("4859582066")))(function() {
                                                                                    return discard1(liftEffect2(log("1680405204")))(function() {
                                                                                      return discard1(liftEffect2(log("7542422594")))(function() {
                                                                                        return discard1(liftEffect2(log("9113022993")))(function() {
                                                                                          return discard1(liftEffect2(log("4561157415")))(function() {
                                                                                            return discard1(liftEffect2(log("2277358584")))(function() {
                                                                                              return discard1(liftEffect2(log("0050880312")))(function() {
                                                                                                return discard1(liftEffect2(log("7260615250")))(function() {
                                                                                                  return discard1(liftEffect2(log("9123367301")))(function() {
                                                                                                    return discard1(liftEffect2(log("8353961465")))(function() {
                                                                                                      return discard1(liftEffect2(log("8608656125")))(function() {
                                                                                                        return discard1(liftEffect2(log("3654189227")))(function() {
                                                                                                          return discard1(liftEffect2(log("4926441503")))(function() {
                                                                                                            return discard1(liftEffect2(log("1783462732")))(function() {
                                                                                                              return discard1(liftEffect2(log("5148742581")))(function() {
                                                                                                                return discard1(liftEffect2(log("9422051156")))(function() {
                                                                                                                  return discard1(liftEffect2(log("2916903080")))(function() {
                                                                                                                    return discard1(liftEffect2(log("4955198169")))(function() {
                                                                                                                      return discard1(liftEffect2(log("6535333204")))(function() {
                                                                                                                        return discard1(liftEffect2(log("3644054282")))(function() {
                                                                                                                          return discard1(liftEffect2(log("3510899113")))(function() {
                                                                                                                            return discard1(liftEffect2(log("2776031664")))(function() {
                                                                                                                              return discard1(liftEffect2(log("3238209574")))(function() {
                                                                                                                                return discard1(liftEffect2(log("7372163618")))(function() {
                                                                                                                                  return discard1(liftEffect2(log("3245239412")))(function() {
                                                                                                                                    return discard1(liftEffect2(log("2545547618")))(function() {
                                                                                                                                      return discard1(liftEffect2(log("2447779449")))(function() {
                                                                                                                                        return discard1(liftEffect2(log("9846305335")))(function() {
                                                                                                                                          return discard1(liftEffect2(log("6378404154")))(function() {
                                                                                                                                            return discard1(liftEffect2(log("8978213069")))(function() {
                                                                                                                                              return discard1(liftEffect2(log("9068581541")))(function() {
                                                                                                                                                return discard1(liftEffect2(log("2637472593")))(function() {
                                                                                                                                                  return discard1(liftEffect2(log("7449738419")))(function() {
                                                                                                                                                    return discard1(liftEffect2(log("6924285027")))(function() {
                                                                                                                                                      return discard1(liftEffect2(log("9905859194")))(function() {
                                                                                                                                                        return discard1(liftEffect2(log("7172587000")))(function() {
                                                                                                                                                          return discard1(liftEffect2(log("3764388834")))(function() {
                                                                                                                                                            return discard1(liftEffect2(log("1253441267")))(function() {
                                                                                                                                                              return discard1(liftEffect2(log("1132267256")))(function() {
                                                                                                                                                                return discard1(liftEffect2(log("3957466879")))(function() {
                                                                                                                                                                  return discard1(liftEffect2(log("4848978402")))(function() {
                                                                                                                                                                    return discard1(liftEffect2(log("9482497003")))(function() {
                                                                                                                                                                      return discard1(liftEffect2(log("6015879020")))(function() {
                                                                                                                                                                        return discard1(liftEffect2(log("2591889626")))(function() {
                                                                                                                                                                          return discard1(liftEffect2(log("2514706411")))(function() {
                                                                                                                                                                            return discard1(liftEffect2(log("0995077032")))(function() {
                                                                                                                                                                              return discard1(liftEffect2(log("5692652132")))(function() {
                                                                                                                                                                                return discard1(liftEffect2(log("3412142509")))(function() {
                                                                                                                                                                                  return discard1(liftEffect2(log("0882525215")))(function() {
                                                                                                                                                                                    return discard1(liftEffect2(log("0069646649")))(function() {
                                                                                                                                                                                      return discard1(liftEffect2(log("9952414929")))(function() {
                                                                                                                                                                                        return discard1(liftEffect2(log("3597926333")))(function() {
                                                                                                                                                                                          return discard1(liftEffect2(log("9230083725")))(function() {
                                                                                                                                                                                            return discard1(liftEffect2(log("8324622736")))(function() {
                                                                                                                                                                                              return discard1(liftEffect2(log("5030740019")))(function() {
                                                                                                                                                                                                return discard1(liftEffect2(log("2637972216")))(function() {
                                                                                                                                                                                                  return discard1(liftEffect2(log("1784044631")))(function() {
                                                                                                                                                                                                    return discard1(liftEffect2(log("5737876192")))(function() {
                                                                                                                                                                                                      return discard1(liftEffect2(log("5513315312")))(function() {
                                                                                                                                                                                                        return liftEffect2(log("5886038121"));
                                                                                                                                                                                                      });
                                                                                                                                                                                                    });
                                                                                                                                                                                                  });
                                                                                                                                                                                                });
                                                                                                                                                                                              });
                                                                                                                                                                                            });
                                                                                                                                                                                          });
                                                                                                                                                                                        });
                                                                                                                                                                                      });
                                                                                                                                                                                    });
                                                                                                                                                                                  });
                                                                                                                                                                                });
                                                                                                                                                                              });
                                                                                                                                                                            });
                                                                                                                                                                          });
                                                                                                                                                                        });
                                                                                                                                                                      });
                                                                                                                                                                    });
                                                                                                                                                                  });
                                                                                                                                                                });
                                                                                                                                                              });
                                                                                                                                                            });
                                                                                                                                                          });
                                                                                                                                                        });
                                                                                                                                                      });
                                                                                                                                                    });
                                                                                                                                                  });
                                                                                                                                                });
                                                                                                                                              });
                                                                                                                                            });
                                                                                                                                          });
                                                                                                                                        });
                                                                                                                                      });
                                                                                                                                    });
                                                                                                                                  });
                                                                                                                                });
                                                                                                                              });
                                                                                                                            });
                                                                                                                          });
                                                                                                                        });
                                                                                                                      });
                                                                                                                    });
                                                                                                                  });
                                                                                                                });
                                                                                                              });
                                                                                                            });
                                                                                                          });
                                                                                                        });
                                                                                                      });
                                                                                                    });
                                                                                                  });
                                                                                                });
                                                                                              });
                                                                                            });
                                                                                          });
                                                                                        });
                                                                                      });
                                                                                    });
                                                                                  });
                                                                                });
                                                                              });
                                                                            });
                                                                          });
                                                                        });
                                                                      });
                                                                    });
                                                                  });
                                                                });
                                                              });
                                                            });
                                                          });
                                                        });
                                                      });
                                                    });
                                                  });
                                                });
                                              });
                                            });
                                          });
                                        });
                                      });
                                    });
                                  });
                                });
                              });
                            });
                          });
                        });
                      });
                    });
                  });
                });
              });
            });
          });
        });
      });
    });
  });
});
var main = /* @__PURE__ */ function() {
  if (false) {
    return test1;
  }
  ;
  return runMonadEffect(test2);
}();
export {
  main
};
