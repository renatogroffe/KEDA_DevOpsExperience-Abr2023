# RabbitMQ Scaler
Objetos para Deployment de um Worker Service (contagem de acessos) no Kubernetes utilizando KEDA, Helm, RabbitMQ, SQL Server, Application Insights e .NET 7.

---

Worker Service para consumo de **mensagens vinculadas a uma fila do RabbitMQ** (imagem **renatogroffe/workercontagem-rabbitmq-sql-appinsights-dotnet7**) - é justamente esta aplicação que será escalada via **KEDA**:

**https://github.com/renatogroffe/DotNet7-WorkerService-RabbitMQ-SqlServer-AppInsights_ContagemAcessos**

Projeto que serviu de base para o **envio de mensagens a uma fila do RabbitMQ** (imagem **renatogroffe/apicontagem-rabbitmq-appinsights-dotnet7**):

**https://github.com/renatogroffe/ASPNETCore7-REST_API-AppInsights-RabbitMQ_ContagemAcessos**

Para os testes de carga que escalam a aplicação utilizei o pacote npm [**loadtest**](https://www.npmjs.com/package/loadtest). O exemplo a seguir procederá com o envio de **20 mil requisições**, simulando **100 usuários concorrentes**:

**loadtest -c 100 -n 20000 -k** ***ENDPOINT***
