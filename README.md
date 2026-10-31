
Arithmetic
----

复数运算模块，使用 `[实部, 虚部]` 数字列表；不提供前端资源或服务部署。

使用者影响：CLI 与 `@calcit/procs` 配对升级至正式 **0.32.1**，CI 使用同一版本。
使用者需重新安装依赖并重新生成 JavaScript；模块版本仍为 0.0.1，本 PR 不代表新 tag 或 npm 发布。
主线已采用当前类型标注，本轮官方 formatter 无需再次改写 Snapshot；运算逻辑、公开 `List<Number>` 契约、列表长度约束和原八种运算断言不变。
没有前端资源，不添加 COS/CDN 配置；保留原全部类型门禁与 native/JavaScript 回放。移除已弃用的 --strict-types 开关，默认严格检查不变。

### Usages

```cirru
ns demo $ :require $ arithmetic.complex :as complex

complex/add ([] 1 2) ([] 3 4)
```

Functions:

- `add a b`
- `subtract a b`
- `multiply a b`
- `divide a b`
- `conjugate a`
- `scale a x-scalar`
- `divide-by a x-scalar`, scales down by factor
- `polar-point radian radius`, create a point from radian

### Workflow

需要配对的正式 Calcit / `@calcit/procs` 0.32.1、caps 0.1.1、Node.js 24 和 Yarn 4.18.0：

```sh
caps --ci --strict
yarn install --immutable
caps verify --toolchain
yarn test
```

`yarn test` 在 native 和生成的 JavaScript 上运行同一组八种运算断言；
定义附属测试使用内置测试入口，不再依赖旧 `calcit-test` 模块。
默认入口为 native，`yarn compile` 显式生成 JS。仅维护 `calcit.cirru` / `deps.cirru`，
`js-out/` 不进入 Git。模块版本仍为 0.0.1，本次 PR 不代表已发布新版本。新解析 npm 包至少发布60分钟，无单包例外；已锁版本按 immutable 安装。

迁移提示：旧 `&+`、`&-`、`&*`、`&/` 分别改为 `add`、`subtract`、`multiply`、`divide`，
调用方需要同步改名。极坐标计算使用跨后端 `cos` / `sin`，不再直接调用 JS Math。
复数运算保留原公式；代码中的 `List<Number>` 契约不证明列表长度，调用方仍需提供有效复数对。

此前 0.30.1 迁移：复数除法的旧 `let-sugar` 改为直接的 `let[]` / `let`，
绑定顺序、原公式与公开 API 不变。CI 使用当前默认严格类型检查并显式启用动态方法警告，
检查全部定义及完整 strict，并要求零弃用调用；保留原有八种运算断言和同一组 native/JavaScript 回放。
已有数字列表/数字参数/Unit 入口契约不变，不为迁移添加断言、验证脚本、依赖安全例外或改写规则。
本库没有前端资源，因此不配置 COS/CDN，也没有部署或新 tag 发布操作。

https://github.com/calcit-lang/calcit-workflow

### License

MIT
