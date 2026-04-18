.class public final Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;
.super Ljava/lang/Object;
.source "UserAvatarTitleData.kt"

# interfaces
.implements Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;


# instance fields
.field private final des:Ljava/lang/String;

.field private final mItemType:I

.field private final type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .registers 5

    const-string v0, "des"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->type:I

    iput-object p2, p0, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->des:Ljava/lang/String;

    iput p3, p0, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->mItemType:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x1

    .line 15
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;-><init>(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;

    iget v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->type:I

    iget v3, p1, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->type:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->des:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->des:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->mItemType:I

    iget p1, p1, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->mItemType:I

    if-eq v1, p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final getDes()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->des:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->mItemType:I

    return v0
.end method

.method public final getMItemType()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->mItemType:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->type:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->des:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->mItemType:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAvatarTitleData(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", des="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->des:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mItemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->mItemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
