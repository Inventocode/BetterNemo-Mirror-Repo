.class public Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;
.super Ljava/lang/Object;
.source "CollectionMaterialItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:I

.field private resource_name:Ljava/lang/String;

.field private resource_url:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:I

.field private user_id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;->id:I

    return v0
.end method

.method public getResource_name()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;->resource_name:Ljava/lang/String;

    return-object v0
.end method

.method public getResource_url()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;->resource_url:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;->type:I

    return v0
.end method

.method public getUser_id()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;->user_id:I

    return v0
.end method

.method public setId(I)V
    .registers 2

    .line 28
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;->id:I

    return-void
.end method

.method public setResource_name(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;->resource_name:Ljava/lang/String;

    return-void
.end method

.method public setResource_url(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;->resource_url:Ljava/util/List;

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 52
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;->type:I

    return-void
.end method

.method public setUser_id(I)V
    .registers 2

    .line 36
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CollectionMaterialItem;->user_id:I

    return-void
.end method
