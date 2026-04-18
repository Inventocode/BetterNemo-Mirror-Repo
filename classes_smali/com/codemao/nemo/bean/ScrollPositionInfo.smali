.class public Lcom/codemao/nemo/bean/ScrollPositionInfo;
.super Ljava/lang/Object;
.source "ScrollPositionInfo.java"


# instance fields
.field private end:I

.field private start:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/codemao/nemo/bean/ScrollPositionInfo;->start:I

    .line 10
    iput p2, p0, Lcom/codemao/nemo/bean/ScrollPositionInfo;->end:I

    return-void
.end method


# virtual methods
.method public getEnd()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/codemao/nemo/bean/ScrollPositionInfo;->end:I

    return v0
.end method

.method public getStart()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/codemao/nemo/bean/ScrollPositionInfo;->start:I

    return v0
.end method

.method public setEnd(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/codemao/nemo/bean/ScrollPositionInfo;->end:I

    return-void
.end method

.method public setStart(I)V
    .registers 2

    .line 18
    iput p1, p0, Lcom/codemao/nemo/bean/ScrollPositionInfo;->start:I

    return-void
.end method

.method public setStartAndEnd(II)V
    .registers 4

    .line 26
    iget v0, p0, Lcom/codemao/nemo/bean/ScrollPositionInfo;->start:I

    if-ltz v0, :cond_6

    if-le v0, p1, :cond_8

    .line 27
    :cond_6
    iput p1, p0, Lcom/codemao/nemo/bean/ScrollPositionInfo;->start:I

    .line 29
    :cond_8
    iget p1, p0, Lcom/codemao/nemo/bean/ScrollPositionInfo;->end:I

    if-ge p1, p2, :cond_e

    .line 30
    iput p2, p0, Lcom/codemao/nemo/bean/ScrollPositionInfo;->end:I

    :cond_e
    return-void
.end method
