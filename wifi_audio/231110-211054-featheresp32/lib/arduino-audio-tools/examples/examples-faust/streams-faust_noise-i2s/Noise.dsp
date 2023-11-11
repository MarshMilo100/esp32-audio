declare compilation_options    "-single -scal -I /Users/pschatzmann/.FaustLive-CurrentSession-2.2/Libs -I /Users/pschatzmann/.FaustLive-CurrentSession-2.2/Examples";
declare author "Grame";
declare copyright "(c)GRAME 2009";
declare filename "Noise";
declare license "BSD";
declare name "Noise";
declare version "1.1";
ID_319 = (ID_318 : *);
ID_321 = ID_320, 2147483647.0f;
ID_322 = (ID_321 : /);
ID_325 = ID_324 : *;
ID_323 = vslider("Volume[style:knob][acc: 0 0 -10 0 10]", 0.5f, 0.0f, 1.0f, 0.10000000000000001f);
ID_324 = ID_322, ID_323;
ID_318 = _, 1103515245;
ID_320 = ID_317 ~ ID_319;
ID_197 = _, _;
ID_313 = _, _;
ID_45 = (1 : mem);
ID_84 = hslider("hand[osc:/accxyz/1 0 20]", 0.0f, 0.0f, 1.0f, 0.01f);
ID_85 = _, 0.099999999999999978f;
ID_86 = ID_85 : *;
ID_87 = _, 0.90000000000000002f;
ID_88 = (ID_87 : *);
ID_89 = + ~ ID_88;
ID_90 = ID_86 : ID_89;
ID_91 = ID_84 : ID_90;
ID_200 = hslider("hand[osc:/accxyz/1 0 20]", 0.0f, 0.0f, 1.0f, 0.01f);
ID_201 = _, 0.099999999999999978f;
ID_202 = ID_201 : *;
ID_203 = _, 0.90000000000000002f;
ID_204 = (ID_203 : *);
ID_205 = + ~ ID_204;
ID_206 = ID_202 : ID_205;
ID_207 = ID_200 : ID_206;
ID_180 = (0.045454545454545414f : sqrt);
ID_181 = _, ID_180;
ID_182 = (ID_181 : *);
ID_92 = (0.95454545454545459f : sqrt);
ID_93 = _, ID_92;
ID_94 = (ID_93 : *);
ID_183 = ID_182, ID_94;
ID_184 = _ <: ID_183;
ID_296 = (0.045454545454545414f : sqrt);
ID_297 = _, ID_296;
ID_298 = (ID_297 : *);
ID_208 = (0.95454545454545459f : sqrt);
ID_209 = _, ID_208;
ID_210 = (ID_209 : *);
ID_299 = ID_298, ID_210;
ID_300 = _ <: ID_299;
ID_105 = (0.13636363636363635f : sqrt);
ID_106 = _, ID_105;
ID_107 = (ID_106 : *);
ID_102 = (0.86363636363636365f : sqrt);
ID_103 = _, ID_102;
ID_104 = (ID_103 : *);
ID_176 = ID_107, ID_104;
ID_177 = _ <: ID_176;
ID_221 = (0.13636363636363635f : sqrt);
ID_222 = _, ID_221;
ID_223 = (ID_222 : *);
ID_218 = (0.86363636363636365f : sqrt);
ID_219 = _, ID_218;
ID_220 = (ID_219 : *);
ID_292 = ID_223, ID_220;
ID_293 = _ <: ID_292;
ID_169 = (0.22727272727272729f : sqrt);
ID_170 = _, ID_169;
ID_171 = (ID_170 : *);
ID_112 = (0.77272727272727271f : sqrt);
ID_113 = _, ID_112;
ID_114 = (ID_113 : *);
ID_172 = ID_171, ID_114;
ID_173 = _ <: ID_172;
ID_285 = (0.22727272727272729f : sqrt);
ID_286 = _, ID_285;
ID_287 = (ID_286 : *);
ID_228 = (0.77272727272727271f : sqrt);
ID_229 = _, ID_228;
ID_230 = (ID_229 : *);
ID_288 = ID_287, ID_230;
ID_289 = _ <: ID_288;
ID_159 = (0.31818181818181823f : sqrt);
ID_160 = _, ID_159;
ID_161 = (ID_160 : *);
ID_162 = (0.68181818181818177f : sqrt);
ID_163 = _, ID_162;
ID_164 = (ID_163 : *);
ID_165 = ID_161, ID_164;
ID_166 = _ <: ID_165;
ID_275 = (0.31818181818181823f : sqrt);
ID_276 = _, ID_275;
ID_277 = (ID_276 : *);
ID_278 = (0.68181818181818177f : sqrt);
ID_279 = _, ID_278;
ID_280 = (ID_279 : *);
ID_281 = ID_277, ID_280;
ID_282 = _ <: ID_281;
ID_149 = (0.40909090909090906f : sqrt);
ID_150 = _, ID_149;
ID_151 = (ID_150 : *);
ID_152 = (0.59090909090909094f : sqrt);
ID_153 = _, ID_152;
ID_154 = (ID_153 : *);
ID_155 = ID_151, ID_154;
ID_156 = _ <: ID_155;
ID_265 = (0.40909090909090906f : sqrt);
ID_266 = _, ID_265;
ID_267 = (ID_266 : *);
ID_268 = (0.59090909090909094f : sqrt);
ID_269 = _, ID_268;
ID_270 = (ID_269 : *);
ID_271 = ID_267, ID_270;
ID_272 = _ <: ID_271;
ID_142 = (0.5f : sqrt);
ID_143 = _, ID_142;
ID_144 = (ID_143 : *);
ID_145 = ID_144, ID_144;
ID_146 = _ <: ID_145;
ID_258 = (0.5f : sqrt);
ID_259 = _, ID_258;
ID_260 = (ID_259 : *);
ID_261 = ID_260, ID_260;
ID_262 = _ <: ID_261;
ID_132 = (0.59090909090909083f : sqrt);
ID_133 = _, ID_132;
ID_134 = (ID_133 : *);
ID_135 = (0.40909090909090912f : sqrt);
ID_136 = _, ID_135;
ID_137 = (ID_136 : *);
ID_138 = ID_134, ID_137;
ID_139 = _ <: ID_138;
ID_248 = (0.59090909090909083f : sqrt);
ID_249 = _, ID_248;
ID_250 = (ID_249 : *);
ID_251 = (0.40909090909090912f : sqrt);
ID_252 = _, ID_251;
ID_253 = (ID_252 : *);
ID_254 = ID_250, ID_253;
ID_255 = _ <: ID_254;
ID_122 = (0.68181818181818188f : sqrt);
ID_123 = _, ID_122;
ID_124 = (ID_123 : *);
ID_125 = (0.31818181818181818f : sqrt);
ID_126 = _, ID_125;
ID_127 = (ID_126 : *);
ID_128 = ID_124, ID_127;
ID_129 = _ <: ID_128;
ID_238 = (0.68181818181818188f : sqrt);
ID_239 = _, ID_238;
ID_240 = (ID_239 : *);
ID_241 = (0.31818181818181818f : sqrt);
ID_242 = _, ID_241;
ID_243 = (ID_242 : *);
ID_244 = ID_240, ID_243;
ID_245 = _ <: ID_244;
ID_115 = (0.22727272727272727f : sqrt);
ID_116 = _, ID_115;
ID_117 = (ID_116 : *);
ID_118 = ID_114, ID_117;
ID_119 = _ <: ID_118;
ID_231 = (0.22727272727272727f : sqrt);
ID_232 = _, ID_231;
ID_233 = (ID_232 : *);
ID_234 = ID_230, ID_233;
ID_235 = _ <: ID_234;
ID_108 = ID_104, ID_107;
ID_109 = _ <: ID_108;
ID_224 = ID_220, ID_223;
ID_225 = _ <: ID_224;
ID_95 = (0.045454545454545456f : sqrt);
ID_96 = _, ID_95;
ID_97 = (ID_96 : *);
ID_98 = ID_94, ID_97;
ID_99 = _ <: ID_98;
ID_211 = (0.045454545454545456f : sqrt);
ID_212 = _, ID_211;
ID_213 = (ID_212 : *);
ID_214 = ID_210, ID_213;
ID_215 = _ <: ID_214;
ID_56 = hslider("freq [unit:Hz]", 1000.0f, 20.0f, 24000.0f, 1.0f);
ID_57 = fconstant(int fSamplingFreq, <math.h>);
ID_100 = \(x2).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x2 : \(x3).((x3,(x3 : mem) : -),0.0f : >) : +~\(x4).(x4,((x4,0.0f : >),100.22727272727273f : /) : -) : _,0.0f : >) : * : (+ : _,99.227272727272734f : @)~(\(x5).((x5,(x5 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_99;
ID_101 = (\(x1).(((x1,(x1 : mem) : min),0.045454545454545456f : <),(0.045454545454545456f,(x1,(x1 : mem) : max) : <) : &) : ID_100);
ID_216 = \(x2).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x2 : \(x3).((x3,(x3 : mem) : -),0.0f : >) : +~\(x4).(x4,((x4,0.0f : >),100.22727272727273f : /) : -) : _,0.0f : >) : * : (+ : _,99.227272727272734f : @)~(\(x5).((x5,(x5 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_215;
ID_217 = (\(x1).(((x1,(x1 : mem) : min),0.045454545454545456f : <),(0.045454545454545456f,(x1,(x1 : mem) : max) : <) : &) : ID_216);
ID_110 = \(x7).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x7 : \(x8).((x8,(x8 : mem) : -),0.0f : >) : +~\(x9).(x9,((x9,0.0f : >),87.252908730361526f : /) : -) : _,0.0f : >) : * : (+ : _,86.252908730361526f : @)~(\(x10).((x10,(x10 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_109;
ID_111 = (\(x6).(((x6,(x6 : mem) : min),0.13636363636363635f : <),(0.13636363636363635f,(x6,(x6 : mem) : max) : <) : &) : ID_110);
ID_226 = \(x7).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x7 : \(x8).((x8,(x8 : mem) : -),0.0f : >) : +~\(x9).(x9,((x9,0.0f : >),87.252908730361526f : /) : -) : _,0.0f : >) : * : (+ : _,86.252908730361526f : @)~(\(x10).((x10,(x10 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_225;
ID_227 = (\(x6).(((x6,(x6 : mem) : min),0.13636363636363635f : <),(0.13636363636363635f,(x6,(x6 : mem) : max) : <) : &) : ID_226);
ID_120 = \(x12).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x12 : \(x13).((x13,(x13 : mem) : -),0.0f : >) : +~\(x14).(x14,((x14,0.0f : >),75.958068844441542f : /) : -) : _,0.0f : >) : * : (+ : _,74.958068844441542f : @)~(\(x15).((x15,(x15 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_119;
ID_121 = (\(x11).(((x11,(x11 : mem) : min),0.22727272727272727f : <),(0.22727272727272727f,(x11,(x11 : mem) : max) : <) : &) : ID_120);
ID_236 = \(x12).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x12 : \(x13).((x13,(x13 : mem) : -),0.0f : >) : +~\(x14).(x14,((x14,0.0f : >),75.958068844441542f : /) : -) : _,0.0f : >) : * : (+ : _,74.958068844441542f : @)~(\(x15).((x15,(x15 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_235;
ID_237 = (\(x11).(((x11,(x11 : mem) : min),0.22727272727272727f : <),(0.22727272727272727f,(x11,(x11 : mem) : max) : <) : &) : ID_236);
ID_58 = 1.0f, ID_57;
ID_59 = (ID_58 : max);
ID_60 = 192000.0f, ID_59;
ID_61 = (ID_60 : min);
ID_62 = ID_56, ID_61;
ID_63 = (ID_62 : /);
ID_64 = _, ID_63;
ID_65 = (ID_64 : +);
ID_66 = ID_65, 0;
ID_67 = 0, ID_66;
ID_68 = ID_67 : select2;
ID_52 = (65536 : float);
ID_71 = _, ID_52;
ID_72 = ID_71 : *;
ID_69 = (ID_68 : \(x1).(x1,(x1 : floor) : -));
ID_70 = ID_69 ~ _;
ID_73 = ID_70 : ID_72;
ID_130 = \(x17).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x17 : \(x18).((x18,(x18 : mem) : -),0.0f : >) : +~\(x19).(x19,((x19,0.0f : >),66.125339619414362f : /) : -) : _,0.0f : >) : * : (+ : _,65.125339619414362f : @)~(\(x20).((x20,(x20 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_129;
ID_131 = (\(x16).(((x16,(x16 : mem) : min),0.31818181818181818f : <),(0.31818181818181818f,(x16,(x16 : mem) : max) : <) : &) : ID_130);
ID_246 = \(x17).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x17 : \(x18).((x18,(x18 : mem) : -),0.0f : >) : +~\(x19).(x19,((x19,0.0f : >),66.125339619414362f : /) : -) : _,0.0f : >) : * : (+ : _,65.125339619414362f : @)~(\(x20).((x20,(x20 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_245;
ID_247 = (\(x16).(((x16,(x16 : mem) : min),0.31818181818181818f : <),(0.31818181818181818f,(x16,(x16 : mem) : max) : <) : &) : ID_246);
ID_140 = \(x22).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x22 : \(x23).((x23,(x23 : mem) : -),0.0f : >) : +~\(x24).(x24,((x24,0.0f : >),57.565451653828681f : /) : -) : _,0.0f : >) : * : (+ : _,56.565451653828681f : @)~(\(x25).((x25,(x25 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_139;
ID_141 = (\(x21).(((x21,(x21 : mem) : min),0.40909090909090912f : <),(0.40909090909090912f,(x21,(x21 : mem) : max) : <) : &) : ID_140);
ID_256 = \(x22).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x22 : \(x23).((x23,(x23 : mem) : -),0.0f : >) : +~\(x24).(x24,((x24,0.0f : >),57.565451653828681f : /) : -) : _,0.0f : >) : * : (+ : _,56.565451653828681f : @)~(\(x25).((x25,(x25 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_255;
ID_257 = (\(x21).(((x21,(x21 : mem) : min),0.40909090909090912f : <),(0.40909090909090912f,(x21,(x21 : mem) : max) : <) : &) : ID_256);
ID_147 = \(x27).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x27 : \(x28).((x28,(x28 : mem) : -),0.0f : >) : +~\(x29).(x29,((x29,0.0f : >),50.113636363636367f : /) : -) : _,0.0f : >) : * : (+ : _,49.113636363636367f : @)~(\(x30).((x30,(x30 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_146;
ID_148 = (\(x26).(((x26,(x26 : mem) : min),0.5f : <),(0.5f,(x26,(x26 : mem) : max) : <) : &) : ID_147);
ID_263 = \(x27).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x27 : \(x28).((x28,(x28 : mem) : -),0.0f : >) : +~\(x29).(x29,((x29,0.0f : >),50.113636363636367f : /) : -) : _,0.0f : >) : * : (+ : _,49.113636363636367f : @)~(\(x30).((x30,(x30 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_262;
ID_264 = (\(x26).(((x26,(x26 : mem) : min),0.5f : <),(0.5f,(x26,(x26 : mem) : max) : <) : &) : ID_263);
ID_157 = \(x32).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x32 : \(x33).((x33,(x33 : mem) : -),0.0f : >) : +~\(x34).(x34,((x34,0.0f : >),43.62645436518077f : /) : -) : _,0.0f : >) : * : (+ : _,42.62645436518077f : @)~(\(x35).((x35,(x35 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_156;
ID_158 = (\(x31).(((x31,(x31 : mem) : min),0.59090909090909094f : <),(0.59090909090909094f,(x31,(x31 : mem) : max) : <) : &) : ID_157);
ID_273 = \(x32).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x32 : \(x33).((x33,(x33 : mem) : -),0.0f : >) : +~\(x34).(x34,((x34,0.0f : >),43.62645436518077f : /) : -) : _,0.0f : >) : * : (+ : _,42.62645436518077f : @)~(\(x35).((x35,(x35 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_272;
ID_274 = (\(x31).(((x31,(x31 : mem) : min),0.59090909090909094f : <),(0.59090909090909094f,(x31,(x31 : mem) : max) : <) : &) : ID_273);
ID_167 = \(x37).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x37 : \(x38).((x38,(x38 : mem) : -),0.0f : >) : +~\(x39).(x39,((x39,0.0f : >),37.979034422220771f : /) : -) : _,0.0f : >) : * : (+ : _,36.979034422220771f : @)~(\(x40).((x40,(x40 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_166;
ID_168 = (\(x36).(((x36,(x36 : mem) : min),0.68181818181818177f : <),(0.68181818181818177f,(x36,(x36 : mem) : max) : <) : &) : ID_167);
ID_283 = \(x37).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x37 : \(x38).((x38,(x38 : mem) : -),0.0f : >) : +~\(x39).(x39,((x39,0.0f : >),37.979034422220771f : /) : -) : _,0.0f : >) : * : (+ : _,36.979034422220771f : @)~(\(x40).((x40,(x40 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_282;
ID_284 = (\(x36).(((x36,(x36 : mem) : min),0.68181818181818177f : <),(0.68181818181818177f,(x36,(x36 : mem) : max) : <) : &) : ID_283);
ID_174 = \(x42).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x42 : \(x43).((x43,(x43 : mem) : -),0.0f : >) : +~\(x44).(x44,((x44,0.0f : >),33.062669809707174f : /) : -) : _,0.0f : >) : * : (+ : _,32.062669809707174f : @)~(\(x45).((x45,(x45 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_173;
ID_175 = (\(x41).(((x41,(x41 : mem) : min),0.77272727272727271f : <),(0.77272727272727271f,(x41,(x41 : mem) : max) : <) : &) : ID_174);
ID_290 = \(x42).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x42 : \(x43).((x43,(x43 : mem) : -),0.0f : >) : +~\(x44).(x44,((x44,0.0f : >),33.062669809707174f : /) : -) : _,0.0f : >) : * : (+ : _,32.062669809707174f : @)~(\(x45).((x45,(x45 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_289;
ID_291 = (\(x41).(((x41,(x41 : mem) : min),0.77272727272727271f : <),(0.77272727272727271f,(x41,(x41 : mem) : max) : <) : &) : ID_290);
ID_178 = \(x47).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x47 : \(x48).((x48,(x48 : mem) : -),0.0f : >) : +~\(x49).(x49,((x49,0.0f : >),28.782725826914341f : /) : -) : _,0.0f : >) : * : (+ : _,27.782725826914341f : @)~(\(x50).((x50,(x50 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_177;
ID_179 = (\(x46).(((x46,(x46 : mem) : min),0.86363636363636365f : <),(0.86363636363636365f,(x46,(x46 : mem) : max) : <) : &) : ID_178);
ID_294 = \(x47).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x47 : \(x48).((x48,(x48 : mem) : -),0.0f : >) : +~\(x49).(x49,((x49,0.0f : >),28.782725826914341f : /) : -) : _,0.0f : >) : * : (+ : _,27.782725826914341f : @)~(\(x50).((x50,(x50 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_293;
ID_295 = (\(x46).(((x46,(x46 : mem) : min),0.86363636363636365f : <),(0.86363636363636365f,(x46,(x46 : mem) : max) : <) : &) : ID_294);
ID_185 = \(x52).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x52 : \(x53).((x53,(x53 : mem) : -),0.0f : >) : +~\(x54).(x54,((x54,0.0f : >),25.056818181818183f : /) : -) : _,0.0f : >) : * : (+ : _,24.056818181818183f : @)~(\(x55).((x55,(x55 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_184;
ID_186 = (\(x51).(((x51,(x51 : mem) : min),0.95454545454545459f : <),(0.95454545454545459f,(x51,(x51 : mem) : max) : <) : &) : ID_185);
ID_187 = ID_179, ID_186;
ID_188 = ID_175, ID_187;
ID_189 = ID_168, ID_188;
ID_190 = ID_158, ID_189;
ID_191 = ID_148, ID_190;
ID_192 = ID_141, ID_191;
ID_193 = ID_131, ID_192;
ID_194 = ID_121, ID_193;
ID_195 = ID_111, ID_194;
ID_196 = ID_101, ID_195;
ID_198 = ID_196 :> ID_197;
ID_199 = ID_91 <: ID_198;
ID_301 = \(x52).(((_,12345 : +)~(_,1103515245 : *),2147483647.0f : /),(hslider("level [unit:f][osc:/accxyz/0 -10 10]", 0.5f, 0.0f, 1.0f, 0.01f),2 : pow) : * : _,(x52 : \(x53).((x53,(x53 : mem) : -),0.0f : >) : +~\(x54).(x54,((x54,0.0f : >),25.056818181818183f : /) : -) : _,0.0f : >) : * : (+ : _,24.056818181818183f : @)~(\(x55).((x55,(x55 : mem) : +),2 : /) : _,(1.0f,hslider("attenuation [osc:/1/fader3]", 0.0050000000000000001f, 0.0f, 0.01f, 0.001f) : -) : *)) : ID_300;
ID_302 = (\(x51).(((x51,(x51 : mem) : min),0.95454545454545459f : <),(0.95454545454545459f,(x51,(x51 : mem) : max) : <) : &) : ID_301);
ID_303 = ID_295, ID_302;
ID_304 = ID_291, ID_303;
ID_305 = ID_284, ID_304;
ID_306 = ID_274, ID_305;
ID_307 = ID_264, ID_306;
ID_308 = ID_257, ID_307;
ID_309 = ID_247, ID_308;
ID_310 = ID_237, ID_309;
ID_311 = ID_227, ID_310;
ID_312 = ID_217, ID_311;
ID_314 = ID_312 :> ID_313;
ID_315 = ID_207 <: ID_314;
ID_42 = (65536 : int);
ID_43 = _, ID_42;
ID_44 = (ID_43 : %);
ID_46 = _, ID_45;
ID_47 = (ID_46 : +);
ID_48 = ID_44 ~ ID_47;
ID_49 = (ID_48 : float);
ID_50 = ID_49, 6.2831853071795862f;
ID_51 = (ID_50 : *);
ID_53 = ID_51, ID_52;
ID_54 = ID_53 : /;
ID_55 = (ID_54 : sin);
ID_74 = (ID_73 : int);
ID_78 = hslider("volume [unit:dB]", 0.0f, -96.0f, 0.0f, 0.10000000000000001f);
ID_75 = ID_55, ID_74;
ID_76 = 65536, ID_75;
ID_77 = (ID_76 : rdtable);
ID_79 = \(x2).(10.0f,(x2,20.0f : /) : pow) : \(x3).(\(x4).(((1.0f,(1,(44.100000000000001f,(192000.0f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : /) : -) : -),x3 : *),((1,(44.100000000000001f,(192000.0f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : /) : -),x4 : *) : +)~_);
ID_80 = (ID_78 : ID_79);
ID_81 = ID_77, ID_80;
ID_82 = ID_81 : *;
ID_83 = vgroup("Oscillator", ID_82);
ID_317 = (ID_316 : +);
ID_316 = _, 12345;
ID_3 = (1 : mem);
ID_14 = hslider("freq [unit:Hz]", 1000.0f, 20.0f, 24000.0f, 1.0f);
ID_15 = fconstant(int fSamplingFreq, <math.h>);
ID_333 = vslider("Volume[style:knob][acc: 0 0 -10 0 10]", 0.5f, 0.0f, 1.0f, 0.10000000000000001f);
ID_334 = ID_332, ID_333;
ID_331 = ID_330, 2147483647.0f;
ID_332 = (ID_331 : /);
ID_330 = ID_327 ~ ID_329;
ID_326 = _, 12345;
ID_327 = (ID_326 : +);
ID_328 = _, 1103515245;
ID_329 = (ID_328 : *);
ID_335 = ID_334 : *;
ID_16 = 1.0f, ID_15;
ID_17 = (ID_16 : max);
ID_18 = 192000.0f, ID_17;
ID_19 = (ID_18 : min);
ID_20 = ID_14, ID_19;
ID_21 = (ID_20 : /);
ID_22 = _, ID_21;
ID_23 = (ID_22 : +);
ID_24 = ID_23, 0;
ID_25 = 0, ID_24;
ID_26 = ID_25 : select2;
ID_10 = (65536 : float);
ID_29 = _, ID_10;
ID_30 = ID_29 : *;
ID_27 = (ID_26 : \(x1).(x1,(x1 : floor) : -));
ID_28 = ID_27 ~ _;
ID_31 = ID_28 : ID_30;
ID_0 = (65536 : int);
ID_1 = _, ID_0;
ID_2 = (ID_1 : %);
ID_4 = _, ID_3;
ID_5 = (ID_4 : +);
ID_6 = ID_2 ~ ID_5;
ID_7 = (ID_6 : float);
ID_8 = ID_7, 6.2831853071795862f;
ID_9 = (ID_8 : *);
ID_11 = ID_9, ID_10;
ID_12 = ID_11 : /;
ID_13 = (ID_12 : sin);
ID_32 = (ID_31 : int);
ID_36 = hslider("volume [unit:dB]", 0.0f, -96.0f, 0.0f, 0.10000000000000001f);
ID_33 = ID_13, ID_32;
ID_34 = 65536, ID_33;
ID_35 = (ID_34 : rdtable);
ID_37 = \(x2).(10.0f,(x2,20.0f : /) : pow) : \(x3).(\(x4).(((1.0f,(1,(44.100000000000001f,(192000.0f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : /) : -) : -),x3 : *),((1,(44.100000000000001f,(192000.0f,(1.0f,fconstant(int fSamplingFreq, <math.h>) : max) : min) : /) : -),x4 : *) : +)~_);
ID_38 = (ID_36 : ID_37);
ID_39 = ID_35, ID_38;
ID_40 = ID_39 : *;
ID_41 = vgroup("Oscillator", ID_40);
process = ID_335;
