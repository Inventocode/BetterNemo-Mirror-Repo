.class public Lcom/codemao/nemo/util/ExpressionUtil;
.super Ljava/lang/Object;
.source "ExpressionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/util/ExpressionUtil$SingletonHoler;
    }
.end annotation


# instance fields
.field private adExpressionMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bcmExpressionMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expressionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ldhExpressionMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private msmExpressionMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private xnmExpressionMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/codemao/nemo/util/ExpressionUtil$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/util/ExpressionUtil$1;-><init>(Lcom/codemao/nemo/util/ExpressionUtil;)V

    iput-object v0, p0, Lcom/codemao/nemo/util/ExpressionUtil;->expressionMap:Ljava/util/HashMap;

    .line 150
    new-instance v0, Lcom/codemao/nemo/util/ExpressionUtil$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/util/ExpressionUtil$2;-><init>(Lcom/codemao/nemo/util/ExpressionUtil;)V

    iput-object v0, p0, Lcom/codemao/nemo/util/ExpressionUtil;->bcmExpressionMap:Ljava/util/LinkedHashMap;

    .line 170
    new-instance v0, Lcom/codemao/nemo/util/ExpressionUtil$3;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/util/ExpressionUtil$3;-><init>(Lcom/codemao/nemo/util/ExpressionUtil;)V

    iput-object v0, p0, Lcom/codemao/nemo/util/ExpressionUtil;->msmExpressionMap:Ljava/util/LinkedHashMap;

    .line 187
    new-instance v0, Lcom/codemao/nemo/util/ExpressionUtil$4;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/util/ExpressionUtil$4;-><init>(Lcom/codemao/nemo/util/ExpressionUtil;)V

    iput-object v0, p0, Lcom/codemao/nemo/util/ExpressionUtil;->adExpressionMap:Ljava/util/LinkedHashMap;

    .line 205
    new-instance v0, Lcom/codemao/nemo/util/ExpressionUtil$5;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/util/ExpressionUtil$5;-><init>(Lcom/codemao/nemo/util/ExpressionUtil;)V

    iput-object v0, p0, Lcom/codemao/nemo/util/ExpressionUtil;->ldhExpressionMap:Ljava/util/LinkedHashMap;

    .line 219
    new-instance v0, Lcom/codemao/nemo/util/ExpressionUtil$6;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/util/ExpressionUtil$6;-><init>(Lcom/codemao/nemo/util/ExpressionUtil;)V

    iput-object v0, p0, Lcom/codemao/nemo/util/ExpressionUtil;->xnmExpressionMap:Ljava/util/LinkedHashMap;

    .line 28
    invoke-direct {p0}, Lcom/codemao/nemo/util/ExpressionUtil;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/nemo/util/ExpressionUtil$1;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/codemao/nemo/util/ExpressionUtil;-><init>()V

    return-void
.end method

.method private getExpItems(Ljava/util/LinkedHashMap;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ExpressionChooseItem;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    new-instance v1, Lcom/codemao/nemo/bean/ExpressionChooseItem;

    invoke-direct {v1}, Lcom/codemao/nemo/bean/ExpressionChooseItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 266
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 267
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v6, 0xc

    if-ne v2, v6, :cond_43

    add-int/lit8 v3, v3, 0x1

    .line 270
    new-instance v2, Lcom/codemao/nemo/bean/ExpressionChooseItem;

    invoke-direct {v2}, Lcom/codemao/nemo/bean/ExpressionChooseItem;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 273
    :cond_43
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/nemo/bean/ExpressionChooseItem;

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/ExpressionChooseItem;->getExpressionChooseItems()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/codemao/nemo/bean/ExpressionItem;

    invoke-direct {v7, v5, v4}, Lcom/codemao/nemo/bean/ExpressionItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_58
    return-object v0
.end method

.method public static getInstance()Lcom/codemao/nemo/util/ExpressionUtil;
    .registers 1

    .line 18
    invoke-static {}, Lcom/codemao/nemo/util/ExpressionUtil$SingletonHoler;->access$000()Lcom/codemao/nemo/util/ExpressionUtil;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .registers 1

    return-void
.end method


# virtual methods
.method public getAduanExp()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ExpressionChooseItem;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/codemao/nemo/util/ExpressionUtil;->adExpressionMap:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/util/ExpressionUtil;->getExpItems(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCodemaoExp()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ExpressionChooseItem;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/codemao/nemo/util/ExpressionUtil;->bcmExpressionMap:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/util/ExpressionUtil;->getExpItems(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExpressionId(Ljava/lang/String;)I
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/codemao/nemo/util/ExpressionUtil;->expressionMap:Ljava/util/HashMap;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 38
    iget-object v0, p0, Lcom/codemao/nemo/util/ExpressionUtil;->expressionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1a

    :cond_17
    const p1, 0x7f080389

    :goto_1a
    return p1
.end method

.method public getLdhExp()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ExpressionChooseItem;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/codemao/nemo/util/ExpressionUtil;->ldhExpressionMap:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/util/ExpressionUtil;->getExpItems(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMsMaoExp()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ExpressionChooseItem;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/codemao/nemo/util/ExpressionUtil;->msmExpressionMap:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/util/ExpressionUtil;->getExpItems(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getXnmExp()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ExpressionChooseItem;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/codemao/nemo/util/ExpressionUtil;->xnmExpressionMap:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/util/ExpressionUtil;->getExpItems(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
