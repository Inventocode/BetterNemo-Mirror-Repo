.class Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1;
.super Ljava/lang/Object;
.source "SystemHttpClient.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->request(Lcom/qiniu/android/http/request/Request;ZLcom/qiniu/android/http/ProxyConfiguration;Lcom/qiniu/android/http/request/IRequestClient$RequestClientProgress;Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 6

    .line 104
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 105
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {v1, p2}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$000(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;Ljava/lang/Exception;)I

    move-result p2

    .line 107
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p2, -0x2

    const-string v0, "user cancelled"

    .line 111
    :cond_16
    iget-object p1, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {p1}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$100(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/request/Request;

    move-result-object v1

    iget-object v2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1;->this$0:Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;

    invoke-static {v2}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$200(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;)Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;

    move-result-object v2

    invoke-static {p1, v1, p2, v0, v2}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->access$300(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;Lcom/qiniu/android/http/request/Request;ILjava/lang/String;Lcom/qiniu/android/http/request/IRequestClient$RequestClientCompleteHandler;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    new-instance p1, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1$1;

    invoke-direct {p1, p0, p2}, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1$1;-><init>(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$1;Lokhttp3/Response;)V

    invoke-static {p1}, Lcom/qiniu/android/utils/AsyncRun;->runInBack(Ljava/lang/Runnable;)V

    return-void
.end method
