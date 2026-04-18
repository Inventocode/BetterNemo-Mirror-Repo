.class public Lcom/codemao/creativestore/bean/CloudVariable;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "CloudVariable.java"


# instance fields
.field public cvid:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public param_type:Ljava/lang/String;

.field public type:I

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method

.method public static create(Lcom/codemao/creativestore/bean/VariableVO;)Lcom/codemao/creativestore/bean/CloudVariable;
    .registers 3

    .line 21
    new-instance v0, Lcom/codemao/creativestore/bean/CloudVariable;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/CloudVariable;-><init>()V

    .line 22
    invoke-virtual {p0}, Lcom/codemao/creativestore/bean/VariableVO;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/CloudVariable;->cvid:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lcom/codemao/creativestore/bean/VariableVO;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/CloudVariable;->name:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Lcom/codemao/creativestore/bean/VariableVO;->getValue()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/CloudVariable;->value:Ljava/lang/Object;

    .line 25
    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1e

    const-string v1, "string"

    goto :goto_20

    :cond_1e
    const-string v1, "number"

    :goto_20
    iput-object v1, v0, Lcom/codemao/creativestore/bean/CloudVariable;->param_type:Ljava/lang/String;

    .line 26
    invoke-virtual {p0}, Lcom/codemao/creativestore/bean/VariableVO;->getType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "public"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    iput p0, v0, Lcom/codemao/creativestore/bean/CloudVariable;->type:I

    return-object v0
.end method
