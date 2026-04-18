.class public abstract Lcom/codemao/nemo/http/LocalNetCallBackV2;
.super Ljava/lang/Object;
.source "LocalNetCallBackV2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onErr(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onNetError()V
.end method

.method public abstract onSuc(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
