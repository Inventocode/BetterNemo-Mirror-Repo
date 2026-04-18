.class Lcom/qiniu/android/http/request/RequestTransaction$15;
.super Ljava/lang/Object;
.source "RequestTransaction.java"

# interfaces
.implements Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/request/RequestTransaction;->completeParts(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/request/RequestTransaction;)V
    .registers 2

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldRetry(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)Z
    .registers 3

    .line 488
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
