.class public Lcom/codemao/nemo/event/MainStartEvent;
.super Ljava/lang/Object;
.source "MainStartEvent.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Lcom/codemao/nemo/event/MainStartEvent;
    .registers 1

    .line 10
    new-instance v0, Lcom/codemao/nemo/event/MainStartEvent;

    invoke-direct {v0}, Lcom/codemao/nemo/event/MainStartEvent;-><init>()V

    return-object v0
.end method
