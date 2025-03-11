import 'package:in_ports/cats_in_ports/get_cats_in_ports.dart';
import 'package:out_ports/cats_out_ports/get_cats_out_ports.dart';
import 'package:domain/cat_domain/cat_domain.dart';

class GetCatUseCase implements GetCatsInPort {
  final GetCatsOutPort _catOutPorts;

  GetCatUseCase(this._catOutPorts);

  @override
  Future<List<CatDomain>> getCat() async {
    return await _catOutPorts.getCat();
  }
}
