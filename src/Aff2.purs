module Data.Aff2 where

import Prelude

import Effect (Effect)
import Effect.Class.Console (log)
import Effect.Uncurried (EffectFn1, mkEffectFn1, runEffectFn1)
import Unsafe.Coerce (unsafeCoerce)

foreign import data Aff :: Type -> Type
type role Aff representational

type AffImpl a = EffectFn1 (EffectFn1 a Unit) Unit

makeAff :: forall a. AffImpl a -> Aff a
makeAff = unsafeCoerce

-- Change to some kind of fiber
launchAffImpl :: forall a. AffImpl a -> Effect Unit
launchAffImpl affFn = runEffectFn1 affFn $ mkEffectFn1 (const $ pure unit)

launchAff :: forall a. Aff a -> Effect Unit
launchAff = unsafeCoerce launchAffImpl

liftEffectImpl :: forall a. Effect a -> AffImpl a
liftEffectImpl eff = mkEffectFn1 \cb -> do
    res <- eff
    runEffectFn1 cb res

liftEffect :: forall a. Effect a -> Aff a
liftEffect = unsafeCoerce liftEffectImpl

mapAff :: forall a b. (a -> b) -> AffImpl a -> AffImpl b
mapAff fn affFn = mkEffectFn1 \cbb -> do
  let cb = mkEffectFn1 (\a -> runEffectFn1 cbb $ fn a)
  runEffectFn1 affFn cb
  
applyAff :: forall a b. AffImpl (a -> b) -> AffImpl a -> AffImpl b
applyAff affFnW affFn = mkEffectFn1 \cbb -> do
  let cb = mkEffectFn1 $ \a -> do
        let cbi = mkEffectFn1 \fn ->
              runEffectFn1 cbb $ fn a
        runEffectFn1 affFnW cbi
  runEffectFn1 affFn cb

pureAff :: forall a. a -> AffImpl a
pureAff a = mkEffectFn1 \cb -> runEffectFn1 cb a

bindAff :: forall a b. AffImpl a -> (a -> AffImpl b) -> AffImpl b
bindAff affFn bindFn = mkEffectFn1 \cbb -> do
  let cb = mkEffectFn1 \a -> runEffectFn1 (bindFn a) cbb
  runEffectFn1 affFn cb

instance functorAff :: Functor Aff where
  map = unsafeCoerce mapAff

instance applyAffInst :: Apply Aff where
  apply = unsafeCoerce applyAff

instance applicativeAff :: Applicative Aff where
  pure = unsafeCoerce pureAff

instance bindAffInst :: Bind Aff where
  bind = unsafeCoerce bindAff

instance monadAff :: Monad Aff


test = launchAff testAffCB


testAffCB ∷ Aff Unit
testAffCB = do
  liftEffect $ log "1"
  liftEffect $ log "2"
  liftEffect $ log "3"
  liftEffect $ log "4"
  liftEffect $ log "5"
  liftEffect $ log "6"
  liftEffect $ log "7"
  liftEffect $ log "8"
  liftEffect $ log "9"
  liftEffect $ log "10"
  liftEffect $ log "11"
  liftEffect $ log "12"
  liftEffect $ log "13"
  liftEffect $ log "14"
  liftEffect $ log "15"
  liftEffect $ log "16"
  liftEffect $ log "17"
  liftEffect $ log "18"
  liftEffect $ log "19"
  liftEffect $ log "20"
  liftEffect $ log "21"
  liftEffect $ log "22"
  liftEffect $ log "23"
  liftEffect $ log "24"
  liftEffect $ log "25"
  liftEffect $ log "26"
  liftEffect $ log "27"
  liftEffect $ log "28"
  liftEffect $ log "29"
  liftEffect $ log "30"
  liftEffect $ log "31"
  liftEffect $ log "32"
  liftEffect $ log "33"
  liftEffect $ log "34"
  liftEffect $ log "35"
  liftEffect $ log "36"
  liftEffect $ log "37"
  liftEffect $ log "38"
  liftEffect $ log "39"
  liftEffect $ log "40"
  liftEffect $ log "41"
  liftEffect $ log "42"
  liftEffect $ log "43"
  liftEffect $ log "44"
  liftEffect $ log "45"
  liftEffect $ log "46"
  liftEffect $ log "47"
  liftEffect $ log "48"
  liftEffect $ log "49"
  liftEffect $ log "50"
  liftEffect $ log "51"
  liftEffect $ log "52"
  liftEffect $ log "53"
  liftEffect $ log "54"
  liftEffect $ log "55"
  liftEffect $ log "56"
  liftEffect $ log "57"
  liftEffect $ log "58"
  liftEffect $ log "59"
  liftEffect $ log "60"
  liftEffect $ log "61"
  liftEffect $ log "62"
  liftEffect $ log "63"
  liftEffect $ log "64"
  liftEffect $ log "65"
  liftEffect $ log "66"
  liftEffect $ log "67"
  liftEffect $ log "68"
  liftEffect $ log "69"
  liftEffect $ log "70"
  liftEffect $ log "71"
  liftEffect $ log "72"
  liftEffect $ log "73"
  liftEffect $ log "74"
  liftEffect $ log "75"
  liftEffect $ log "76"
  liftEffect $ log "77"
  liftEffect $ log "78"
  liftEffect $ log "79"
  liftEffect $ log "80"
  liftEffect $ log "81"
  liftEffect $ log "82"
  liftEffect $ log "83"
  liftEffect $ log "84"
  liftEffect $ log "85"
  liftEffect $ log "86"
  liftEffect $ log "87"
  liftEffect $ log "88"
  liftEffect $ log "89"
  liftEffect $ log "90"
  liftEffect $ log "91"
  liftEffect $ log "92"
  liftEffect $ log "93"
  liftEffect $ log "94"
  liftEffect $ log "95"
  liftEffect $ log "96"
  liftEffect $ log "97"
  liftEffect $ log "98"
  liftEffect $ log "99"
  liftEffect $ log "100"
  liftEffect $ log "101"
  liftEffect $ log "102"
  liftEffect $ log "103"
  liftEffect $ log "104"
  liftEffect $ log "105"
  liftEffect $ log "106"
  liftEffect $ log "107"
  liftEffect $ log "108"
  liftEffect $ log "109"
  liftEffect $ log "110"
  liftEffect $ log "111"
  liftEffect $ log "112"
  liftEffect $ log "113"
  liftEffect $ log "114"
  liftEffect $ log "115"
  liftEffect $ log "116"
  liftEffect $ log "117"
  liftEffect $ log "118"
  liftEffect $ log "119"
  liftEffect $ log "120"
  liftEffect $ log "121"
  liftEffect $ log "122"
  liftEffect $ log "123"
  liftEffect $ log "124"
  liftEffect $ log "125"
  liftEffect $ log "126"
  liftEffect $ log "127"
  liftEffect $ log "128"
  liftEffect $ log "129"
  liftEffect $ log "130"
  liftEffect $ log "131"
  liftEffect $ log "132"
  liftEffect $ log "133"
  liftEffect $ log "134"
  liftEffect $ log "135"
  liftEffect $ log "136"
  liftEffect $ log "137"
  liftEffect $ log "138"
  liftEffect $ log "139"
  liftEffect $ log "140"
  liftEffect $ log "141"
  liftEffect $ log "142"
  liftEffect $ log "143"
  liftEffect $ log "144"
  liftEffect $ log "145"
  liftEffect $ log "146"
  liftEffect $ log "147"
  liftEffect $ log "148"
  liftEffect $ log "149"
  liftEffect $ log "150"
  liftEffect $ log "151"
  liftEffect $ log "152"
  liftEffect $ log "153"
  liftEffect $ log "154"
  liftEffect $ log "155"
  liftEffect $ log "156"
  liftEffect $ log "157"
  liftEffect $ log "158"
  liftEffect $ log "159"
  liftEffect $ log "160"
  liftEffect $ log "161"
  liftEffect $ log "162"
  liftEffect $ log "163"
  liftEffect $ log "164"
  liftEffect $ log "165"
  liftEffect $ log "166"
  liftEffect $ log "167"
  liftEffect $ log "168"
  liftEffect $ log "169"
  liftEffect $ log "170"
  liftEffect $ log "171"
  liftEffect $ log "172"
  liftEffect $ log "173"
  liftEffect $ log "174"
  liftEffect $ log "175"
  liftEffect $ log "176"
  liftEffect $ log "177"
  liftEffect $ log "178"
  liftEffect $ log "179"
  liftEffect $ log "180"
  liftEffect $ log "181"
  liftEffect $ log "182"
  liftEffect $ log "183"
  liftEffect $ log "184"
  liftEffect $ log "185"
  liftEffect $ log "186"
  liftEffect $ log "187"
  liftEffect $ log "188"
  liftEffect $ log "189"
  liftEffect $ log "190"
  liftEffect $ log "191"
  liftEffect $ log "192"
  liftEffect $ log "193"
  liftEffect $ log "194"
  liftEffect $ log "195"
  liftEffect $ log "196"
  liftEffect $ log "197"
  liftEffect $ log "198"
  liftEffect $ log "199"
  liftEffect $ log "200"
  liftEffect $ log "201"
  liftEffect $ log "202"
  liftEffect $ log "203"
  liftEffect $ log "204"
  liftEffect $ log "205"
  liftEffect $ log "206"
  liftEffect $ log "207"
  liftEffect $ log "208"
  liftEffect $ log "209"
  liftEffect $ log "210"
  liftEffect $ log "211"
  liftEffect $ log "212"
  liftEffect $ log "213"
  liftEffect $ log "214"
  liftEffect $ log "215"
  liftEffect $ log "216"
  liftEffect $ log "217"
  liftEffect $ log "218"
  liftEffect $ log "219"
  liftEffect $ log "220"
  liftEffect $ log "221"
  liftEffect $ log "222"
  liftEffect $ log "223"
  liftEffect $ log "224"
  liftEffect $ log "225"
  liftEffect $ log "226"
  liftEffect $ log "227"
  liftEffect $ log "228"
  liftEffect $ log "229"
  liftEffect $ log "230"
  liftEffect $ log "231"
  liftEffect $ log "232"
  liftEffect $ log "233"
  liftEffect $ log "234"
  liftEffect $ log "235"
  liftEffect $ log "236"
  liftEffect $ log "237"
  liftEffect $ log "238"
  liftEffect $ log "239"
  liftEffect $ log "240"
  liftEffect $ log "241"
  liftEffect $ log "242"
  liftEffect $ log "243"
  liftEffect $ log "244"
  liftEffect $ log "245"
  liftEffect $ log "246"
  liftEffect $ log "247"
  liftEffect $ log "248"
  liftEffect $ log "249"
  liftEffect $ log "250"
  liftEffect $ log "251"
  liftEffect $ log "252"
  liftEffect $ log "253"
  liftEffect $ log "254"
  liftEffect $ log "255"
  liftEffect $ log "256"
  liftEffect $ log "257"
  liftEffect $ log "258"
  liftEffect $ log "259"
  liftEffect $ log "260"
  liftEffect $ log "261"
  liftEffect $ log "262"
  liftEffect $ log "263"
  liftEffect $ log "264"
  liftEffect $ log "265"
  liftEffect $ log "266"
  liftEffect $ log "267"
  liftEffect $ log "268"
  liftEffect $ log "269"
  liftEffect $ log "270"
  liftEffect $ log "271"
  liftEffect $ log "272"
  liftEffect $ log "273"
  liftEffect $ log "274"
  liftEffect $ log "275"
  liftEffect $ log "276"
  liftEffect $ log "277"
  liftEffect $ log "278"
  liftEffect $ log "279"
  liftEffect $ log "280"
  liftEffect $ log "281"
  liftEffect $ log "282"
  liftEffect $ log "283"
  liftEffect $ log "284"
  liftEffect $ log "285"
  liftEffect $ log "286"
  liftEffect $ log "287"
  liftEffect $ log "288"
  liftEffect $ log "289"
  liftEffect $ log "290"
  liftEffect $ log "291"
  liftEffect $ log "292"
  liftEffect $ log "293"
  liftEffect $ log "294"
  liftEffect $ log "295"
  liftEffect $ log "296"
  liftEffect $ log "297"
  liftEffect $ log "298"
  liftEffect $ log "299"
  liftEffect $ log "300"
  liftEffect $ log "301"
  liftEffect $ log "302"
  liftEffect $ log "303"
  liftEffect $ log "304"
  liftEffect $ log "305"
  liftEffect $ log "306"
  liftEffect $ log "307"
  liftEffect $ log "308"
  liftEffect $ log "309"
  liftEffect $ log "310"
  liftEffect $ log "311"
  liftEffect $ log "312"
  liftEffect $ log "313"
  liftEffect $ log "314"
  liftEffect $ log "315"
  liftEffect $ log "316"
  liftEffect $ log "317"
  liftEffect $ log "318"
  liftEffect $ log "319"
  liftEffect $ log "320"
  liftEffect $ log "321"
  liftEffect $ log "322"
  liftEffect $ log "323"
  liftEffect $ log "324"
  liftEffect $ log "325"
  liftEffect $ log "326"
  liftEffect $ log "327"
  liftEffect $ log "328"
  liftEffect $ log "329"
  liftEffect $ log "330"
  liftEffect $ log "331"
  liftEffect $ log "332"
  liftEffect $ log "333"
  liftEffect $ log "334"
  liftEffect $ log "335"
  liftEffect $ log "336"
  liftEffect $ log "337"
  liftEffect $ log "338"
  liftEffect $ log "339"
  liftEffect $ log "340"
  liftEffect $ log "341"
  liftEffect $ log "342"
  liftEffect $ log "343"
  liftEffect $ log "344"
  liftEffect $ log "345"
  liftEffect $ log "346"
  liftEffect $ log "347"
  liftEffect $ log "348"
  liftEffect $ log "349"
  liftEffect $ log "350"
  liftEffect $ log "351"
  liftEffect $ log "352"
  liftEffect $ log "353"
  liftEffect $ log "354"
  liftEffect $ log "355"
  liftEffect $ log "356"
  liftEffect $ log "357"
  liftEffect $ log "358"
  liftEffect $ log "359"
  liftEffect $ log "360"
  liftEffect $ log "361"
  liftEffect $ log "362"
  liftEffect $ log "363"
  liftEffect $ log "364"
  liftEffect $ log "365"
  liftEffect $ log "366"
  liftEffect $ log "367"
  liftEffect $ log "368"
  liftEffect $ log "369"
  liftEffect $ log "370"
  liftEffect $ log "371"
  liftEffect $ log "372"
  liftEffect $ log "373"
  liftEffect $ log "374"
  liftEffect $ log "375"
  liftEffect $ log "376"
  liftEffect $ log "377"
  liftEffect $ log "378"
  liftEffect $ log "379"
  liftEffect $ log "380"
  liftEffect $ log "381"
  liftEffect $ log "382"
  liftEffect $ log "383"
  liftEffect $ log "384"
  liftEffect $ log "385"
  liftEffect $ log "386"
  liftEffect $ log "387"
  liftEffect $ log "388"
  liftEffect $ log "389"
  liftEffect $ log "390"
  liftEffect $ log "391"
  liftEffect $ log "392"
  liftEffect $ log "393"
  liftEffect $ log "394"
  liftEffect $ log "395"
  liftEffect $ log "396"
  liftEffect $ log "397"
  liftEffect $ log "398"
  liftEffect $ log "399"
  liftEffect $ log "400"
  liftEffect $ log "401"
  liftEffect $ log "402"
  liftEffect $ log "403"
  liftEffect $ log "404"
  liftEffect $ log "405"
  liftEffect $ log "406"
  liftEffect $ log "407"
  liftEffect $ log "408"
  liftEffect $ log "409"
  liftEffect $ log "410"
  liftEffect $ log "411"
  liftEffect $ log "412"
  liftEffect $ log "413"
  liftEffect $ log "414"
  liftEffect $ log "415"
  liftEffect $ log "416"
  liftEffect $ log "417"
  liftEffect $ log "418"
  liftEffect $ log "419"
  liftEffect $ log "420"
  liftEffect $ log "421"
  liftEffect $ log "422"
  liftEffect $ log "423"
  liftEffect $ log "424"
  liftEffect $ log "425"
  liftEffect $ log "426"
  liftEffect $ log "427"
  liftEffect $ log "428"
  liftEffect $ log "429"
  liftEffect $ log "430"
  liftEffect $ log "431"
  liftEffect $ log "432"
  liftEffect $ log "433"
  liftEffect $ log "434"
  liftEffect $ log "435"
  liftEffect $ log "436"
  liftEffect $ log "437"
  liftEffect $ log "438"
  liftEffect $ log "439"
  liftEffect $ log "440"
  liftEffect $ log "441"
  liftEffect $ log "442"
  liftEffect $ log "443"
  liftEffect $ log "444"
  liftEffect $ log "445"
  liftEffect $ log "446"
  liftEffect $ log "447"
  liftEffect $ log "448"
  liftEffect $ log "449"
  liftEffect $ log "450"
  liftEffect $ log "451"
  liftEffect $ log "452"
  liftEffect $ log "453"
  liftEffect $ log "454"
  liftEffect $ log "455"
  liftEffect $ log "456"
  liftEffect $ log "457"
  liftEffect $ log "458"
  liftEffect $ log "459"
  liftEffect $ log "460"
  liftEffect $ log "461"
  liftEffect $ log "462"
  liftEffect $ log "463"
  liftEffect $ log "464"
  liftEffect $ log "465"
  liftEffect $ log "466"
  liftEffect $ log "467"
  liftEffect $ log "468"
  liftEffect $ log "469"
  liftEffect $ log "470"
  liftEffect $ log "471"
  liftEffect $ log "472"
  liftEffect $ log "473"
  liftEffect $ log "474"
  liftEffect $ log "475"
  liftEffect $ log "476"
  liftEffect $ log "477"
  liftEffect $ log "478"
  liftEffect $ log "479"
  liftEffect $ log "480"
  liftEffect $ log "481"
  liftEffect $ log "482"
  liftEffect $ log "483"
  liftEffect $ log "484"
  liftEffect $ log "485"
  liftEffect $ log "486"
  liftEffect $ log "487"
  liftEffect $ log "488"
  liftEffect $ log "489"
  liftEffect $ log "490"
  liftEffect $ log "491"
  liftEffect $ log "492"
  liftEffect $ log "493"
  liftEffect $ log "494"
  liftEffect $ log "495"
  liftEffect $ log "496"
  liftEffect $ log "497"
  liftEffect $ log "498"
  liftEffect $ log "499"
  liftEffect $ log "500"
  liftEffect $ log "501"
  liftEffect $ log "502"
  liftEffect $ log "503"
  liftEffect $ log "504"
  liftEffect $ log "505"
  liftEffect $ log "506"
  liftEffect $ log "507"
  liftEffect $ log "508"
  liftEffect $ log "509"
  liftEffect $ log "510"
  liftEffect $ log "511"
  liftEffect $ log "512"
  liftEffect $ log "513"
  liftEffect $ log "514"
  liftEffect $ log "515"
  liftEffect $ log "516"
  liftEffect $ log "517"
  liftEffect $ log "518"
  liftEffect $ log "519"
  liftEffect $ log "520"