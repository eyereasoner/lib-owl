# lib-owl-p

OWL-P - a lightweight subcollection of the most used OWL vocabulary terms

Ref. Tomaszuki, D. : Inference rules for OWL-P in N3Logic. Communication Papers of the Federated Conference on Computer Science and Information Systems (2018) DOI: [10.15439/2018F102](https://annals-csis.org/Volume_17/drp/pdf/102.pdf)

# Synopsis

```(turtle)
@prefix : <https://example.org/ns#> .
@prefix owl: <http://www.w3.org/2002/07/owl#> .

:Alice :hasParent :Mary .

:hasChild owl:inverseOf :hasParent .
```

entails

```
:Alice :hasParent :Mary .
:Mary :hasChild :Alice .
```

# Usage

Add the `lib-owl-p.n3` to your N3 project and run the eye reasoner. E.g.

```
eye --nope --quiet --pass lib-owl-p.n3 your-file.n3
```

# Vocabulary

## lib-owl-p

**Inference rules for properties**

- [owl:sameAs](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#owl_sameAs)
- [owl:equivalentProperty](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#owl_equivalentProperty) 
- [owl:inverseOf](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#owl_inverseOf)
- [owl:FunctionalProperty](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#owl_FunctionalProperty)
- [owl:InverseFunctionalProperty](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#owl_InverseFunctionalProperty)
- [owl:SymmetricProperty](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#owl_SymmetricProperty)
- [owl:TransitiveProperty](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#owl_TransitiveProperty)

**Inference rules for classes**

- [owl:equivalentClass](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#owl_equivalentClass)
- [owl:disjointWith](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#owl_disjointWith)
- [owl:Class](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#owl_Class)
- [owl:ObjectProperty](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#owl_ObjectProperty)
- [owl:DatatypeProperty](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#owl_DatatypeProperty)

## lib-owl-e

**Inference rules for properties**

- [owl:AllDisjointProperties](https://www.w3.org/TR/owl2-profiles/)
- [owl:AsymmetricProperty](https://www.w3.org/TR/owl2-profiles/)
- [owl:FunctionalProperty](https://www.w3.org/TR/2004/REC-owl-ref-20040210/#FunctionalProperty-def)
- [owl:InverseFunctionalProperty](https://www.w3.org/TR/2004/REC-owl-ref-20040210/#InverseFunctionalProperty-def)
- [owl:IrreflexiveProperty](https://www.w3.org/TR/owl2-profiles/)
- [owl:assertionProperty](https://www.w3.org/TR/owl2-profiles/)
- [owl:SymmetricProperty](https://www.w3.org/TR/2004/REC-owl-ref-20040210/#SymmetricProperty-def)
- [owl:TransitiveProperty](https://www.w3.org/TR/2004/REC-owl-ref-20040210/#TransitiveProperty-def)
- [owl:equivalentProperty](https://www.w3.org/TR/2004/REC-owl-ref-20040210/#equivalentProperty-def)
- [owl:propertyDisjointWith](https://www.w3.org/TR/owl2-profiles/)

**Inference rules for classes**

- [owl:AllDifferent](https://www.w3.org/TR/2004/REC-owl-ref-20040210/#AllDifferent-def)
- [owl:AllDisjointClasses](https://www.w3.org/TR/owl2-profiles/)
- [owl:Nothing](https://www.w3.org/TR/2004/REC-owl-ref-20040210/#Nothing-def)
- [owl:complementOf](https://www.w3.org/TR/2004/REC-owl-ref-20040210/#complementOf-def)
- [owl:differentFrom](https://www.w3.org/TR/2004/REC-owl-ref-20040210/#differentFrom-def)
- [owl:disjointUnionOf]
- [owl:disjointWith](https://www.w3.org/TR/2004/REC-owl-ref-20040210/#disjointWith-def)
- [owl:distinctMembers](https://www.w3.org/TR/2004/REC-owl-ref-20040210/#distinctMembers-def)
- [owl:equivalentClass](https://www.w3.org/TR/2004/REC-owl-ref-20040210/#equivalentClass-def)
- [owl:hasValue](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#hasValue)
- [owl:hasKey](https://www.w3.org/TR/owl2-profiles/)
- [owl:intersectionOf](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#owl_intersectionOf)
- [owl:inverseOf](https://www.w3.org/TR/2004/REC-owl-ref-20040210/#inverseOf-def)
- [owl:maxCardinality](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#owl_maxCardinality)
- [owl:maxQualifiedCardinality](https://www.w3.org/TR/owl2-profiles/)
- [owl:oneOf](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#owl_oneOf)
- [owl:propertyChainAxiom](https://www.w3.org/TR/owl2-profiles/)
- [owl:sameAs](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#owl_sameAs)
- [owl:allValuesFrom](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#allValuesFrom)
- [owl:someValuesFrom](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#allValuesFrom)
- [owl:unionOf](https://www.w3.org/TR/2004/REC-owl-guide-20040210/#owl_unionOf)


# Dependencies

NONE