
struct A {
  1: required double value;
}

struct B {
	1: optional double wat;
	2: optional A other;
	3: optional string name;
}

exception ChangeProcessorException {
    1: string why
}

service TestService {
	B getSomeDangThing(1: string name) throws (1: ChangeProcessorException error)
}