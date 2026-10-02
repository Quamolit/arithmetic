
Arithmetic
----

复数运算模块，使用 `[实部, 虚部]` 数字列表；不提供前端资源或服务部署。

### Usages

```cirru
ns demo $ :require (arithmetic.complex :as complex)

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

需要正式 Calcit 0.27.0、caps 0.1.1、Node.js 24 和 Yarn 4.18.0：

```sh
caps --ci --strict
yarn install --immutable
yarn test
```

`yarn test` 在 native 和生成的 JavaScript 上运行同一组八种运算断言；
定义附属测试使用内置测试入口，不再依赖旧 `calcit-test` 模块。
默认入口为 native，`yarn compile` 显式生成 JS。仅维护 `calcit.cirru` / `deps.cirru`，
`js-out/` 不进入 Git。模块版本仍为 0.0.1，本次 PR 不代表已发布新版本。

迁移提示：旧 `&+`、`&-`、`&*`、`&/` 分别改为 `add`、`subtract`、`multiply`、`divide`，
调用方需要同步改名。极坐标计算使用跨后端 `cos` / `sin`，不再直接调用 JS Math。
复数运算保留原公式；代码中的 `List<Number>` 契约不证明列表长度，调用方仍需提供有效复数对。

https://github.com/calcit-lang/calcit-workflow

### License

MIT
