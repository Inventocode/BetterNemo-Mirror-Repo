.class public Lcom/codemao/nemo/bean/ExpressionChooseItem;
.super Ljava/lang/Object;
.source "ExpressionChooseItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private expressionChooseItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ExpressionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/bean/ExpressionChooseItem;->expressionChooseItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getExpressionChooseItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ExpressionItem;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/codemao/nemo/bean/ExpressionChooseItem;->expressionChooseItems:Ljava/util/List;

    return-object v0
.end method

.method public setExpressionChooseItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ExpressionItem;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/codemao/nemo/bean/ExpressionChooseItem;->expressionChooseItems:Ljava/util/List;

    return-void
.end method
