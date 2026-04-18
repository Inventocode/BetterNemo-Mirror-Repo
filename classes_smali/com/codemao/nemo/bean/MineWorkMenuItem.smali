.class public final Lcom/codemao/nemo/bean/MineWorkMenuItem;
.super Ljava/lang/Object;
.source "KnWorkListResponse.kt"


# instance fields
.field private final icon:I

.field private final textColor:I

.field private final title:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->type:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->title:Ljava/lang/String;

    .line 158
    iput p3, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->icon:I

    .line 159
    iput p4, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->textColor:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    const p4, 0x7f0600ac

    .line 159
    invoke-static {p4}, Lcom/blankj/utilcode/util/ColorUtils;->getColor(I)I

    move-result p4

    .line 155
    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/bean/MineWorkMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/MineWorkMenuItem;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)Lcom/codemao/nemo/bean/MineWorkMenuItem;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->type:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->title:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->icon:I

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->textColor:I

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/bean/MineWorkMenuItem;->copy(Ljava/lang/String;Ljava/lang/String;II)Lcom/codemao/nemo/bean/MineWorkMenuItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .registers 2

    iget v0, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->icon:I

    return v0
.end method

.method public final component4()I
    .registers 2

    iget v0, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->textColor:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;II)Lcom/codemao/nemo/bean/MineWorkMenuItem;
    .registers 6

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/nemo/bean/MineWorkMenuItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/bean/MineWorkMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/MineWorkMenuItem;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/MineWorkMenuItem;

    iget-object v1, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/MineWorkMenuItem;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/MineWorkMenuItem;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->icon:I

    iget v3, p1, Lcom/codemao/nemo/bean/MineWorkMenuItem;->icon:I

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->textColor:I

    iget p1, p1, Lcom/codemao/nemo/bean/MineWorkMenuItem;->textColor:I

    if-eq v1, p1, :cond_30

    return v2

    :cond_30
    return v0
.end method

.method public final getIcon()I
    .registers 2

    .line 158
    iget v0, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->icon:I

    return v0
.end method

.method public final getTextColor()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->textColor:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->title:Ljava/lang/String;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->icon:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->textColor:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MineWorkMenuItem(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/bean/MineWorkMenuItem;->textColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
