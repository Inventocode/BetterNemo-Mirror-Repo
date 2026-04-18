.class public Lcom/codemao/creativestore/bean/EnableVoiceDetectionMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "EnableVoiceDetectionMsg.java"


# instance fields
.field private enable:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnable()Z
    .registers 2

    .line 9
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/EnableVoiceDetectionMsg;->enable:Z

    return v0
.end method

.method public setEnable(Z)V
    .registers 2

    .line 13
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/EnableVoiceDetectionMsg;->enable:Z

    return-void
.end method
