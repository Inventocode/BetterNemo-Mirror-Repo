.class public final Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$jsonFetch$1;
.super Ljava/lang/Object;
.source "NetworkJsApi.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->jsonFetch(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $data:Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentData;

.field final synthetic $handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $startTime:J

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentData;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;",
            "Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentData;",
            "J)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$jsonFetch$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$jsonFetch$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$jsonFetch$1;->$data:Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentData;

    iput-wide p4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$jsonFetch$1;->$startTime:J

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 11

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object p1, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;->Companion:Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult$Companion;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult$Companion;->getFailResult(Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;

    move-result-object p1

    .line 85
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1, p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 86
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$jsonFetch$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$jsonFetch$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$jsonFetch$1;->$data:Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentData;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 88
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$jsonFetch$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$jsonFetch$1;->$data:Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentData;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentData;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-wide p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$jsonFetch$1;->$startTime:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->access$sendReport(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;IZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V

    .line 89
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "代理请求失败:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dNetWorkAgent(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 12

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 94
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1, p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 95
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$jsonFetch$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$jsonFetch$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 96
    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$jsonFetch$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$jsonFetch$1;->$data:Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentData;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentData;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$jsonFetch$1;->$startTime:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->access$sendReport(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;IZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V

    .line 97
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "代理请求成功:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dNetWorkAgent(Ljava/lang/String;)V

    return-void
.end method
