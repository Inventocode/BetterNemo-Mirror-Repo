.class public Lcom/codemao/creativestore/bean/StageSize;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "StageSize.java"


# instance fields
.field private height:D

.field private width:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()D
    .registers 3

    .line 16
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/StageSize;->height:D

    return-wide v0
.end method

.method public getWidth()D
    .registers 3

    .line 8
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/StageSize;->width:D

    return-wide v0
.end method

.method public setHeight(D)V
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/StageSize;->height:D

    return-void
.end method

.method public setWidth(D)V
    .registers 3

    .line 12
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/StageSize;->width:D

    return-void
.end method
