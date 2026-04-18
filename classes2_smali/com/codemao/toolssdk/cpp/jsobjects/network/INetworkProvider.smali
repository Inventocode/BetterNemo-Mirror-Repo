.class public interface abstract Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;
.super Ljava/lang/Object;
.source "INetworkProvider.kt"


# virtual methods
.method public abstract getAgentCacheDir()Ljava/lang/String;
.end method

.method public abstract getHeaderToken()Ljava/lang/String;
.end method

.method public abstract getUploadCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
.end method

.method public abstract getWorkTypeAndEnterFrom()Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
