.class public Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;
.super Ljava/lang/Object;
.source "CreateViewLevelVisibleEvent.java"


# instance fields
.field public childType:I

.field public show:Z

.field public type:I


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;->type:I

    .line 11
    iput p2, p0, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;->childType:I

    .line 12
    iput-boolean p3, p0, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;->show:Z

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;->type:I

    .line 17
    iput-boolean p2, p0, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;->show:Z

    return-void
.end method
