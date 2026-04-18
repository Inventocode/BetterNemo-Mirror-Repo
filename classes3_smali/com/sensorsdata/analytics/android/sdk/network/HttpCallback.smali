.class public abstract Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;
.super Ljava/lang/Object;
.source "HttpCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$JsonCallback;,
        Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$StringCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static sMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;->sMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAfter()V
.end method

.method onError(Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;)V
    .registers 5

    .line 34
    iget-object v0, p1, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->result:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 35
    iget-object v0, p1, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->result:Ljava/lang/String;

    goto :goto_21

    .line 36
    :cond_b
    iget-object v0, p1, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->errorMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 37
    iget-object v0, p1, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->errorMsg:Ljava/lang/String;

    goto :goto_21

    .line 38
    :cond_16
    iget-object v0, p1, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_1f

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_1f
    const-string v0, "unknown error"

    .line 43
    :goto_21
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;->sMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract onFailure(ILjava/lang/String;)V
.end method

.method public abstract onParseResponse(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract onResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method onSuccess(Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;)V
    .registers 4

    .line 54
    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/network/RealResponse;->result:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;->onParseResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 55
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;->sMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$2;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$2;-><init>(Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
