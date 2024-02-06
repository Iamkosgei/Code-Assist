// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/prompt/data/data_sources/prompt_local_data_source.dart'
    as _i4;
import '../../features/prompt/data/data_sources/prompt_remote_data_source.dart'
    as _i6;
import '../../features/prompt/data/repository/prompt_repository.dart' as _i8;
import '../../features/prompt/domain/repositories/i_prompt_repository.dart'
    as _i7;
import '../../features/prompt/domain/usecases/cache_result.dart' as _i9;
import '../../features/prompt/domain/usecases/delete_cached_result.dart'
    as _i10;
import '../../features/prompt/domain/usecases/get_cached_results.dart' as _i11;
import '../../features/prompt/domain/usecases/get_prompt_result.dart' as _i13;
import '../../features/prompt/presentation/blocs/cached_result_status_cubit/cached_result_status_cubit.dart'
    as _i15;
import '../../features/prompt/presentation/blocs/get_cached_results_cubit/get_cached_results_cubit.dart'
    as _i12;
import '../../features/prompt/presentation/blocs/get_prompt_result_cubit/get_prompt_result_cubit.dart'
    as _i14;
import '../network/dio_client.dart' as _i16;
import '../network/rest_client.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioClient = _$DioClient();
    gh.lazySingleton<_i3.Dio>(() => dioClient.dio);
    gh.factory<_i4.PromptLocalDataSource>(
        () => _i4.PromptRemoteDataSourceImpl());
    gh.factory<_i5.RestClient>(() => _i5.RestClient(gh<_i3.Dio>()));
    gh.factory<_i6.PromptRemoteDataSource>(
        () => _i6.PromptRemoteDataSourceImpl(gh<_i5.RestClient>()));
    gh.factory<_i7.IPromptRepository>(() => _i8.PromptRepository(
          gh<_i6.PromptRemoteDataSource>(),
          gh<_i4.PromptLocalDataSource>(),
        ));
    gh.factory<_i9.CacheResult>(
        () => _i9.CacheResult(gh<_i7.IPromptRepository>()));
    gh.factory<_i10.DeleteCachedResults>(
        () => _i10.DeleteCachedResults(gh<_i7.IPromptRepository>()));
    gh.factory<_i11.GetCachedResults>(
        () => _i11.GetCachedResults(gh<_i7.IPromptRepository>()));
    gh.factory<_i12.GetCachedResultsCubit>(
        () => _i12.GetCachedResultsCubit(gh<_i11.GetCachedResults>()));
    gh.factory<_i13.GetPromptResult>(
        () => _i13.GetPromptResult(gh<_i7.IPromptRepository>()));
    gh.factory<_i14.GetPromptResultCubit>(
        () => _i14.GetPromptResultCubit(gh<_i13.GetPromptResult>()));
    gh.factory<_i15.CachedResultStatusCubit>(() => _i15.CachedResultStatusCubit(
          gh<_i11.GetCachedResults>(),
          gh<_i10.DeleteCachedResults>(),
          gh<_i9.CacheResult>(),
        ));
    return this;
  }
}

class _$DioClient extends _i16.DioClient {}
