.class public final Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;
.super Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;
.source "RecommendViewModel.kt"


# instance fields
.field private final imgUrl:Ljava/lang/String;

.field private final subjectId:J

.field private final subjectName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .registers 6

    .line 52
    sget-object v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->Banner:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;-><init>(Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;)V

    .line 50
    iput-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->imgUrl:Ljava/lang/String;

    .line 51
    iput-wide p2, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->subjectId:J

    .line 52
    iput-object p4, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->subjectName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;)Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->imgUrl:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-wide p2, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->subjectId:J

    :cond_c
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_12

    iget-object p4, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->subjectName:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->copy(Ljava/lang/String;JLjava/lang/String;)Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->subjectId:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->subjectName:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JLjava/lang/String;)Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;
    .registers 6

    new-instance v0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->imgUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->imgUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->subjectId:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->subjectId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->subjectName:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->subjectName:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    return v2

    :cond_2b
    return v0
.end method

.method public final getImgUrl()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubjectId()J
    .registers 3

    .line 51
    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->subjectId:J

    return-wide v0
.end method

.method public final getSubjectName()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->subjectName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->imgUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->subjectId:J

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->subjectName:Ljava/lang/String;

    if-nez v2, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1f
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BannerViewModel(imgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subjectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->subjectId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", subjectName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->subjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
