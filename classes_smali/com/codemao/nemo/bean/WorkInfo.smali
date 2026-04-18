.class public final Lcom/codemao/nemo/bean/WorkInfo;
.super Ljava/lang/Object;
.source "RecommendPageResponse.kt"


# instance fields
.field private final author_info:Lcom/codemao/nemo/bean/RecommendAuthorInfo;

.field private final work_base:Lcom/codemao/nemo/bean/WorkBase;

.field private final work_label:Lcom/codemao/nemo/bean/WorkLabel;

.field private final work_mix:Lcom/codemao/nemo/bean/WorkMix;

.field private final work_recommend_info:Lcom/codemao/nemo/bean/WorkRecommendInfo;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/bean/RecommendAuthorInfo;Lcom/codemao/nemo/bean/WorkBase;Lcom/codemao/nemo/bean/WorkLabel;Lcom/codemao/nemo/bean/WorkMix;Lcom/codemao/nemo/bean/WorkRecommendInfo;)V
    .registers 6

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkInfo;->author_info:Lcom/codemao/nemo/bean/RecommendAuthorInfo;

    .line 20
    iput-object p2, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_base:Lcom/codemao/nemo/bean/WorkBase;

    .line 21
    iput-object p3, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_label:Lcom/codemao/nemo/bean/WorkLabel;

    .line 22
    iput-object p4, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_mix:Lcom/codemao/nemo/bean/WorkMix;

    .line 23
    iput-object p5, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_recommend_info:Lcom/codemao/nemo/bean/WorkRecommendInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/WorkInfo;Lcom/codemao/nemo/bean/RecommendAuthorInfo;Lcom/codemao/nemo/bean/WorkBase;Lcom/codemao/nemo/bean/WorkLabel;Lcom/codemao/nemo/bean/WorkMix;Lcom/codemao/nemo/bean/WorkRecommendInfo;ILjava/lang/Object;)Lcom/codemao/nemo/bean/WorkInfo;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/codemao/nemo/bean/WorkInfo;->author_info:Lcom/codemao/nemo/bean/RecommendAuthorInfo;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_base:Lcom/codemao/nemo/bean/WorkBase;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_label:Lcom/codemao/nemo/bean/WorkLabel;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_mix:Lcom/codemao/nemo/bean/WorkMix;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_recommend_info:Lcom/codemao/nemo/bean/WorkRecommendInfo;

    :cond_21
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/codemao/nemo/bean/WorkInfo;->copy(Lcom/codemao/nemo/bean/RecommendAuthorInfo;Lcom/codemao/nemo/bean/WorkBase;Lcom/codemao/nemo/bean/WorkLabel;Lcom/codemao/nemo/bean/WorkMix;Lcom/codemao/nemo/bean/WorkRecommendInfo;)Lcom/codemao/nemo/bean/WorkInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/codemao/nemo/bean/RecommendAuthorInfo;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkInfo;->author_info:Lcom/codemao/nemo/bean/RecommendAuthorInfo;

    return-object v0
.end method

.method public final component2()Lcom/codemao/nemo/bean/WorkBase;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_base:Lcom/codemao/nemo/bean/WorkBase;

    return-object v0
.end method

.method public final component3()Lcom/codemao/nemo/bean/WorkLabel;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_label:Lcom/codemao/nemo/bean/WorkLabel;

    return-object v0
.end method

.method public final component4()Lcom/codemao/nemo/bean/WorkMix;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_mix:Lcom/codemao/nemo/bean/WorkMix;

    return-object v0
.end method

.method public final component5()Lcom/codemao/nemo/bean/WorkRecommendInfo;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_recommend_info:Lcom/codemao/nemo/bean/WorkRecommendInfo;

    return-object v0
.end method

.method public final copy(Lcom/codemao/nemo/bean/RecommendAuthorInfo;Lcom/codemao/nemo/bean/WorkBase;Lcom/codemao/nemo/bean/WorkLabel;Lcom/codemao/nemo/bean/WorkMix;Lcom/codemao/nemo/bean/WorkRecommendInfo;)Lcom/codemao/nemo/bean/WorkInfo;
    .registers 13

    new-instance v6, Lcom/codemao/nemo/bean/WorkInfo;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/codemao/nemo/bean/WorkInfo;-><init>(Lcom/codemao/nemo/bean/RecommendAuthorInfo;Lcom/codemao/nemo/bean/WorkBase;Lcom/codemao/nemo/bean/WorkLabel;Lcom/codemao/nemo/bean/WorkMix;Lcom/codemao/nemo/bean/WorkRecommendInfo;)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/WorkInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/WorkInfo;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkInfo;->author_info:Lcom/codemao/nemo/bean/RecommendAuthorInfo;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkInfo;->author_info:Lcom/codemao/nemo/bean/RecommendAuthorInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_base:Lcom/codemao/nemo/bean/WorkBase;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkInfo;->work_base:Lcom/codemao/nemo/bean/WorkBase;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_label:Lcom/codemao/nemo/bean/WorkLabel;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkInfo;->work_label:Lcom/codemao/nemo/bean/WorkLabel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_mix:Lcom/codemao/nemo/bean/WorkMix;

    iget-object v3, p1, Lcom/codemao/nemo/bean/WorkInfo;->work_mix:Lcom/codemao/nemo/bean/WorkMix;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_recommend_info:Lcom/codemao/nemo/bean/WorkRecommendInfo;

    iget-object p1, p1, Lcom/codemao/nemo/bean/WorkInfo;->work_recommend_info:Lcom/codemao/nemo/bean/WorkRecommendInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    return v2

    :cond_43
    return v0
.end method

.method public final getAuthor_info()Lcom/codemao/nemo/bean/RecommendAuthorInfo;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkInfo;->author_info:Lcom/codemao/nemo/bean/RecommendAuthorInfo;

    return-object v0
.end method

.method public final getWork_base()Lcom/codemao/nemo/bean/WorkBase;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_base:Lcom/codemao/nemo/bean/WorkBase;

    return-object v0
.end method

.method public final getWork_label()Lcom/codemao/nemo/bean/WorkLabel;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_label:Lcom/codemao/nemo/bean/WorkLabel;

    return-object v0
.end method

.method public final getWork_mix()Lcom/codemao/nemo/bean/WorkMix;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_mix:Lcom/codemao/nemo/bean/WorkMix;

    return-object v0
.end method

.method public final getWork_recommend_info()Lcom/codemao/nemo/bean/WorkRecommendInfo;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_recommend_info:Lcom/codemao/nemo/bean/WorkRecommendInfo;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkInfo;->author_info:Lcom/codemao/nemo/bean/RecommendAuthorInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_base:Lcom/codemao/nemo/bean/WorkBase;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/WorkBase;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_label:Lcom/codemao/nemo/bean/WorkLabel;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/WorkLabel;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_mix:Lcom/codemao/nemo/bean/WorkMix;

    if-nez v2, :cond_2d

    const/4 v2, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/WorkMix;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_recommend_info:Lcom/codemao/nemo/bean/WorkRecommendInfo;

    if-nez v2, :cond_39

    goto :goto_3d

    :cond_39
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/WorkRecommendInfo;->hashCode()I

    move-result v1

    :goto_3d
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkInfo(author_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkInfo;->author_info:Lcom/codemao/nemo/bean/RecommendAuthorInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", work_base="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_base:Lcom/codemao/nemo/bean/WorkBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", work_label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_label:Lcom/codemao/nemo/bean/WorkLabel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", work_mix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_mix:Lcom/codemao/nemo/bean/WorkMix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", work_recommend_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/WorkInfo;->work_recommend_info:Lcom/codemao/nemo/bean/WorkRecommendInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
