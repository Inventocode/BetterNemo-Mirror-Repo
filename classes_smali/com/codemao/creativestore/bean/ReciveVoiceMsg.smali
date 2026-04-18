.class public Lcom/codemao/creativestore/bean/ReciveVoiceMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "ReciveVoiceMsg.java"


# instance fields
.field private level:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 8
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 9
    iput p1, p0, Lcom/codemao/creativestore/bean/ReciveVoiceMsg;->level:I

    return-void
.end method


# virtual methods
.method public getLevel()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/codemao/creativestore/bean/ReciveVoiceMsg;->level:I

    return v0
.end method

.method public setLevel(I)V
    .registers 2

    .line 17
    iput p1, p0, Lcom/codemao/creativestore/bean/ReciveVoiceMsg;->level:I

    return-void
.end method
