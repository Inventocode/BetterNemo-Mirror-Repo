.class public Lcom/codemao/creativestore/bean/CreateOptionInfo;
.super Ljava/lang/Object;
.source "CreateOptionInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private optionInfo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/codemao/creativestore/bean/CreateOptionInfo;->type:I

    .line 12
    iput-object p2, p0, Lcom/codemao/creativestore/bean/CreateOptionInfo;->optionInfo:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getOptionInfo()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionInfo;->optionInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/codemao/creativestore/bean/CreateOptionInfo;->type:I

    return v0
.end method

.method public setOptionInfo(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionInfo;->optionInfo:Ljava/lang/Object;

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 20
    iput p1, p0, Lcom/codemao/creativestore/bean/CreateOptionInfo;->type:I

    return-void
.end method
