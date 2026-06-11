from setuptools import setup, Extension
import pybind11

# 获取 pybind11 的包含目录
pybind11_include = pybind11.get_include()

# 定义扩展模块
geometry_utils_module = Extension(
    'geometry_utils',  # 模块名称
    sources=['geometry_utils.cpp'],  # 源文件
    include_dirs=[pybind11_include],  # 包含目录
    extra_compile_args=['-std=c++11']  # 编译选项，指定 C++11 标准
)

# 配置 setup
setup(
    name='geometry_utils',  # 包名称
    version='0.1',  # 版本号
    author='Your Name',  # 作者
    author_email='your.email@example.com',  # 作者邮箱
    description='A geometry utility module',  # 描述
    ext_modules=[geometry_utils_module],  # 扩展模块
    install_requires=['pybind11'],  # 依赖项
    setup_requires=['pybind11'],  # 安装时需要的依赖项
    zip_safe=False,  # 不打包为 zip 文件
)