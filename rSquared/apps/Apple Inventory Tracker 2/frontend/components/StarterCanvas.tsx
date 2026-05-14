/** @jsxRuntime automatic */

import { useEffect, useRef } from 'react'

const VERTEX_SHADER = `attribute vec2 a_position;
varying vec2 vScreenUv;
void main() {
  gl_Position = vec4(a_position, 0.0, 1.0);
  vScreenUv = a_position * 0.5 + 0.5;
}`

const FRAGMENT_SHADER = `
precision mediump float;

varying vec2 vScreenUv;

uniform float u_time;
uniform float u_application_mode;
uniform vec2 u_gradient_start;
uniform vec2 u_gradient_end;
uniform vec2 u_glow_center;
uniform float u_stop_count;
uniform float u_stop_0_pos;
uniform float u_stop_1_pos;
uniform float u_stop_2_pos;
uniform float u_stop_3_pos;
uniform float u_stop_4_pos;
uniform vec3 u_stop_0_color;
uniform vec3 u_stop_1_color;
uniform vec3 u_stop_2_color;
uniform vec3 u_stop_3_color;
uniform vec3 u_stop_4_color;
uniform float u_curvature;
uniform float u_stipple;
uniform float u_center_radius;
uniform float u_center_softness;
uniform float u_ring_count;
uniform float u_ring_spacing;
uniform float u_ring_width;
uniform float u_ring_softness;
uniform float u_ring_falloff;
uniform float u_alpha_strength;
uniform float u_grain;
uniform float u_aspect;

float hash(vec2 p) {
  vec3 p3 = fract(vec3(p.xyx) * 0.1031);
  p3 += dot(p3, p3.yzx + 33.33);
  return fract((p3.x + p3.y) * p3.z);
}
vec2 hash2(vec2 p) {
  return vec2(hash(p), hash(p + vec2(127.1, 311.7)));
}

vec3 stopGradient(float t) {
  t = clamp(t, 0.0, 1.0);
  vec3 mix01 = mix(u_stop_0_color, u_stop_1_color, smoothstep(u_stop_0_pos, u_stop_1_pos, t));
  vec3 mix12 = mix(u_stop_1_color, u_stop_2_color, smoothstep(u_stop_1_pos, u_stop_2_pos, t));
  vec3 mix23 = mix(u_stop_2_color, u_stop_3_color, smoothstep(u_stop_2_pos, u_stop_3_pos, t));
  vec3 mix34 = mix(u_stop_3_color, u_stop_4_color, smoothstep(u_stop_3_pos, u_stop_4_pos, t));
  float use3 = step(2.5, u_stop_count);
  float use4 = step(3.5, u_stop_count);
  float use5 = step(4.5, u_stop_count);
  vec3 color = mix(mix01, mix12, step(u_stop_1_pos, t) * use3);
  color = mix(color, mix23, step(u_stop_2_pos, t) * use4);
  color = mix(color, mix34, step(u_stop_3_pos, t) * use5);
  return color;
}

vec2 aspectCorrect(vec2 p) {
  return vec2(p.x * u_aspect, p.y);
}

vec3 radialGradient(vec2 st) {
  vec2 center = aspectCorrect(u_gradient_start);
  vec2 end = aspectCorrect(u_gradient_end);
  vec2 pos = aspectCorrect(st);
  float baseRadius = length(end - center);
  float pulse = 1.0 + (sin(u_time * 0.00075) * 0.5 + 0.5) * 0.5;
  float radius = baseRadius * pulse;
  float t = radius > 0.001 ? length(pos - center) / radius : 0.0;
  if (abs(u_curvature) > 0.001) {
    t = t + u_curvature * t * (1.0 - t);
  }
  return stopGradient(t);
}

float centerGlowMask(vec2 st) {
  float d = distance(st, u_glow_center);
  float edge0 = max(0.0, u_center_radius - u_center_softness);
  float edge1 = u_center_radius + u_center_softness;
  return 1.0 - smoothstep(edge0, edge1, d);
}

float ringGlowMask(vec2 st) {
  float d = distance(st, u_glow_center);
  float count = max(1.0, floor(u_ring_count + 0.5));
  float spacing = max(0.01, u_ring_spacing);
  float width = max(0.001, u_ring_width);
  float softness = max(0.0001, u_ring_softness);
  float ringMask = 0.0;
  for (int i = 0; i < 12; i++) {
    if (float(i) >= count) break;
    float r = spacing * float(i + 1);
    float edgeA = smoothstep(r - width - softness, r - width, d);
    float edgeB = 1.0 - smoothstep(r + width, r + width + softness, d);
    ringMask = max(ringMask, edgeA * edgeB);
  }
  float radialFade = exp(-d * max(0.001, u_ring_falloff));
  return clamp(ringMask * radialFade, 0.0, 1.0);
}

void main() {
  float t = u_time * 0.001;
  vec2 st = vScreenUv + vec2(sin(t * 0.5) * 0.06, cos(t * 0.4) * 0.1);
  if (u_stipple > 0.001) {
    vec2 d1 = (hash2(st * 500.0) - 0.5) * 2.0;
    vec2 d2 = (hash2(st * 200.0) - 0.5) * 2.0;
    vec2 d3 = (hash2(st * 80.0) - 0.5) * 2.0;
    vec2 offset = d1 * 0.5 + d2 * 0.35 + d3 * 0.15;
    st += offset * u_stipple * 0.025;
  }

  vec3 color = radialGradient(st);
  if (u_grain > 0.001) {
    float g1 = hash(vScreenUv * 200.0) - 0.5;
    float g2 = hash(vScreenUv * 80.0 + 0.3) - 0.5;
    float g = g1 * 0.7 + g2 * 0.3;
    color += g * u_grain;
  }
  if (u_application_mode < 0.5) {
    gl_FragColor = vec4(color, 1.0);
    return;
  }
  float mask = u_application_mode < 1.5 ? centerGlowMask(st) : ringGlowMask(st);
  float alpha = clamp(mask * u_alpha_strength, 0.0, 1.0);
  gl_FragColor = vec4(u_stop_0_color, alpha);
}`

const STATIC_UNIFORMS: Record<string, number | number[]> = {
  u_alpha_strength: 1,
  u_application_mode: 0,
  u_center_radius: 0.35,
  u_center_softness: 0.18,
  u_curvature: 1.8,
  u_glow_center: [0.5, 0.5],
  u_gradient_start: [0, 0.15],
  u_gradient_end: [1, 1],
  u_ring_count: 3,
  u_ring_falloff: 4.5,
  u_ring_softness: 0.02,
  u_ring_spacing: 0.12,
  u_ring_width: 0.022,
  u_stipple: 3,
  u_grain: 0.09,
  u_stop_0_pos: 0.020821547249001964,
  u_stop_1_pos: 0.4857252865307194,
  u_stop_2_pos: 0.732686851329757,
  u_stop_3_pos: 1,
  u_stop_count: 4,
}

const COLOR_STOPS = [
  [0.9725490196078431, 0.7098039215686275, 0.6588235294117647],
  [0.9333333333333333, 0.8352941176470589, 0.6941176470588235],
  [0.8431372549019608, 0.8980392156862745, 0.9529411764705882],
  [0.8549019607843137, 0.9058823529411765, 0.9450980392156862],
]

const OSCILLATION = 0.15

function lerpColor(a: number[], b: number[], t: number): number[] {
  return a.map((v, i) => v + ((b[i] ?? 0) - v) * t)
}

function compileShader(gl: WebGLRenderingContext, type: number, source: string): WebGLShader {
  const shader = gl.createShader(type)
  if (!shader) {
    throw new Error('Failed to create shader')
  }
  gl.shaderSource(shader, source)
  gl.compileShader(shader)
  if (!gl.getShaderParameter(shader, gl.COMPILE_STATUS)) {
    const message = gl.getShaderInfoLog(shader) || 'Shader compile error'
    gl.deleteShader(shader)
    throw new Error(message)
  }
  return shader
}

function createProgram(gl: WebGLRenderingContext, vertexSource: string, fragmentSource: string): WebGLProgram {
  const program = gl.createProgram()
  if (!program) {
    throw new Error('Failed to create program')
  }
  const vertex = compileShader(gl, gl.VERTEX_SHADER, vertexSource)
  const fragment = compileShader(gl, gl.FRAGMENT_SHADER, fragmentSource)
  gl.attachShader(program, vertex)
  gl.attachShader(program, fragment)
  gl.linkProgram(program)
  gl.deleteShader(vertex)
  gl.deleteShader(fragment)
  if (!gl.getProgramParameter(program, gl.LINK_STATUS)) {
    const message = gl.getProgramInfoLog(program) || 'Program link error'
    gl.deleteProgram(program)
    throw new Error(message)
  }
  return program
}

function setUniform(gl: WebGLRenderingContext, location: WebGLUniformLocation | null, value: number | number[]): void {
  if (!location) {
    return
  }
  if (typeof value === 'number') {
    gl.uniform1f(location, value)
    return
  }
  if (!Array.isArray(value)) {
    return
  }
  if (value.length === 2) {
    gl.uniform2f(location, value[0] ?? 0, value[1] ?? 0)
    return
  }
  if (value.length === 3) {
    gl.uniform3f(location, value[0] ?? 0, value[1] ?? 0, value[2] ?? 0)
    return
  }
}

export function StarterCanvas() {
  const canvasRef = useRef<HTMLCanvasElement | null>(null)

  useEffect(() => {
    const canvas = canvasRef.current
    if (!canvas) {
      return
    }
    const gl = canvas.getContext('webgl', {
      alpha: true,
      antialias: false,
      powerPreference: 'high-performance',
      preserveDrawingBuffer: false,
    })
    if (!gl) {
      return
    }

    const program = createProgram(gl, VERTEX_SHADER, FRAGMENT_SHADER)
    gl.useProgram(program)

    const buffer = gl.createBuffer()
    if (!buffer) {
      return
    }
    gl.bindBuffer(gl.ARRAY_BUFFER, buffer)
    gl.bufferData(gl.ARRAY_BUFFER, new Float32Array([-1, -1, 1, -1, -1, 1, 1, 1]), gl.STATIC_DRAW)
    const posLocation = gl.getAttribLocation(program, 'a_position')
    if (posLocation >= 0) {
      gl.enableVertexAttribArray(posLocation)
      gl.vertexAttribPointer(posLocation, 2, gl.FLOAT, false, 0, 0)
    }

    const startTime = performance.now()
    let rafId = 0

    const render = (now: number): void => {
      const rect = canvas.getBoundingClientRect()
      const dpr = Math.max(1, Math.min(window.devicePixelRatio || 1, 2))
      const width = Math.max(1, Math.round(rect.width * dpr))
      const height = Math.max(1, Math.round(rect.height * dpr))
      if (canvas.width !== width || canvas.height !== height) {
        canvas.width = width
        canvas.height = height
      }

      gl.viewport(0, 0, canvas.width, canvas.height)
      gl.clearColor(0, 0, 0, 0)
      gl.clear(gl.COLOR_BUFFER_BIT)
      gl.enable(gl.BLEND)
      gl.blendFunc(gl.SRC_ALPHA, gl.ONE_MINUS_SRC_ALPHA)

      for (const [key, value] of Object.entries(STATIC_UNIFORMS)) {
        const location = gl.getUniformLocation(program, key)
        setUniform(gl, location, value)
      }

      const elapsed = now - startTime
      const n = COLOR_STOPS.length
      const lastIndex = n - 1
      for (let i = 0; i < n; i++) {
        const loc = gl.getUniformLocation(program, `u_stop_${i}_color`)
        if (i === lastIndex) {
          setUniform(gl, loc, COLOR_STOPS[lastIndex] ?? [0, 0, 0])
          continue
        }
        const offset = (i / lastIndex) * Math.PI * 2
        const phase = (Math.sin(elapsed * 0.0009 + offset) * 0.5 + 0.5) * OSCILLATION
        const next = (i + 1) % lastIndex
        const color = lerpColor(COLOR_STOPS[i] ?? [0, 0, 0], COLOR_STOPS[next] ?? [0, 0, 0], phase)
        setUniform(gl, loc, color)
      }

      const timeLoc = gl.getUniformLocation(program, 'u_time')
      if (timeLoc) {
        gl.uniform1f(timeLoc, elapsed)
      }

      const aspectLoc = gl.getUniformLocation(program, 'u_aspect')
      if (aspectLoc) {
        gl.uniform1f(aspectLoc, width / height)
      }

      gl.drawArrays(gl.TRIANGLE_STRIP, 0, 4)
      rafId = requestAnimationFrame(render)
    }

    rafId = requestAnimationFrame(render)

    return () => {
      cancelAnimationFrame(rafId)
      gl.deleteBuffer(buffer)
      gl.deleteProgram(program)
    }
  }, [])

  return (
    <canvas
      ref={canvasRef}
      style={{ width: '100%', height: '100%', display: 'block' }}
      aria-label="Static sky canvas"
    />
  )
}
