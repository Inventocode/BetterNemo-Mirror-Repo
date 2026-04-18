.class final Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;
.super Ljava/lang/Object;
.source "OkHttpURLConnection.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/huc/OkHttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NetworkInterceptor"
.end annotation


# instance fields
.field private proceed:Z

.field final synthetic this$0:Lokhttp3/internal/huc/OkHttpURLConnection;


# direct methods
.method constructor <init>(Lokhttp3/internal/huc/OkHttpURLConnection;)V
    .registers 2

    .line 607
    iput-object p1, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 622
    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v1, v1, Lokhttp3/internal/huc/OkHttpURLConnection;->urlFilter:Lokhttp3/internal/URLFilter;

    if-eqz v1, :cond_15

    .line 623
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v2

    invoke-interface {v1, v2}, Lokhttp3/internal/URLFilter;->checkURLPermitted(Ljava/net/URL;)V

    .line 626
    :cond_15
    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    invoke-static {v1}, Lokhttp3/internal/huc/OkHttpURLConnection;->access$000(Lokhttp3/internal/huc/OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 627
    :try_start_1c
    iget-object v2, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lokhttp3/internal/huc/OkHttpURLConnection;->connectPending:Z

    .line 628
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/internal/huc/OkHttpURLConnection;->proxy:Ljava/net/Proxy;

    .line 629
    iget-object v2, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Connection;->handshake()Lokhttp3/Handshake;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/internal/huc/OkHttpURLConnection;->handshake:Lokhttp3/Handshake;

    .line 630
    iget-object v2, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    invoke-static {v2}, Lokhttp3/internal/huc/OkHttpURLConnection;->access$000(Lokhttp3/internal/huc/OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_44
    .catchall {:try_start_1c .. :try_end_44} :catchall_8e

    .line 633
    :goto_44
    :try_start_44
    iget-boolean v2, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->proceed:Z

    if-nez v2, :cond_52

    .line 634
    iget-object v2, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    invoke-static {v2}, Lokhttp3/internal/huc/OkHttpURLConnection;->access$000(Lokhttp3/internal/huc/OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_51} :catch_88
    .catchall {:try_start_44 .. :try_end_51} :catchall_8e

    goto :goto_44

    .line 639
    :cond_52
    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_8e

    .line 642
    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    instance-of v1, v1, Lokhttp3/internal/huc/OutputStreamRequestBody;

    if-eqz v1, :cond_65

    .line 643
    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/huc/OutputStreamRequestBody;

    .line 644
    invoke-virtual {v1, v0}, Lokhttp3/internal/huc/OutputStreamRequestBody;->prepareToSendRequest(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object v0

    .line 647
    :cond_65
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 649
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    invoke-static {v0}, Lokhttp3/internal/huc/OkHttpURLConnection;->access$000(Lokhttp3/internal/huc/OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 650
    :try_start_70
    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    iput-object p1, v1, Lokhttp3/internal/huc/OkHttpURLConnection;->networkResponse:Lokhttp3/Response;

    .line 651
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v2

    invoke-static {v1, v2}, Lokhttp3/internal/huc/OkHttpURLConnection;->access$102(Lokhttp3/internal/huc/OkHttpURLConnection;Ljava/net/URL;)Ljava/net/URL;

    .line 652
    monitor-exit v0

    return-object p1

    :catchall_85
    move-exception p1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_70 .. :try_end_87} :catchall_85

    throw p1

    .line 637
    :catch_88
    :try_start_88
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :catchall_8e
    move-exception p1

    .line 639
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_88 .. :try_end_90} :catchall_8e

    throw p1
.end method

.method public proceed()V
    .registers 3

    .line 612
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    invoke-static {v0}, Lokhttp3/internal/huc/OkHttpURLConnection;->access$000(Lokhttp3/internal/huc/OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 613
    :try_start_8
    iput-boolean v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->proceed:Z

    .line 614
    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpURLConnection$NetworkInterceptor;->this$0:Lokhttp3/internal/huc/OkHttpURLConnection;

    invoke-static {v1}, Lokhttp3/internal/huc/OkHttpURLConnection;->access$000(Lokhttp3/internal/huc/OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 615
    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    throw v1
.end method
