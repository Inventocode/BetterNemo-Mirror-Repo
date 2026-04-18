.class public interface abstract Lcom/codemao/toolssdk/model/dsbridge/cpp/base/ICppWebReturnResult;
.super Ljava/lang/Object;
.source "ICppWebReturnResult.kt"


# virtual methods
.method public abstract getCode()I
.end method

.method public abstract getErrorMessage()Ljava/lang/String;
.end method

.method public abstract getSuccessData(Ljava/lang/Class;)Ljava/lang/Object;
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

.method public abstract isSuccess()Z
.end method
