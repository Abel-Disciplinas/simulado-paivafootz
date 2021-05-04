using Test

include("main.jl")

@testset "Exemplo de testes" begin
  @test bhaskara(1, 0, -1) == (-1.0, 1.0)
  @test bhaskara(1, 4, 3) == (-3.0, -1.0)
  @test bhaskara(1, -4, 3) == (1.0, 3.0)
  @test bhaskara(1, -1, 0) == (0.0, 1.0)
  @test bhaskara(1, -1, -2) == (-1.0, 2.0)

  @test_throws ErrorException bhaskara(0, 1, 1)
  @test_throws ErrorException bhaskara(1, 0, 1)

  for a = [-10, -5, -1, 1, 5, 10]
    @test bhaskara(a, 0, -a) == (-1.0, 1.0)
    @test bhaskara(a, 4a, 3a) == (-3.0, -1.0)
    @test bhaskara(a, -4a, 3a) == (1.0, 3.0)
    @test bhaskara(a, -a, 0) == (0.0, 1.0)
    @test bhaskara(a, -a, -2a) == (-1.0, 2.0)
  end

  for ϵ = 10.0 .^ (0:-1:-8)
    @test [bhaskara(1, -2-ϵ, 1+ϵ)...] ≈ [1, 1+ϵ]
  end
end