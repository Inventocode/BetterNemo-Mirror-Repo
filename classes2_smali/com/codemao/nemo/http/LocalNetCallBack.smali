.class public abstract Lcom/codemao/nemo/http/LocalNetCallBack;
.super Lcn/codemao/android/http/SimpleResponse;
.source "LocalNetCallBack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/codemao/android/http/SimpleResponse<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcn/codemao/android/http/SimpleResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onErr(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSuc(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/http/LocalNetCallBack;->onSuc(Ljava/lang/Object;)V

    return-void
.end method
