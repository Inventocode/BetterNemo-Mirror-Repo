.class public Lcom/codemao/creativestore/bean/ShowToastMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "ShowToastMsg.java"


# instance fields
.field private position:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getPosition()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ShowToastMsg;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ShowToastMsg;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setPosition(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ShowToastMsg;->position:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ShowToastMsg;->text:Ljava/lang/String;

    return-void
.end method
