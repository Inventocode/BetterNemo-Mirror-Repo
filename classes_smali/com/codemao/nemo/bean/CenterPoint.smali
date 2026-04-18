.class public Lcom/codemao/nemo/bean/CenterPoint;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "CenterPoint.java"


# instance fields
.field private x:D

.field private y:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .registers 5

    .line 30
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/codemao/nemo/bean/CenterPoint;->x:D

    .line 32
    iput-wide p3, p0, Lcom/codemao/nemo/bean/CenterPoint;->y:D

    return-void
.end method


# virtual methods
.method public getX()D
    .registers 3

    .line 11
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CenterPoint;->x:D

    return-wide v0
.end method

.method public getY()D
    .registers 3

    .line 19
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CenterPoint;->y:D

    return-wide v0
.end method

.method public setX(D)V
    .registers 3

    .line 15
    iput-wide p1, p0, Lcom/codemao/nemo/bean/CenterPoint;->x:D

    return-void
.end method

.method public setY(D)V
    .registers 3

    .line 23
    iput-wide p1, p0, Lcom/codemao/nemo/bean/CenterPoint;->y:D

    return-void
.end method
