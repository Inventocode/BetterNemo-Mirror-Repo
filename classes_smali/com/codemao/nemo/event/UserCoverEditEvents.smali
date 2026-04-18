.class public Lcom/codemao/nemo/event/UserCoverEditEvents;
.super Ljava/lang/Object;
.source "UserCoverEditEvents.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatCoverEditEvent(Ljava/lang/String;)Lcom/codemao/nemo/event/UserCoverEditEvents;
    .registers 2

    .line 14
    new-instance v0, Lcom/codemao/nemo/event/UserCoverEditEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UserCoverEditEvents;-><init>()V

    .line 15
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/event/UserCoverEditEvents;->setPath(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public setPath(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
