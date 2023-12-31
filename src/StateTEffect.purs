module StateTEffect where

import Prelude

import Control.Monad.State (StateT, get, lift)
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Class.Console (log)

type FlowST st a = StateT st Effect a


testEvalStateTEff :: FlowST {} Unit
testEvalStateTEff = do
  lift $ log "Avinash"
  lift $ log "5501849031"
  lift $ log "5308765576"
  t <- get
  lift $ log $ show t
  lift $ log "4332757003"
  lift $ log "1077330133"
  lift $ log "6573343148"
  lift $ log "3047914610"
  lift $ log "8175554333"
  lift $ log "8158521715"
  lift $ log "3379939990"
  lift $ log "9737239993"
  lift $ log "4799094876"
  lift $ log "0985775671"
  lift $ log "3124071472"
  lift $ log "3998387920"
  lift $ log "8052790764"
  lift $ log "5073012194"
  lift $ log "8770582154"
  lift $ log "1638045138"
  lift $ log "5299497027"
  lift $ log "0777731402"
  lift $ log "4879764493"
  lift $ log "0650603546"
  lift $ log "3862266173"
  lift $ log "0970649252"
  lift $ log "3646849107"
  lift $ log "4869870610"
  lift $ log "0882953569"
  lift $ log "7811048672"
  lift $ log "8958018531"
  lift $ log "3519146239"
  lift $ log "6595600027"
  lift $ log "2502806119"
  lift $ log "4923554693"
  lift $ log "3603393715"
  lift $ log "2627625908"
  lift $ log "5703707817"
  lift $ log "1117225749"
  lift $ log "0940147525"
  lift $ log "4871005931"
  lift $ log "1324805058"
  lift $ log "4859582066"
  lift $ log "1680405204"
  lift $ log "7542422594"
  lift $ log "9113022993"
  lift $ log "4561157415"
  lift $ log "2277358584"
  lift $ log "0050880312"
  lift $ log "7260615250"
  lift $ log "9123367301"
  lift $ log "8353961465"
  lift $ log "8608656125"
  lift $ log "3654189227"
  lift $ log "4926441503"
  lift $ log "1783462732"
  lift $ log "5148742581"
  lift $ log "9422051156"
  lift $ log "2916903080"
  lift $ log "4955198169"
  lift $ log "6535333204"
  lift $ log "3644054282"
  lift $ log "3510899113"
  lift $ log "2776031664"
  lift $ log "3238209574"
  lift $ log "7372163618"
  lift $ log "3245239412"
  lift $ log "2545547618"
  lift $ log "2447779449"
  lift $ log "9846305335"
  lift $ log "6378404154"
  lift $ log "8978213069"
  lift $ log "9068581541"
  lift $ log "2637472593"
  lift $ log "7449738419"
  lift $ log "6924285027"
  lift $ log "9905859194"
  lift $ log "7172587000"
  lift $ log "3764388834"
  lift $ log "1253441267"
  lift $ log "1132267256"
  lift $ log "3957466879"
  lift $ log "4848978402"
  lift $ log "9482497003"
  lift $ log "6015879020"
  lift $ log "2591889626"
  lift $ log "2514706411"
  lift $ log "0995077032"
  lift $ log "5692652132"
  lift $ log "3412142509"
  lift $ log "0882525215"
  lift $ log "0069646649"
  lift $ log "9952414929"
  lift $ log "3597926333"
  lift $ log "9230083725"
  lift $ log "8324622736"
  lift $ log "5030740019"
  lift $ log "2637972216"
  lift $ log "1784044631"
  lift $ log "5737876192"
  lift $ log "5513315312"
  lift $ log "5886038121"
  lift $ log "Avinash"
  lift $ log "5501849031"
  lift $ log "5308765576"
  lift $ log "4332757003"
  lift $ log "1077330133"
  lift $ log "6573343148"
  lift $ log "3047914610"
  lift $ log "8175554333"
  lift $ log "8158521715"
  lift $ log "3379939990"
  lift $ log "9737239993"
  lift $ log "4799094876"
  lift $ log "0985775671"
  lift $ log "3124071472"
  lift $ log "3998387920"
  lift $ log "8052790764"
  lift $ log "5073012194"
  lift $ log "8770582154"
  lift $ log "1638045138"
  lift $ log "5299497027"
  lift $ log "0777731402"
  lift $ log "4879764493"
  lift $ log "0650603546"
  lift $ log "3862266173"
  lift $ log "0970649252"
  lift $ log "3646849107"
  lift $ log "4869870610"
  lift $ log "0882953569"
  lift $ log "7811048672"
  lift $ log "8958018531"
  lift $ log "3519146239"
  lift $ log "6595600027"
  lift $ log "2502806119"
  lift $ log "4923554693"
  lift $ log "3603393715"
  lift $ log "2627625908"
  lift $ log "5703707817"
  lift $ log "1117225749"
  lift $ log "0940147525"
  lift $ log "4871005931"
  lift $ log "1324805058"
  lift $ log "4859582066"
  lift $ log "1680405204"
  lift $ log "7542422594"
  lift $ log "9113022993"
  lift $ log "4561157415"
  lift $ log "2277358584"
  lift $ log "0050880312"
  lift $ log "7260615250"
  lift $ log "9123367301"
  lift $ log "8353961465"
  lift $ log "8608656125"
  lift $ log "3654189227"
  lift $ log "4926441503"
  lift $ log "1783462732"
  lift $ log "5148742581"
  lift $ log "9422051156"
  lift $ log "2916903080"
  lift $ log "4955198169"
  lift $ log "6535333204"
  lift $ log "3644054282"
  lift $ log "3510899113"
  lift $ log "2776031664"
  lift $ log "3238209574"
  lift $ log "7372163618"
  lift $ log "3245239412"
  lift $ log "2545547618"
  lift $ log "2447779449"
  lift $ log "9846305335"
  lift $ log "6378404154"
  lift $ log "8978213069"
  lift $ log "9068581541"
  lift $ log "2637472593"
  lift $ log "7449738419"
  lift $ log "6924285027"
  lift $ log "9905859194"
  lift $ log "7172587000"
  lift $ log "3764388834"
  lift $ log "1253441267"
  lift $ log "1132267256"
  lift $ log "3957466879"
  lift $ log "4848978402"
  lift $ log "9482497003"
  lift $ log "6015879020"
  lift $ log "2591889626"
  lift $ log "2514706411"
  lift $ log "0995077032"
  lift $ log "5692652132"
  lift $ log "3412142509"
  lift $ log "0882525215"
  lift $ log "0069646649"
  lift $ log "9952414929"
  lift $ log "3597926333"
  lift $ log "9230083725"
  lift $ log "8324622736"
  lift $ log "5030740019"
  lift $ log "2637972216"
  lift $ log "1784044631"
  lift $ log "5737876192"
  lift $ log "5513315312"
  lift $ log "5886038121"
  lift $ log "Avinash"
  lift $ log "5501849031"
  lift $ log "5308765576"
  lift $ log "4332757003"
  lift $ log "1077330133"
  lift $ log "6573343148"
  lift $ log "3047914610"
  lift $ log "8175554333"
  lift $ log "8158521715"
  lift $ log "3379939990"
  lift $ log "9737239993"
  lift $ log "4799094876"
  lift $ log "0985775671"
  lift $ log "3124071472"
  lift $ log "3998387920"
  lift $ log "8052790764"
  lift $ log "5073012194"
  lift $ log "8770582154"
  lift $ log "1638045138"
  lift $ log "5299497027"
  lift $ log "0777731402"
  lift $ log "4879764493"
  lift $ log "0650603546"
  lift $ log "3862266173"
  lift $ log "0970649252"
  lift $ log "3646849107"
  lift $ log "4869870610"
  lift $ log "0882953569"
  lift $ log "7811048672"
  lift $ log "8958018531"
  lift $ log "3519146239"
  lift $ log "6595600027"
  lift $ log "2502806119"
  lift $ log "4923554693"
  lift $ log "3603393715"
  lift $ log "2627625908"
  lift $ log "5703707817"
  lift $ log "1117225749"
  lift $ log "0940147525"
  lift $ log "4871005931"
  lift $ log "1324805058"
  lift $ log "4859582066"
  lift $ log "1680405204"
  lift $ log "7542422594"
  lift $ log "9113022993"
  lift $ log "4561157415"
  lift $ log "2277358584"
  lift $ log "0050880312"
  lift $ log "7260615250"
  lift $ log "9123367301"
  lift $ log "8353961465"
  lift $ log "8608656125"
  lift $ log "3654189227"
  lift $ log "4926441503"
  lift $ log "1783462732"
  lift $ log "5148742581"
  lift $ log "9422051156"
  lift $ log "2916903080"
  lift $ log "4955198169"
  lift $ log "6535333204"
  lift $ log "3644054282"
  lift $ log "3510899113"
  lift $ log "2776031664"
  lift $ log "3238209574"
  lift $ log "7372163618"
  lift $ log "3245239412"
  lift $ log "2545547618"
  lift $ log "2447779449"
  lift $ log "9846305335"
  lift $ log "6378404154"
  lift $ log "8978213069"
  lift $ log "9068581541"
  lift $ log "2637472593"
  lift $ log "7449738419"
  lift $ log "6924285027"
  lift $ log "9905859194"
  lift $ log "7172587000"
  lift $ log "3764388834"
  lift $ log "1253441267"
  lift $ log "1132267256"
  lift $ log "3957466879"
  lift $ log "4848978402"
  lift $ log "9482497003"
  lift $ log "6015879020"
  lift $ log "2591889626"
  lift $ log "2514706411"
  lift $ log "0995077032"
  lift $ log "5692652132"
  lift $ log "3412142509"
  lift $ log "0882525215"
  lift $ log "0069646649"
  lift $ log "9952414929"
  lift $ log "3597926333"
  lift $ log "9230083725"
  lift $ log "8324622736"
  lift $ log "5030740019"
  lift $ log "2637972216"
  lift $ log "1784044631"
  lift $ log "5737876192"
  lift $ log "5513315312"
  lift $ log "5886038121"
  lift $ log "Avinash"
  lift $ log "5501849031"
  lift $ log "5308765576"
  lift $ log "4332757003"
  lift $ log "1077330133"
  lift $ log "6573343148"
  lift $ log "3047914610"
  lift $ log "8175554333"
  lift $ log "8158521715"
  lift $ log "3379939990"
  lift $ log "9737239993"
  lift $ log "4799094876"
  lift $ log "0985775671"
  lift $ log "3124071472"
  lift $ log "3998387920"
  lift $ log "8052790764"
  lift $ log "5073012194"
  lift $ log "8770582154"
  lift $ log "1638045138"
  lift $ log "5299497027"
  lift $ log "0777731402"
  lift $ log "4879764493"
  lift $ log "0650603546"
  lift $ log "3862266173"
  lift $ log "0970649252"
  lift $ log "3646849107"
  lift $ log "4869870610"
  lift $ log "0882953569"
  lift $ log "7811048672"
  lift $ log "8958018531"
  lift $ log "3519146239"
  lift $ log "6595600027"
  lift $ log "2502806119"
  lift $ log "4923554693"
  lift $ log "3603393715"
  lift $ log "2627625908"
  lift $ log "5703707817"
  lift $ log "1117225749"
  lift $ log "0940147525"
  lift $ log "4871005931"
  lift $ log "1324805058"
  lift $ log "4859582066"
  lift $ log "1680405204"
  lift $ log "7542422594"
  lift $ log "9113022993"
  lift $ log "4561157415"
  lift $ log "2277358584"
  lift $ log "0050880312"
  lift $ log "7260615250"
  lift $ log "9123367301"
  lift $ log "8353961465"
  lift $ log "8608656125"
  lift $ log "3654189227"
  lift $ log "4926441503"
  lift $ log "1783462732"
  lift $ log "5148742581"
  lift $ log "9422051156"
  lift $ log "2916903080"
  lift $ log "4955198169"
  lift $ log "6535333204"
  lift $ log "3644054282"
  lift $ log "3510899113"
  lift $ log "2776031664"
  lift $ log "3238209574"
  lift $ log "7372163618"
  lift $ log "3245239412"
  lift $ log "2545547618"
  lift $ log "2447779449"
  lift $ log "9846305335"
  lift $ log "6378404154"
  lift $ log "8978213069"
  lift $ log "9068581541"
  lift $ log "2637472593"
  lift $ log "7449738419"
  lift $ log "6924285027"
  lift $ log "9905859194"
  lift $ log "7172587000"
  lift $ log "3764388834"
  lift $ log "1253441267"
  lift $ log "1132267256"
  lift $ log "3957466879"
  lift $ log "4848978402"
  lift $ log "9482497003"
  lift $ log "6015879020"
  lift $ log "2591889626"
  lift $ log "2514706411"
  lift $ log "0995077032"
  lift $ log "5692652132"
  lift $ log "3412142509"
  lift $ log "0882525215"
  lift $ log "0069646649"
  lift $ log "9952414929"
  lift $ log "3597926333"
  lift $ log "9230083725"
  lift $ log "8324622736"
  lift $ log "5030740019"
  lift $ log "2637972216"
  lift $ log "1784044631"
  lift $ log "5737876192"
  lift $ log "5513315312"
  lift $ log "5886038121"
  lift $ log "Avinash"
  lift $ log "5501849031"
  lift $ log "5308765576"
  lift $ log "4332757003"
  lift $ log "1077330133"
  lift $ log "6573343148"
  lift $ log "3047914610"
  lift $ log "8175554333"
  lift $ log "8158521715"
  lift $ log "3379939990"
  lift $ log "9737239993"
  lift $ log "4799094876"
  lift $ log "0985775671"
  lift $ log "3124071472"
  lift $ log "3998387920"
  lift $ log "8052790764"
  lift $ log "5073012194"
  lift $ log "8770582154"
  lift $ log "1638045138"
  lift $ log "5299497027"
  lift $ log "0777731402"
  lift $ log "4879764493"
  lift $ log "0650603546"
  lift $ log "3862266173"
  lift $ log "0970649252"
  lift $ log "3646849107"
  lift $ log "4869870610"
  lift $ log "0882953569"
  lift $ log "7811048672"
  lift $ log "8958018531"
  lift $ log "3519146239"
  lift $ log "6595600027"
  lift $ log "2502806119"
  lift $ log "4923554693"
  lift $ log "3603393715"
  lift $ log "2627625908"
  lift $ log "5703707817"
  lift $ log "1117225749"
  lift $ log "0940147525"
  lift $ log "4871005931"
  lift $ log "1324805058"
  lift $ log "4859582066"
  lift $ log "1680405204"
  lift $ log "7542422594"
  lift $ log "9113022993"
  lift $ log "4561157415"
  lift $ log "2277358584"
  lift $ log "0050880312"
  lift $ log "7260615250"
  lift $ log "9123367301"
  lift $ log "8353961465"
  lift $ log "8608656125"
  lift $ log "3654189227"
  lift $ log "4926441503"
  lift $ log "1783462732"
  lift $ log "5148742581"
  lift $ log "9422051156"
  lift $ log "2916903080"
  lift $ log "4955198169"
  lift $ log "6535333204"
  lift $ log "3644054282"
  lift $ log "3510899113"
  lift $ log "2776031664"
  lift $ log "3238209574"
  lift $ log "7372163618"
  lift $ log "3245239412"
  lift $ log "2545547618"
  lift $ log "2447779449"
  lift $ log "9846305335"
  lift $ log "6378404154"
  lift $ log "8978213069"
  lift $ log "9068581541"
  lift $ log "2637472593"
  lift $ log "7449738419"
  lift $ log "6924285027"
  lift $ log "9905859194"
  lift $ log "7172587000"
  lift $ log "3764388834"
  lift $ log "1253441267"
  lift $ log "1132267256"
  lift $ log "3957466879"
  lift $ log "4848978402"
  lift $ log "9482497003"
  lift $ log "6015879020"
  lift $ log "2591889626"
  lift $ log "2514706411"
  lift $ log "0995077032"
  lift $ log "5692652132"
  lift $ log "3412142509"
  lift $ log "0882525215"
  lift $ log "0069646649"
  lift $ log "9952414929"
  lift $ log "3597926333"
  lift $ log "9230083725"
  lift $ log "8324622736"
  lift $ log "5030740019"
  lift $ log "2637972216"
  lift $ log "1784044631"
  lift $ log "5737876192"
  lift $ log "5513315312"
  lift $ log "5886038121"