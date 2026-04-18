.class public final Lcom/codemao/nemo/bean/HeaderBannerData;
.super Ljava/lang/Object;
.source "HeaderBannerData.kt"


# instance fields
.field private final datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final type:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "datas"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/codemao/nemo/bean/HeaderBannerData;->type:I

    iput-object p2, p0, Lcom/codemao/nemo/bean/HeaderBannerData;->datas:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_5

    const/4 p1, -0x1

    .line 10
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/bean/HeaderBannerData;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/HeaderBannerData;ILjava/util/List;ILjava/lang/Object;)Lcom/codemao/nemo/bean/HeaderBannerData;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/codemao/nemo/bean/HeaderBannerData;->type:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/codemao/nemo/bean/HeaderBannerData;->datas:Ljava/util/List;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/bean/HeaderBannerData;->copy(ILjava/util/List;)Lcom/codemao/nemo/bean/HeaderBannerData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 2

    iget v0, p0, Lcom/codemao/nemo/bean/HeaderBannerData;->type:I

    return v0
.end method

.method public final component2()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/nemo/bean/HeaderBannerData;->datas:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ILjava/util/List;)Lcom/codemao/nemo/bean/HeaderBannerData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/codemao/nemo/bean/HeaderBannerData;"
        }
    .end annotation

    const-string v0, "datas"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/nemo/bean/HeaderBannerData;

    invoke-direct {v0, p1, p2}, Lcom/codemao/nemo/bean/HeaderBannerData;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/HeaderBannerData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/HeaderBannerData;

    iget v1, p0, Lcom/codemao/nemo/bean/HeaderBannerData;->type:I

    iget v3, p1, Lcom/codemao/nemo/bean/HeaderBannerData;->type:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/codemao/nemo/bean/HeaderBannerData;->datas:Ljava/util/List;

    iget-object p1, p1, Lcom/codemao/nemo/bean/HeaderBannerData;->datas:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getDatas()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/codemao/nemo/bean/HeaderBannerData;->datas:Ljava/util/List;

    return-object v0
.end method

.method public final getType()I
    .registers 2

    .line 10
    iget v0, p0, Lcom/codemao/nemo/bean/HeaderBannerData;->type:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/codemao/nemo/bean/HeaderBannerData;->type:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/bean/HeaderBannerData;->datas:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeaderBannerData(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/bean/HeaderBannerData;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", datas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/HeaderBannerData;->datas:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
