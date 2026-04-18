.class public Lcom/codemao/nemo/bean/ScrollNumInfo;
.super Ljava/lang/Object;
.source "ScrollNumInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private num:Ljava/lang/String;

.field private posintionYs:[F

.field private posionX:F

.field private startPosition:I

.field private time:I

.field private totalMoveY:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/codemao/nemo/bean/ScrollNumInfo;->time:I

    .line 13
    iput v0, p0, Lcom/codemao/nemo/bean/ScrollNumInfo;->startPosition:I

    return-void
.end method


# virtual methods
.method public getNum()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/nemo/bean/ScrollNumInfo;->num:Ljava/lang/String;

    return-object v0
.end method

.method public getPosintionYs()[F
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/codemao/nemo/bean/ScrollNumInfo;->posintionYs:[F

    return-object v0
.end method

.method public getPosionX()F
    .registers 2

    .line 48
    iget v0, p0, Lcom/codemao/nemo/bean/ScrollNumInfo;->posionX:F

    return v0
.end method

.method public getTime()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/codemao/nemo/bean/ScrollNumInfo;->time:I

    return v0
.end method

.method public getTotalMoveY()F
    .registers 2

    .line 20
    iget v0, p0, Lcom/codemao/nemo/bean/ScrollNumInfo;->totalMoveY:F

    return v0
.end method

.method public setNum(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/codemao/nemo/bean/ScrollNumInfo;->num:Ljava/lang/String;

    return-void
.end method

.method public setPosintionYs([F)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/codemao/nemo/bean/ScrollNumInfo;->posintionYs:[F

    return-void
.end method

.method public setPosionX(F)V
    .registers 2

    .line 52
    iput p1, p0, Lcom/codemao/nemo/bean/ScrollNumInfo;->posionX:F

    return-void
.end method

.method public setTime(I)V
    .registers 2

    .line 32
    iput p1, p0, Lcom/codemao/nemo/bean/ScrollNumInfo;->time:I

    return-void
.end method

.method public setTotalMoveY(F)V
    .registers 2

    .line 24
    iput p1, p0, Lcom/codemao/nemo/bean/ScrollNumInfo;->totalMoveY:F

    return-void
.end method
