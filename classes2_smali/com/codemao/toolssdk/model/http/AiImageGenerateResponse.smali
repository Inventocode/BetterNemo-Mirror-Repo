.class public final Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;
.super Ljava/lang/Object;
.source "AiImageGenerateResponse.kt"


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;",
            ">;"
        }
    .end annotation
.end field

.field private final limit:I

.field private final offset:I

.field private final total:I


# direct methods
.method public constructor <init>(Ljava/util/List;III)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;",
            ">;III)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->items:Ljava/util/List;

    .line 5
    iput p2, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->limit:I

    .line 6
    iput p3, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->offset:I

    .line 7
    iput p4, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->total:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;Ljava/util/List;IIIILjava/lang/Object;)Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->items:Ljava/util/List;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->limit:I

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->offset:I

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->total:I

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->copy(Ljava/util/List;III)Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->items:Ljava/util/List;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->limit:I

    return v0
.end method

.method public final component3()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->offset:I

    return v0
.end method

.method public final component4()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->total:I

    return v0
.end method

.method public final copy(Ljava/util/List;III)Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;",
            ">;III)",
            "Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;-><init>(Ljava/util/List;III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->items:Ljava/util/List;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->items:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->limit:I

    iget v3, p1, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->limit:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->offset:I

    iget v3, p1, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->offset:I

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget v1, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->total:I

    iget p1, p1, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->total:I

    if-eq v1, p1, :cond_2c

    return v2

    :cond_2c
    return v0
.end method

.method public final getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/ItemPaintingTemp;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getLimit()I
    .registers 2

    .line 5
    iget v0, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->limit:I

    return v0
.end method

.method public final getOffset()I
    .registers 2

    .line 6
    iget v0, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->offset:I

    return v0
.end method

.method public final getTotal()I
    .registers 2

    .line 7
    iget v0, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->total:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->items:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->limit:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->offset:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->total:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AiImageGenerateResponse(items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/http/AiImageGenerateResponse;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
