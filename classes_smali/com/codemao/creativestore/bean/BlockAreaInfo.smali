.class public Lcom/codemao/creativestore/bean/BlockAreaInfo;
.super Ljava/lang/Object;
.source "BlockAreaInfo.java"


# instance fields
.field private bottom:F

.field private height:F

.field private left:F

.field private ratio:D

.field private right:F

.field private top:F

.field private width:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottom()I
    .registers 5

    .line 46
    iget v0, p0, Lcom/codemao/creativestore/bean/BlockAreaInfo;->bottom:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/codemao/creativestore/bean/BlockAreaInfo;->ratio:D

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getHeight()F
    .registers 2

    .line 54
    iget v0, p0, Lcom/codemao/creativestore/bean/BlockAreaInfo;->height:F

    return v0
.end method

.method public getLeft()I
    .registers 5

    .line 30
    iget v0, p0, Lcom/codemao/creativestore/bean/BlockAreaInfo;->left:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/codemao/creativestore/bean/BlockAreaInfo;->ratio:D

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getRatio()D
    .registers 3

    .line 14
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/BlockAreaInfo;->ratio:D

    return-wide v0
.end method

.method public getRight()I
    .registers 5

    .line 38
    iget v0, p0, Lcom/codemao/creativestore/bean/BlockAreaInfo;->right:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/codemao/creativestore/bean/BlockAreaInfo;->ratio:D

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getTop()I
    .registers 5

    .line 22
    iget v0, p0, Lcom/codemao/creativestore/bean/BlockAreaInfo;->top:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/codemao/creativestore/bean/BlockAreaInfo;->ratio:D

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getWidth()F
    .registers 2

    .line 62
    iget v0, p0, Lcom/codemao/creativestore/bean/BlockAreaInfo;->width:F

    return v0
.end method

.method public setBottom(F)V
    .registers 2

    .line 50
    iput p1, p0, Lcom/codemao/creativestore/bean/BlockAreaInfo;->bottom:F

    return-void
.end method

.method public setHeight(F)V
    .registers 2

    .line 58
    iput p1, p0, Lcom/codemao/creativestore/bean/BlockAreaInfo;->height:F

    return-void
.end method

.method public setLeft(F)V
    .registers 2

    .line 34
    iput p1, p0, Lcom/codemao/creativestore/bean/BlockAreaInfo;->left:F

    return-void
.end method

.method public setRatio(D)V
    .registers 3

    .line 18
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/BlockAreaInfo;->ratio:D

    return-void
.end method

.method public setRight(F)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/codemao/creativestore/bean/BlockAreaInfo;->right:F

    return-void
.end method

.method public setTop(F)V
    .registers 2

    .line 26
    iput p1, p0, Lcom/codemao/creativestore/bean/BlockAreaInfo;->top:F

    return-void
.end method

.method public setWidth(F)V
    .registers 2

    .line 66
    iput p1, p0, Lcom/codemao/creativestore/bean/BlockAreaInfo;->width:F

    return-void
.end method
