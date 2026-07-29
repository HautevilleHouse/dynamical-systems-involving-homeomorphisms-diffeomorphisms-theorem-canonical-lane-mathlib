import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure HomeomorphismObject where
  sourceSpace : Type u
  targetSpace : Type u
  sourceTopology : TopologicalSpace sourceSpace
  targetTopology : TopologicalSpace targetSpace
  map : sourceSpace → targetSpace
  continuous : Continuous map
  inverseMap : targetSpace → sourceSpace
  inverseContinuous : Continuous inverseMap
  compositionIdentity : ∀ (x : sourceSpace), inverseMap (map x) = x
  inverseCompositionIdentity : ∀ (y : targetSpace), map (inverseMap y) = y

structure DiffeomorphismObject (M : Type u) [TopologicalSpace M] [ChartedSpace (ℝ^n) M] [SmoothManifoldWithCorners (ℝ^n) M] where
  map : M → M
  smooth : Smooth (ℝ^n) (ℝ^n) M M map
  inverseMap : M → M
  inverseSmooth : Smooth (ℝ^n) (ℝ^n) M M inverseMap
  compositionIdentity : ∀ (x : M), inverseMap (map x) = x
  inverseCompositionIdentity : ∀ (y : M), map (inverseMap y) = y

structure DynamicalSystem (M : Type u) [TopologicalSpace M] where
  timeDomain : Type v [TopologicalSpace timeDomain] [AddMonoid timeDomain] [ContinuousAdd timeDomain]
  flow : timeDomain → M → M
  flowContinuous : Continuous (Function.uncurry flow)
  flowZero : ∀ (x : M), flow 0 x = x
  flowAdd : ∀ (t s : timeDomain) (x : M), flow (t + s) x = flow t (flow s x)

structure HomeomorphismDiffeomorphismDynamicalSystem (M : Type u) [TopologicalSpace M] [ChartedSpace (ℝ^n) M] [SmoothManifoldWithCorners (ℝ^n) M] where
  ds : DynamicalSystem M
  timeOneMapIsHomeo : HomeomorphismObject M M where
    map := ds.flow 1
    inverseMap := ds.flow (-1)
    -- additional fields assumed
  timeOneMapIsDiffeo : DiffeomorphismObject M where
    map := ds.flow 1
    inverseMap := ds.flow (-1)

structure AnosovProperty (M : Type u) [TopologicalSpace M] [ChartedSpace (ℝ^n) M] [SmoothManifoldWithCorners (ℝ^n) M] (sys : HomeomorphismDiffeomorphismDynamicalSystem M) where
  splitting : ∀ (x : M), Submodule (ℝ) (TangentSpace (ℝ^n) M x)
  invariantSplitting : Prop
  hyperbolicEstimates : Prop

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse