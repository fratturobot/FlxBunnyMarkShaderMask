package;

import openfl.display.GraphicsShader;

class OpenFLInvertShader extends GraphicsShader
{
	@:glFragmentSource('
		#pragma header

		void main()
		{
			vec4 color = texture2D(bitmap, openfl_TextureCoordv);
			gl_FragColor = vec4((vec3(1.0) - color.rgb) * color.a, color.a);
        }')
        
    
	public function new()
	{
		super();
	}
}