// ==== Global Function ===== //
// this file is the heart of HSPE Shader.
// WARNING! don't make an error function and variable in here! Because that same as you break the heart of this shader.

   #include "uniformMacro.h"
   #include "lib/option.h"

   #define _UNIFORM_PER_FRAME_CONSTANTS_H

// BEGIN_UNIFORM_BLOCK(PerFrameConstants) - unfortunately this macro doesn't work on old Amazon platforms so using above 3 lines instead.
 #ifndef _UNIFORM_PER_FRAME_CONSTANTS_H
   #ifdef MCPE_PLATFORM_NX
     layout(binding = 2) uniform PerFrameConstants {
   #endif

// uniform constants are in here except TOTAL_REAL_WORLD_TIME.
     UNIFORM vec3 VIEW_POS;
     UNIFORM highp float TIME;
     UNIFORM vec4 FOG_COLOR;
     UNIFORM vec2 FOG_CONTROL;
     UNIFORM float RENDER_DISTANCE;
     UNIFORM float FAR_CHUNKS_DISTANCE;
     END_UNIFORM_BLOCK
#endif 

///// apply uniform perframe constants
// these uniform are required for this shader.
     uniform vec3 VIEW_POS;
     uniform highp float TIME;
     uniform vec4 FOG_COLOR;
     uniform vec2 FOG_CONTROL;
     uniform float RENDER_DISTANCE;
     uniform float FAR_CHUNKS_DISTANCE;

///// rotation matrix functions
    mat2 rotate(in float a, in float b, in float c, in float d){
    vec4 value[1] = vec4[1](vec4(cos(a), sin(b), 
              -sin(c), cos(d)));
    return mat2(value[0][0], value[0][1], 
              value[0][2], value[0][3]); 
    }
       mat2 rotate(in float x){ 
    return rotate(x, x, x, x);
}

///// random hash and noise functions
 highp float rand(highp float x){
	    return fract(sin(x) * 43758.5453); 
   } highp float rand(highp vec2 x){
    return fract(sin(dot(x, vec2(28., 48.))) * 43758.5453);

} highp float noise(highp float x){
     float i = floor(x);
	  float f = fract(x);
	  float u = pow(f, 2.) * (3. - 2. * f);
	return mix(rand(i), rand(i + 1.), u);

} highp float noise( highp vec2 x ){
   	highp vec2 i = floor(x);
   	highp vec2 f = fract(x);
      f = pow(f, vec2(2.))*(3.-2.*f);

      highp float a = i.x + i.y * 57.;
      highp float b = mix(rand(a + 0.), rand(a + 1.), f.x);
      highp float c = mix(rand(a + 57.), rand(a + 58.0), f.x);
  return mix(c, b, 1.-f.y);
}

///// tone mapping function
vec3 tonemap( vec3 albedo )
  {
      // calculate tone 
      float W = 1.80; // brightness
      float A =  0.05; // gamma
      float N = 0.10; // exposure
      float Z =  0.90; // constrast
      float E =  0.015; // darkness
      float S =  0.020; // smooth light

    vec3 calculated_tonemap = ((albedo * (W * albedo + N * A) + Z * E) / (albedo * (W * albedo + A) + Z * S)) - E / S;
    return calculated_tonemap; 
}

///// saturation function
vec3 saturation(vec3 albedo, float adjust)
 {
   vec3 intensity = vec3(dot(albedo, 
   vec3(.2125, .7154, .0721)));
       return mix(intensity, albedo, adjust); 
}

///// fog color detection
  bool underwater(){
    if(all(bvec2(FOG_CONTROL.x == 0., FOG_COLOR.b > FOG_COLOR.r))){
  return true; } else { return false;
  }
}
 bool end(){
    if(all(bvec3(FOG_COLOR.r > FOG_COLOR.g, FOG_COLOR.b > FOG_COLOR.g, all(bvec3(FOG_COLOR.r < .05, FOG_COLOR.b < .05, FOG_COLOR.g < .05))))){
  return true; } else { return false;
  }
}
bool water(float x){
    if(all(bvec2(x < .95, x > .05))){
  return true; } else { return false;
  }
}

///// time detections
  float timeset(int number){
     float fday = clamp(FOG_COLOR.r + FOG_COLOR.g, .0, 1.);
     float fnight = 1.-fday;
    float frain = underwater()? 0. : smoothstep(.61, .32, FOG_CONTROL.x);
     float fsun = pow(clamp(1.-FOG_COLOR.b* 1.2,.0,1.), .5);
     float look_sun = clamp((1. - FOG_COLOR.b) * 1.5, .0, 1.) * clamp((FOG_COLOR.r) * 1.25, .0, 1.); 
     fsun *= 1.-fnight, fsun *= 1.-frain;

    if(number == 1) { return fday;
  } if(number == 2) { return fnight;
  } if(number == 3) { return frain;
  } if(number == 4) { return fsun;
  } if(number == 5) { return look_sun; }
}

vec3 gradc(float a, float b, float c, float d){
  return mix(mix(mix(mix(vec3(.0), vec3(.82, 1., 1.15), a), vec3(1.2, .7, .2) * .88, b), vec3(.0, .15, .25), c), FOG_COLOR.rgb * 1.5, d);
}

vec3 sky_col(float lp, float a, float b, float c, float d){

 // calculate sky color
    vec3 color = mix(vec3(0.), mix(vec3(.1, .5, 1.43), FOG_COLOR.rgb, clamp(pow(lp * 3., 1.5), .0, 1.)), a);
            // > day color

     color = mix(color, mix(pow(vec3(.1, .2, .55), vec3(1.4)), vec3(.5, .4, .7) *.86, clamp(pow(lp * 2.5, 2.), .0, 1.)), b);
            // > suns color

	 color = mix(color, vec3(.03, .13, .25) *.86, c);
           // > night color

     color = mix(color, FOG_COLOR.rgb*1.2, d);
         // > rain color

color = mix(color, gradc(a,b,c,d), clamp(lp*mix(2.8, 2.4, b), .0, 1.));

return color;
}

vec3 tonemap( vec3 albedo, float strength )
  {
      // calculate tone color
      float W = 2.00; // brightness
      float A =  0.05; // gamma
      float N = 0.50; // exposure
      float Z =  0.52; // constrast
      float E =  0.015; // dark
      float S =  0.65; // smooth light

    vec3 calculated_tonemap = ((albedo * (W * albedo + N * A) + Z * E) / (albedo * (W * albedo + A) + Z * S)) - E / S;
    return mix(albedo, calculated_tonemap, strength); 
} 

///// cloud color
vec4 cloud_col(vec4 albedo, vec2 uv, float l_uv, float a, float b, float c, float rc, float cb, float opacity){

// calculate cloud shape
  float drawCloud = .0;
  float lp = clamp(length(uv * 1.75), .0, 1.);
  
#ifdef DOUBLE_LAYER_CLOUDS
  for(int i = 0; i < 8; i++){
  	uv /= 1.01;
  	float shape2 = step(.83, rand(floor(((uv * 50.)) - vec2(0., TIME*.02))));
  	drawCloud = mix(drawCloud, opacity-.3, shape2);}
  	float dshape2 = step(.83, rand(floor((uv * 50.) - vec2(0., TIME*.02))));
    drawCloud = mix(mix(drawCloud, (opacity-.3)*.85, dshape2), rc, lp);
#endif
  
  vec2 uv2 = uv;
        for(int i = 0; i < 10; i++)
      {
        uv2 *= 1.01;
        float shape = rand(floor((uv2 * 35.) - vec2(0., TIME*.06)));
  
          drawCloud = mix(drawCloud, opacity, mix(step(.7, shape), step(.35, shape), c));
      }
        float dshape = rand(floor((uv * 35.) - vec2(0., TIME*.06)));
        drawCloud = mix(mix(drawCloud, opacity*.78, mix(step(.7, dshape), step(.35, dshape), c)), rc, lp);

// calculate cloud color
  vec4 color = mix(albedo, mix(mix(mix(vec4(1., 1.1, 1.1, .85), vec4(.53), c), mix(mix(vec4(1., .5, .2,.75), vec4(1.25, .55, .0, .95) * 1.23, l_uv), vec4(1.), max(c, b)), a), mix(vec4(.15, .3, .4, .65), vec4(.22), c), b), drawCloud);
     color.a -= mix(.0, cb, lp);
return color;
}


vec3 base_col(float a, float b, float c, float d){
  return mix(mix(mix(mix(vec3(1.), vec3(1.1, 1.15, 1.2), a), vec3(1., 2.1, 3.8)*.35, c), vec3(1.,.5,-.8)*.6, b), mix(vec3(.3), vec3(.6), c), d);
}

highp float get_wave(highp vec3 p, highp float speed)
{ p.xy *= rotate(.4);
  p.x += p.z * .05; p.z += p.x*.4;
  //p.xz += speed;
	  float interp = sin(cos(p.z + p.x) + p.x + speed*.7);
       float wave = abs(mix(noise(p.xz + speed),
            noise((p.xz + .2) + speed * 1.5), interp))*.12;

	return wave;
}

vec3 atmosphere(vec3 albedo, vec3 uv, float uv1, float a, float b, float c, float d){

    float far = clamp(length(uv) / mix(70., 25., max(c, d)), .0, 1.);
    vec3 res = end()? albedo : mix(albedo, mix(gradc(a, b, c, d) + mix(vec3(0), vec3(.0, .12, .15), a), albedo, mix(.65, .4, max(b, d))), far);
 
return res;
}






