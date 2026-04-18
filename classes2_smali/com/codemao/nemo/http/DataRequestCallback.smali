.class public abstract Lcom/codemao/nemo/http/DataRequestCallback;
.super Ljava/lang/Object;
.source "DataRequestCallback.kt"

# interfaces
.implements Lcom/ljwx/baseapp/vm/BaseDataRequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ljwx/baseapp/vm/BaseDataRequestCallback<",
        "TD;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    return-void
.end method

.method public onFail(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    return-void
.end method
