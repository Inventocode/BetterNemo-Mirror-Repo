.class Lcom/qiniu/android/http/request/RequestTransaction$13;
.super Ljava/lang/Object;
.source "RequestTransaction.java"

# interfaces
.implements Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/request/RequestTransaction;->uploadPart(ZLjava/lang/String;I[BLcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/request/RequestTransaction;)V
    .registers 2

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldRetry(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)Z
    .registers 7

    const/4 v0, 0x1

    if-nez p2, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    :try_start_5
    const-string v2, "etag"

    .line 421
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_b} :catch_14

    :try_start_b
    const-string v3, "md5"

    .line 422
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_11} :catch_12

    goto :goto_15

    :catch_12
    nop

    goto :goto_15

    :catch_14
    move-object v2, v1

    .line 425
    :goto_15
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p1

    if-eqz p1, :cond_21

    if-eqz v2, :cond_21

    if-nez v1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :cond_21
    :goto_21
    return v0
.end method
