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


# Dependencies

NONE