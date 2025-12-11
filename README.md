# Flutter 状态管理演示 (Provider)

本项目演示了如何使用 `provider` 包在 Flutter 应用程序中管理状态。

## 功能特性

- **商品目录 (Catalog)**: 可添加到购物车的商品列表。
- **购物车 (Cart)**: 跟踪已添加商品并计算总价的共享状态。
- **状态管理**: 使用 `ChangeNotifier`、`Provider` 和 `Consumer` 在状态变化时高效更新 UI。

## 项目结构

- `lib/main.dart`: 程序入口。设置 `MultiProvider` 以使状态在全局范围内可用。
- `lib/models/`: 包含数据模型和状态逻辑。
  - `cart.dart`: `CartModel` 类，继承自 `ChangeNotifier`。这是核心状态。
  - `catalog.dart`: `CatalogModel` 类，提供商品列表数据。
- `lib/screens/`: 包含 UI 界面。
  - `catalog_screen.dart`: 显示商品目录。使用 `context.select` 和 `context.read`。
  - `cart_screen.dart`: 显示购物车。使用 `context.watch` 和 `Consumer`。

## 如何运行

1.  确保你已安装 Flutter。
2.  运行 `flutter pub get` 安装依赖。
3.  运行 `flutter run` 启动应用。

## 演示的核心概念

- **状态提升 (Lifting State Up)**: `CartModel` 在组件树的顶部（`MyApp` 中）提供，使其可被任何组件访问。
- **关注点分离 (Separation of Concerns)**: UI 逻辑位于 `screens/` 中，而业务逻辑/状态位于 `models/` 中。
- **响应式 UI (Reactive UI)**: 当状态（`CartModel`）发生变化时，相关组件会自动重建。
