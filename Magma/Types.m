declare type VData;
declare attributes VData: PerfectList,FacesList,FaceTrafoList,ZGens,OKGens,CriticalValueList,NeighbourList,Edges,Barycenters,Stabilizers, n,d , Relations , PerfectNeighbourList , Words, MultFreeList, PerpendicularList, MinimalClasses , faceneu , FaceTupleList, Presentation , GSimplified , GSimplifiedHom , GSimplifiedPro , GSimplifiedToProHom , GNonsimplified , GNonsimplifiedHom , GNonsimplifiedPro , GNonsimplifiedToProHom , GNonsimplifiedToSimplifiedHom , GNonsimplifiedProToSimplifiedProHom , StabilizerPreimages, Lattice;

declare type HermForm;
declare attributes HermForm: Matrix,traceform,MinimalVectors,Minimum,PerfectionRank,IsPositive,Vertices,AllMinVecs,Stabilizer,SLStabilizer,MinClassStabilizer,EvenMinClassStabilizer,TSpaceBasis,TSpaceRat;



intrinsic Print(X::VData)
 {Print procedure for VData.}
 if assigned X`PerfectList then
  output:="Voronoi-Data with ";
  output cat:=IntegerToString(#X`PerfectList);
  output cat:=" perfect form(s).";
  printf output;
 else 
  printf "VData";
 end if;
end intrinsic;

intrinsic Print(F::DAForm)
 {Print procedure for DAForm.}
 printf "DAForm.";
end intrinsic;

intrinsic NewHermForm(A::Mtrx) -> DAForm
 {Create a new DAForm with input matrix A.}
 
 F:=New(HermForm);
 F`Matrix:=A;
 return F;
end intrinsic;

intrinsic 'eq'(A::HermForm,B::HermForm) -> BoolElt
 {}
 return A`Matrix eq B`Matrix;
end intrinsic;

intrinsic Print(F::HermForm)
 {Print procedure for HermForm.}
 require assigned F`Matrix: "There is no matrix assigned to this Hermitian form.";
 print F`Matrix;
end intrinsic;
