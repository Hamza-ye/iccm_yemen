import '../../../../presentation/protocols/protocols.dart';
import '../../../../validation/protocols/protocols.dart';
import '../../../builders/builders.dart';
import '../../../composites/composites.dart';

Validation makeChvMalariaCasesListValidation() =>
    ValidationComposite(makeChvMalariaCasesListValidations());

List<FieldValidation> makeChvMalariaCasesListValidations() => [
      // ...ValidationBuilder.field('email').required().email().build(),
      ...ValidationBuilder.field('email').required().build(),
      ...ValidationBuilder.field('password').required().min(3).build()
    ];
