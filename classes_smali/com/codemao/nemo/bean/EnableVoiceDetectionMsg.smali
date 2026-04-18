.class public Lcom/codemao/nemo/bean/EnableVoiceDetectionMsg;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "EnableVoiceDetectionMsg.java"


# instance fields
.field private enable:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnable()Z
    .registers 2

    .line 10
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/EnableVoiceDetectionMsg;->enable:Z

    return v0
.end method

.method public setEnable(Z)V
    .registers 2

    .line 14
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/EnableVoiceDetectionMsg;->enable:Z

    return-void
.end method
