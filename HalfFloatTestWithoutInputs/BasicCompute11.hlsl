struct BufType
{
	matrix<min16float, 4, 4> f;
};

matrix<min16float, 4, 4> a = { 0.21, 0.45, 0.25, 9.00,
2.09, 9.05, 3.45, 6.54,
0.98, 8.04, 7.56, 8.00,
0.56, 0.98, 5.03, 9.03 };

matrix<min16float, 4, 4> b = { 5.93, 0.56, 8.90, 0.89,
8.34, 5.43, 0.73, 0.24,
0.34, 5.89, 7.24, 5.89,
0.45, 8.34, 2.34, 4.56 };

matrix<min16float, 4, 4> c = { 2.21, 0.95, 0.25, 7.00,
2.76, 9.05, 8.45, 6.54,
0.98, 8.45, 6.76, 8.92,
0.56, 6.98, 5.03, 4.03 };

matrix<min16float, 4, 4> d = { 8.93, 4.56, 8.90, 1.89,
8.34, 5.43, 3.73, 0.24,
0.94, 5.89, 7.24, 5.29,
1.45, 1.34, 1.34, 4.96 };

RWStructuredBuffer<BufType> BufferOut : register(u0);

[numthreads(1, 1, 1)]
void CSMain(uint3 DTid : SV_DispatchThreadID)
{
	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f = 0.23 * (DTid.x * 256 + j) * a * b * c * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 1.23 * (DTid.x * 256 + j) *b * c * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 0.43 * (DTid.x * 256 + j) * a * c * c * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 5.63 * (DTid.x * 256 + j) * a * d * b * c * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 3.83 * (DTid.x * 256 + j) * a * b * c * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 0.23 * (DTid.x * 256 + j) * a * b * b * c * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 9.23 * (DTid.x * 256 + j) * a * b * c * d;
	}


	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 3.33 * (DTid.x * 256 + j) * a * b * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 5.26 * (DTid.x * 256 + j) * a * b * b * c * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 2.23 * (DTid.x * 256 + j) * a * c * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 8.23 * (DTid.x * 256 + j) * a * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 6.25 * (DTid.x * 256 + j) * c * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 6.27 * (DTid.x * 256 + j) * a * b * c;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 1.23 * (DTid.x * 256 + j) *b * c * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 0.43 * (DTid.x * 256 + j) * a * c * c * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 5.63 * (DTid.x * 256 + j) * a * d * b * c * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 3.83 * (DTid.x * 256 + j) * a * b * c * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 0.23 * (DTid.x * 256 + j) * a * b * b * c * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 9.23 * (DTid.x * 256 + j) * a * b * c * d;
	}


	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 3.33 * (DTid.x * 256 + j) * a * b * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 5.26 * (DTid.x * 256 + j) * a * b * b * c * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 2.23 * (DTid.x * 256 + j) * a * c * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 8.23 * (DTid.x * 256 + j) * a * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 6.25 * (DTid.x * 256 + j) * c * d;
	}

	for (int j = 0; j < 256; j++)
	{
		BufferOut[0].f *= 6.27 * (DTid.x * 256 + j) * a * b * c;
	}
}
