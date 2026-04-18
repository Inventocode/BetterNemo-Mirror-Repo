.class public Lcom/codemao/creativestore/bean/MaterialActorSubListBean;
.super Ljava/lang/Object;
.source "MaterialActorSubListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:I

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->id:I

    return v0
.end method

.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->items:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .registers 2

    .line 24
    iput p1, p0, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->id:I

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->items:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MaterialActorSubListBean;->name:Ljava/lang/String;

    return-void
.end method
