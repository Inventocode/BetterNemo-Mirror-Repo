.class public abstract Lcom/codemao/toolssdk/model/dsbridge/cpp/base/ICppWebReturnResultBridge;
.super Lcom/codemao/toolssdk/model/dsbridge/cpp/base/ICppWebReturnResultInit;
.source "ICppWebReturnResultBridge.kt"

# interfaces
.implements Lcom/codemao/toolssdk/model/dsbridge/cpp/base/ICppWebReturnResult;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/ICppWebReturnResultInit;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract changeResponseSuccess$toolssdk_release(Z)V
.end method

.method public abstract getFromJsonData$toolssdk_release(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getJSONObjectField(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getSuccessDataToString$toolssdk_release()Ljava/lang/String;
.end method

.method public abstract hasJSONObjectField$toolssdk_release(Ljava/lang/String;)Z
.end method

.method public abstract isOtherResponseSuccess$toolssdk_release()Z
.end method
