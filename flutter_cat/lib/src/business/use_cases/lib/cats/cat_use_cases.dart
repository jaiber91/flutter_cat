import 'package:in_ports/cats/in_ports.dart';
import 'package:out_ports/cats/out_ports.dart';
import 'package:domain/cat/cat_domain.dart';

class GetCatUseCase implements CatInPorts {
  final CatOutPorts _catOutPorts;

  GetCatUseCase(this._catOutPorts);

  @override
  Future<List<CatDomain>> getCat() async {
    return await _catOutPorts.getCat();
  }
}
