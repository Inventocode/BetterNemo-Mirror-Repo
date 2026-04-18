.class public final Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;
.super Ljava/lang/Object;
.source "DownloadCollectionImageManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadCollectionImageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadCollectionImageManager.kt\ncom/codemao/creativecenter/utils/bcm/MaterialImageListData\n*L\n1#1,355:1\n*E\n"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private status:I

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->name:Ljava/lang/String;

    iput p3, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->type:I

    iput-object p4, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_2f

    instance-of v0, p1, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;

    if-eqz v0, :cond_2d

    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->type:I

    iget v1, p1, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->type:I

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->list:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->list:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 p1, 0x0

    return p1

    :cond_2f
    :goto_2f
    const/4 p1, 0x1

    return p1
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .line 345
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;",
            ">;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()I
    .registers 2

    .line 354
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->status:I

    return v0
.end method

.method public final getType()I
    .registers 2

    .line 347
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->type:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->name:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->type:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->list:Ljava/util/ArrayList;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_27
    add-int/2addr v0, v1

    return v0
.end method

.method public final setStatus(I)V
    .registers 2

    .line 354
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaterialImageListData(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/MaterialImageListData;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
