.class public Lcom/codemao/nemo/bean/ExpressionItem;
.super Ljava/lang/Object;
.source "ExpressionItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private expString:Ljava/lang/String;

.field private resourceId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/codemao/nemo/bean/ExpressionItem;->resourceId:I

    .line 16
    iput-object p2, p0, Lcom/codemao/nemo/bean/ExpressionItem;->expString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/codemao/nemo/util/ExpressionUtil;->getInstance()Lcom/codemao/nemo/util/ExpressionUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/util/ExpressionUtil;->getExpressionId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/bean/ExpressionItem;->resourceId:I

    .line 21
    iput-object p1, p0, Lcom/codemao/nemo/bean/ExpressionItem;->expString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExpString()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/nemo/bean/ExpressionItem;->expString:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/codemao/nemo/bean/ExpressionItem;->resourceId:I

    return v0
.end method

.method public setExpString(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/codemao/nemo/bean/ExpressionItem;->expString:Ljava/lang/String;

    return-void
.end method

.method public setResourceId(I)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/codemao/nemo/bean/ExpressionItem;->resourceId:I

    return-void
.end method
