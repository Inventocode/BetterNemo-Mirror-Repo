.class public final Lcom/codemao/toolssdk/manager/WebViewExtManager$preload$1;
.super Ljava/lang/Object;
.source "WebViewExtManager.kt"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/manager/WebViewExtManager;->preload(Landroid/content/Context;Ljava/lang/String;JLkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $toolType:Ljava/lang/String;

.field final synthetic $url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/WebViewExtManager$preload$1;->$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/WebViewExtManager$preload$1;->$toolType:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/manager/WebViewExtManager$preload$1;->$context:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 6

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object p1, Lcom/codemao/toolssdk/manager/WebViewExtManager;->INSTANCE:Lcom/codemao/toolssdk/manager/WebViewExtManager;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->access$changePreloadStatus(Lcom/codemao/toolssdk/manager/WebViewExtManager;I)V

    .line 67
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/WebViewExtManager$preload$1;->$url:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "预加载json数据请求失败:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, p2}, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->preload(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 7

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 72
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 73
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_21

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    goto :goto_22

    :cond_21
    move-object p2, v0

    :goto_22
    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/WebViewPreload;

    .line 72
    invoke-virtual {p1, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/WebViewPreload;

    .line 75
    sget-object p2, Lcom/codemao/toolssdk/manager/WebViewExtManager;->INSTANCE:Lcom/codemao/toolssdk/manager/WebViewExtManager;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/WebViewPreload;->getUpdate_cache_url()Lcom/codemao/toolssdk/model/dsbridge/UpdateCacheUrl;

    move-result-object p1

    if-eqz p1, :cond_38

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/WebViewExtManager$preload$1;->$toolType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/model/dsbridge/UpdateCacheUrl;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_38
    invoke-static {v0}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->access$setPreloadUrl$p(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->access$getPreloadUrl$p()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_76

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/WebViewExtManager$preload$1;->$context:Landroid/content/Context;

    .line 77
    invoke-static {p2, v0, p1}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->access$loadUrl(Lcom/codemao/toolssdk/manager/WebViewExtManager;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_76

    .line 80
    :cond_47
    sget-object p1, Lcom/codemao/toolssdk/manager/WebViewExtManager;->INSTANCE:Lcom/codemao/toolssdk/manager/WebViewExtManager;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->access$changePreloadStatus(Lcom/codemao/toolssdk/manager/WebViewExtManager;I)V

    .line 81
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    const/4 v0, 0x0

    .line 82
    iget-object v1, p0, Lcom/codemao/toolssdk/manager/WebViewExtManager$preload$1;->$url:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "预加载json数据请求失败:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 81
    invoke-virtual {p1, v0, v1, p2}, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->preload(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_76
    :goto_76
    return-void
.end method
