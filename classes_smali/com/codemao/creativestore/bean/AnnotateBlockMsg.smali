.class public Lcom/codemao/creativestore/bean/AnnotateBlockMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "AnnotateBlockMsg.java"


# instance fields
.field private confirm:Z

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 10
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/codemao/creativestore/bean/AnnotateBlockMsg;->text:Ljava/lang/String;

    .line 12
    iput-boolean p2, p0, Lcom/codemao/creativestore/bean/AnnotateBlockMsg;->confirm:Z

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/codemao/creativestore/bean/AnnotateBlockMsg;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isConfirm()Z
    .registers 2

    .line 16
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/AnnotateBlockMsg;->confirm:Z

    return v0
.end method

.method public setConfirm(Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/AnnotateBlockMsg;->confirm:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/codemao/creativestore/bean/AnnotateBlockMsg;->text:Ljava/lang/String;

    return-void
.end method
