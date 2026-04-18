.class public Lcom/codemao/creativestore/bean/CenterPoint;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "CenterPoint.java"


# instance fields
.field private x:D

.field private y:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .registers 5

    .line 29
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/CenterPoint;->x:D

    .line 31
    iput-wide p3, p0, Lcom/codemao/creativestore/bean/CenterPoint;->y:D

    return-void
.end method


# virtual methods
.method public getX()D
    .registers 3

    .line 10
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/CenterPoint;->x:D

    return-wide v0
.end method

.method public getY()D
    .registers 3

    .line 18
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/CenterPoint;->y:D

    return-wide v0
.end method

.method public setX(D)V
    .registers 3

    .line 14
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/CenterPoint;->x:D

    return-void
.end method

.method public setY(D)V
    .registers 3

    .line 22
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/CenterPoint;->y:D

    return-void
.end method
