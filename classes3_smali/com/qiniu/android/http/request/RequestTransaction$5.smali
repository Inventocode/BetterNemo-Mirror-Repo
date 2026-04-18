.class Lcom/qiniu/android/http/request/RequestTransaction$5;
.super Ljava/lang/Object;
.source "RequestTransaction.java"

# interfaces
.implements Lcom/qiniu/android/http/request/handler/RequestShouldRetryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/request/RequestTransaction;->makeBlock(JJ[BZLcom/qiniu/android/http/request/handler/RequestProgressHandler;Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$chunkCrc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/request/RequestTransaction;Ljava/lang/String;)V
    .registers 3

    .line 211
    iput-object p2, p0, Lcom/qiniu/android/http/request/RequestTransaction$5;->val$chunkCrc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldRetry(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)Z
    .registers 8

    const/4 v0, 0x1

    if-nez p2, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    :try_start_5
    const-string v2, "ctx"

    .line 221
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_b} :catch_18

    :try_start_b
    const-string v3, "crc32"

    .line 222
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_15} :catch_16

    goto :goto_19

    :catch_16
    nop

    goto :goto_19

    :catch_18
    move-object v2, v1

    .line 226
    :goto_19
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result p1

    if-eqz p1, :cond_2d

    if-eqz v2, :cond_2d

    if-eqz v1, :cond_2d

    iget-object p1, p0, Lcom/qiniu/android/http/request/RequestTransaction$5;->val$chunkCrc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :cond_2d
    :goto_2d
    return v0
.end method
