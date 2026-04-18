.class public abstract Lcom/codemao/toolssdk/model/dsbridge/cpp/base/ICppWebReturnResultInit;
.super Ljava/lang/Object;
.source "ICppWebReturnResultInit.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSuccessOriginData()Lorg/json/JSONObject;
.end method

.method public abstract setCode$toolssdk_release(I)V
.end method

.method public abstract setErrorMessage$toolssdk_release(Ljava/lang/String;)V
.end method

.method public abstract setSuccessOriginData$toolssdk_release(Lorg/json/JSONObject;)V
.end method
