.class public Lcom/codemao/nemo/event/ShareEvents;
.super Ljava/lang/Object;
.source "ShareEvents.java"


# instance fields
.field private workId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatShareSuccessEvents(J)Lcom/codemao/nemo/event/ShareEvents;
    .registers 3

    .line 15
    new-instance v0, Lcom/codemao/nemo/event/ShareEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/ShareEvents;-><init>()V

    .line 16
    invoke-virtual {v0, p0, p1}, Lcom/codemao/nemo/event/ShareEvents;->setWorkId(J)V

    return-object v0
.end method


# virtual methods
.method public getWorkId()J
    .registers 3

    .line 21
    iget-wide v0, p0, Lcom/codemao/nemo/event/ShareEvents;->workId:J

    return-wide v0
.end method

.method public setWorkId(J)V
    .registers 3

    .line 25
    iput-wide p1, p0, Lcom/codemao/nemo/event/ShareEvents;->workId:J

    return-void
.end method
