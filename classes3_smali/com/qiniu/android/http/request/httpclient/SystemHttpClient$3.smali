.class Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$3;
.super Ljava/lang/Object;
.source "SystemHttpClient.java"

# interfaces
.implements Lcom/qiniu/android/http/ProgressHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;->createRequestBuilder(Lcom/qiniu/android/http/request/IRequestClient$RequestClientProgress;)Lokhttp3/Request$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$progress:Lcom/qiniu/android/http/request/IRequestClient$RequestClientProgress;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/request/httpclient/SystemHttpClient;Lcom/qiniu/android/http/request/IRequestClient$RequestClientProgress;)V
    .registers 3

    .line 227
    iput-object p2, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$3;->val$progress:Lcom/qiniu/android/http/request/IRequestClient$RequestClientProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .registers 6

    .line 230
    iget-object v0, p0, Lcom/qiniu/android/http/request/httpclient/SystemHttpClient$3;->val$progress:Lcom/qiniu/android/http/request/IRequestClient$RequestClientProgress;

    if-eqz v0, :cond_7

    .line 231
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/qiniu/android/http/request/IRequestClient$RequestClientProgress;->progress(JJ)V

    :cond_7
    return-void
.end method
