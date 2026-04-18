.class public Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "InitWebDateMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StageLocationBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;
    }
.end annotation


# instance fields
.field private fullscreen:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;

.field private normal:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getFullscreen()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;->fullscreen:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;

    return-object v0
.end method

.method public getNormal()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;->normal:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;

    return-object v0
.end method

.method public setFullscreen(Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;->fullscreen:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;

    return-void
.end method

.method public setNormal(Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;->normal:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;

    return-void
.end method
