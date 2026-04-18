.class public Lcom/codemao/creativestore/bean/ConfirmDialogMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "ConfirmDialogMsg.java"


# instance fields
.field private noText:Ljava/lang/String;

.field private question:Ljava/lang/String;

.field private yesText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getNoText()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ConfirmDialogMsg;->noText:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ConfirmDialogMsg;->question:Ljava/lang/String;

    return-object v0
.end method

.method public getYesText()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ConfirmDialogMsg;->yesText:Ljava/lang/String;

    return-object v0
.end method

.method public setNoText(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ConfirmDialogMsg;->noText:Ljava/lang/String;

    return-void
.end method

.method public setQuestion(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ConfirmDialogMsg;->question:Ljava/lang/String;

    return-void
.end method

.method public setYesText(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ConfirmDialogMsg;->yesText:Ljava/lang/String;

    return-void
.end method
