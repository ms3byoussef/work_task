import 'package:bnbl/feature/data/remote/datasource/add_transaction_remote_data_source.dart';
import 'package:bnbl/feature/data/remote/services/add_transaction_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AddTransactionRemoteDataSource)
class AddTransactionRemoteDataSourceImpl
    implements AddTransactionRemoteDataSource {
  final AddTransactionService _service;

  const AddTransactionRemoteDataSourceImpl(this._service);

  @override
  addTransaction() async {
    return await _service.addTransaction();
  }
}
