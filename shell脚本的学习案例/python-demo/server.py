import flask
import json
from flask import request

app = flask.Flask(__name__)
# 启用调试模式，进行热更新，或者export FLASK_ENV=development
app.debug = True

@app.route('/',methods=['GET','POST'])
def index():
    # 从request中获取请求体的数据,类型为string
    data=request.get_data()
    # 转换为list 或 dict 类型
    xs=json.loads(data)

    # 获取最新提交的用户名
    print(xs['user_name'])
    # 获取提交的message
    print(xs['head_commit']['message'])
    # 获取推送的分支名称
    print(xs['ref']) # eg: refs/heads/master
    return "success"

app.run(host='0.0.0.0',port='5000')