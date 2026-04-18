.class public Lcom/codemao/nemo/event/MineTabEvent;
.super Ljava/lang/Object;
.source "MineTabEvent.java"


# instance fields
.field public bcmSum:I

.field public tabIndex:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/codemao/nemo/event/MineTabEvent;->tabIndex:I

    .line 14
    iput p2, p0, Lcom/codemao/nemo/event/MineTabEvent;->bcmSum:I

    return-void
.end method
