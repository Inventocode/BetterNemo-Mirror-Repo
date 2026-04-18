.class public abstract Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$StringCallback;
.super Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;
.source "HttpCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StringCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onParseResponse(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 92
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$StringCallback;->onParseResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onParseResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method
