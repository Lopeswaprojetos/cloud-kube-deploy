from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Olá, Mundo! Este é meu serviço web Python em execução em uma instância EC2.'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
