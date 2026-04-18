.class public Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "InitWebDateMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativestore/bean/InitWebDateMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StagePositionBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;
    }
.end annotation


# instance fields
.field private landscape:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;

.field private portrait:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getLandscape()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;->landscape:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;

    return-object v0
.end method

.method public getPortrait()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;->portrait:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;

    return-object v0
.end method

.method public setLandscape(Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;->landscape:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;

    return-void
.end method

.method public setPortrait(Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;->portrait:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;

    return-void
.end method
