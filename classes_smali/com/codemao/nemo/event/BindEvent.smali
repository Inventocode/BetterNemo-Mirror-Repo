.class public Lcom/codemao/nemo/event/BindEvent;
.super Ljava/lang/Object;
.source "BindEvent.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Lcom/codemao/nemo/event/BindEvent;
    .registers 1

    .line 10
    new-instance v0, Lcom/codemao/nemo/event/BindEvent;

    invoke-direct {v0}, Lcom/codemao/nemo/event/BindEvent;-><init>()V

    return-object v0
.end method
