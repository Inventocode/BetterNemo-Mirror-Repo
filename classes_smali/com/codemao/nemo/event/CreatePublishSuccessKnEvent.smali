.class public Lcom/codemao/nemo/event/CreatePublishSuccessKnEvent;
.super Ljava/lang/Object;
.source "CreatePublishSuccessKnEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public workId:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/codemao/nemo/event/CreatePublishSuccessKnEvent;->workId:J

    return-void
.end method
