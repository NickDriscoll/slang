uniform RWStructuredBuffer<float> buffer;
            
[shader("compute")]
[numthreads(4, 1, 1)]
void computeA(
uint3 sv_dispatchThreadID : SV_DispatchThreadID)
{
    var input = buffer[sv_dispatchThreadID.x];
    buffer[sv_dispatchThreadID.x] = input + 1.0f;
}
           
[shader("compute")]
[numthreads(4, 1, 1)]
void computeB(
uint3 sv_dispatchThreadID : SV_DispatchThreadID)
{
    var input = buffer[sv_dispatchThreadID.x];
    buffer[sv_dispatchThreadID.x] = input + 2.0f;
}

[shader("compute")]
[numthreads(4, 1, 1)]
void computeC(
uint3 sv_dispatchThreadID : SV_DispatchThreadID)
{
    var input = buffer[sv_dispatchThreadID.x];
    buffer[sv_dispatchThreadID.x] = input + 3.0f;
}
