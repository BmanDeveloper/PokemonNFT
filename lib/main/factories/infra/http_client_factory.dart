import 'package:http/http.dart';
import 'package:pokemon_nft/infra/http/http_adapter.dart';

HttpAdapter makeHttpClient() => HttpAdapter(client: Client());