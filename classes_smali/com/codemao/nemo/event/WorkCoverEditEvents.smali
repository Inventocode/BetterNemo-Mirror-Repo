.class public Lcom/codemao/nemo/event/WorkCoverEditEvents;
.super Ljava/lang/Object;
.source "WorkCoverEditEvents.java"


# instance fields
.field private base64Str:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatCoverEditEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/nemo/event/WorkCoverEditEvents;
    .registers 3

    .line 14
    new-instance v0, Lcom/codemao/nemo/event/WorkCoverEditEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/WorkCoverEditEvents;-><init>()V

    .line 15
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/event/WorkCoverEditEvents;->setPath(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/event/WorkCoverEditEvents;->setBase64Str(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBase64Str()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/nemo/event/WorkCoverEditEvents;->base64Str:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/codemao/nemo/event/WorkCoverEditEvents;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setBase64Str(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/codemao/nemo/event/WorkCoverEditEvents;->base64Str:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/codemao/nemo/event/WorkCoverEditEvents;->path:Ljava/lang/String;

    return-void
.end method
