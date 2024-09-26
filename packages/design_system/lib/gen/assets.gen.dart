/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/camera.svg
  SvgGenImage get camera => const SvgGenImage('assets/icons/camera.svg');

  /// File path: assets/icons/check.svg
  SvgGenImage get check => const SvgGenImage('assets/icons/check.svg');

  /// File path: assets/icons/check_done.svg
  SvgGenImage get checkDone => const SvgGenImage('assets/icons/check_done.svg');

  /// File path: assets/icons/copy-success.svg
  SvgGenImage get copySuccess =>
      const SvgGenImage('assets/icons/copy-success.svg');

  /// File path: assets/icons/delete.svg
  SvgGenImage get delete => const SvgGenImage('assets/icons/delete.svg');

  /// File path: assets/icons/done.svg
  SvgGenImage get done => const SvgGenImage('assets/icons/done.svg');

  /// File path: assets/icons/down_arrow.svg
  SvgGenImage get downArrow => const SvgGenImage('assets/icons/down_arrow.svg');

  /// File path: assets/icons/email.svg
  SvgGenImage get email => const SvgGenImage('assets/icons/email.svg');

  /// File path: assets/icons/eyebrow.svg
  SvgGenImage get eyebrow => const SvgGenImage('assets/icons/eyebrow.svg');

  /// File path: assets/icons/forward-arrow.svg
  SvgGenImage get forwardArrow =>
      const SvgGenImage('assets/icons/forward-arrow.svg');

  /// File path: assets/icons/ios_arrow.svg
  SvgGenImage get iosArrow => const SvgGenImage('assets/icons/ios_arrow.svg');

  /// File path: assets/icons/logout.svg
  SvgGenImage get logout => const SvgGenImage('assets/icons/logout.svg');

  /// File path: assets/icons/password.svg
  SvgGenImage get password => const SvgGenImage('assets/icons/password.svg');

  /// File path: assets/icons/receipt-add.svg
  SvgGenImage get receiptAdd =>
      const SvgGenImage('assets/icons/receipt-add.svg');

  /// File path: assets/icons/remove.svg
  SvgGenImage get remove => const SvgGenImage('assets/icons/remove.svg');

  /// File path: assets/icons/scan.svg
  SvgGenImage get scan => const SvgGenImage('assets/icons/scan.svg');

  /// File path: assets/icons/search.svg
  SvgGenImage get search => const SvgGenImage('assets/icons/search.svg');

  /// File path: assets/icons/send.svg
  SvgGenImage get send => const SvgGenImage('assets/icons/send.svg');

  /// File path: assets/icons/setting.svg
  SvgGenImage get setting => const SvgGenImage('assets/icons/setting.svg');

  /// File path: assets/icons/share.svg
  SvgGenImage get share => const SvgGenImage('assets/icons/share.svg');

  /// File path: assets/icons/success_icon.svg
  SvgGenImage get successIcon =>
      const SvgGenImage('assets/icons/success_icon.svg');

  /// File path: assets/icons/switch-camera.svg
  SvgGenImage get switchCamera =>
      const SvgGenImage('assets/icons/switch-camera.svg');

  /// File path: assets/icons/take_photo.svg
  SvgGenImage get takePhoto => const SvgGenImage('assets/icons/take_photo.svg');

  /// File path: assets/icons/thunder.svg
  SvgGenImage get thunder => const SvgGenImage('assets/icons/thunder.svg');

  /// File path: assets/icons/user.svg
  SvgGenImage get user => const SvgGenImage('assets/icons/user.svg');

  /// File path: assets/icons/user_name.svg
  SvgGenImage get userName => const SvgGenImage('assets/icons/user_name.svg');

  /// File path: assets/icons/visible.svg
  SvgGenImage get visible => const SvgGenImage('assets/icons/visible.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        camera,
        check,
        checkDone,
        copySuccess,
        delete,
        done,
        downArrow,
        email,
        eyebrow,
        forwardArrow,
        iosArrow,
        logout,
        password,
        receiptAdd,
        remove,
        scan,
        search,
        send,
        setting,
        share,
        successIcon,
        switchCamera,
        takePhoto,
        thunder,
        user,
        userName,
        visible
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
