.class public Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData;
.super Ljava/lang/Object;
.source "AddCollectionMaterialRequestData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData$ItemsBean;
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData$ItemsBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData$ItemsBean;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData;->items:Ljava/util/List;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData$ItemsBean;",
            ">;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/AddCollectionMaterialRequestData;->items:Ljava/util/List;

    return-void
.end method
