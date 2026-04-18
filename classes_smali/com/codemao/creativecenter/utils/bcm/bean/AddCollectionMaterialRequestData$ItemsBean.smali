.class public Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData$ItemsBean;
.super Ljava/lang/Object;
.source "AddCollectionMaterialRequestData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemsBean"
.end annotation


# instance fields
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


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResource_name()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData$ItemsBean;->resource_name:Ljava/lang/String;

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

    .line 39
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData$ItemsBean;->resource_url:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData$ItemsBean;->type:I

    return v0
.end method

.method public setResource_name(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData$ItemsBean;->resource_name:Ljava/lang/String;

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

    .line 43
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData$ItemsBean;->resource_url:Ljava/util/List;

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData$ItemsBean;->type:I

    return-void
.end method
