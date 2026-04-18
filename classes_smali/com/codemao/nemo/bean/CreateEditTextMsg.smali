.class public Lcom/codemao/nemo/bean/CreateEditTextMsg;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "CreateEditTextMsg.java"


# instance fields
.field private text:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/nemo/bean/CreateEditTextMsg;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/bean/CreateEditTextMsg;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/codemao/nemo/bean/CreateEditTextMsg;->text:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/nemo/bean/CreateEditTextMsg;->type:Ljava/lang/String;

    return-void
.end method
