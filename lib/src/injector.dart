
import 'package:seezn_tv_app/src/data/remote/remote_db.dart';
import 'package:seezn_tv_app/src/domain/repository/remote/remote.dart';
import 'package:seezn_tv_app/src/domain/repository/remote/remote_repo.dart';



// late final OrderRepository repo;
late final UserRepository repository;

Future<void> serviceLocator() async {
  // final db = await LocalDataSourceImpl.init;
  repository = UserRepositoryImpl(network: GetNetwork());
  // repo = OrderRepositoryImpl(dataSource: LocalDataSourceImpl(db:db ));
}