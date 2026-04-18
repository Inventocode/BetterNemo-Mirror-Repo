.class public interface abstract Lcom/ljwx/baseapp/vm/BaseDataRequestCallback;
.super Ljava/lang/Object;
.source "BaseDataRequestCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ljwx/baseapp/vm/BaseDataRequestCallback$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation
.end method
