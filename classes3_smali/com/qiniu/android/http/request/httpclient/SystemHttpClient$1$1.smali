.class Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1$1;
.super Ljava/lang/Object;
.source "SystemHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1;

.field final synthetic val$response:Lokhttp3/Response;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1;Lokhttp3/Response;)V
    .registers 3

    .line 116
    iput-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1$1;->this$1:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1;

    iput-object p2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1$1;->val$response:Lokhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1$1;->this$1:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1;

    iget-object v0, v0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {v0}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$100(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/request/Request;

    move-result-object v1

    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1$1;->val$response:Lokhttp3/Response;

    iget-object v3, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1$1;->this$1:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1;

    iget-object v3, v3, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {v3}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$200(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$400(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;Lcom/qiniu/android/http/request/Request;Lokhttp3/Response;Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;)V

    return-void
.end method
