.class public Lcom/codemao/creativestore/bean/TiltMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "TiltMsg.java"


# instance fields
.field private alpha:D

.field private beta:D

.field private gamma:D


# direct methods
.method public constructor <init>(DDD)V
    .registers 7

    .line 8
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/TiltMsg;->alpha:D

    .line 10
    iput-wide p3, p0, Lcom/codemao/creativestore/bean/TiltMsg;->beta:D

    .line 11
    iput-wide p5, p0, Lcom/codemao/creativestore/bean/TiltMsg;->gamma:D

    return-void
.end method


# virtual methods
.method public getAlpha()D
    .registers 3

    .line 15
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/TiltMsg;->alpha:D

    return-wide v0
.end method

.method public getBeta()D
    .registers 3

    .line 23
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/TiltMsg;->beta:D

    return-wide v0
.end method

.method public getGamma()D
    .registers 3

    .line 31
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/TiltMsg;->gamma:D

    return-wide v0
.end method

.method public setAlpha(D)V
    .registers 3

    .line 19
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/TiltMsg;->alpha:D

    return-void
.end method

.method public setBeta(D)V
    .registers 3

    .line 27
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/TiltMsg;->beta:D

    return-void
.end method

.method public setGamma(D)V
    .registers 3

    .line 35
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/TiltMsg;->gamma:D

    return-void
.end method
