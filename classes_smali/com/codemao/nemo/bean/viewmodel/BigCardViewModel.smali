.class public final Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;
.super Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;
.source "RecommendViewModel.kt"


# instance fields
.field private final imageUrl:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final workId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .line 26
    sget-object v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->BigCard:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;-><init>(Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;)V

    .line 24
    iput-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->imageUrl:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->title:Ljava/lang/String;

    .line 26
    iput-wide p3, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->workId:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->imageUrl:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->title:Ljava/lang/String;

    :cond_c
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_12

    iget-wide p3, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->workId:J

    :cond_12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->copy(Ljava/lang/String;Ljava/lang/String;J)Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->workId:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;J)Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;
    .registers 6

    new-instance v0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->imageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-wide v3, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->workId:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->workId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2b

    return v2

    :cond_2b
    return v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getWorkId()J
    .registers 3

    .line 26
    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->workId:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->imageUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->title:Ljava/lang/String;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->workId:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BigCardViewModel(imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", workId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
