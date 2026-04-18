.class public final Lcom/codemao/nemo/bean/RecommendPageResponse;
.super Ljava/lang/Object;
.source "RecommendPageResponse.kt"


# instance fields
.field private final big_card_work:Lcom/codemao/nemo/bean/WorkInfo;

.field private final recommend_work_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final subject_banner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/SubjectBanner;",
            ">;"
        }
    .end annotation
.end field

.field private final work_set:Lcom/codemao/nemo/bean/WorkSet;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/bean/WorkInfo;Ljava/util/List;Ljava/util/List;Lcom/codemao/nemo/bean/WorkSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/bean/WorkInfo;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/SubjectBanner;",
            ">;",
            "Lcom/codemao/nemo/bean/WorkSet;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->big_card_work:Lcom/codemao/nemo/bean/WorkInfo;

    .line 5
    iput-object p2, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->recommend_work_list:Ljava/util/List;

    .line 6
    iput-object p3, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->subject_banner:Ljava/util/List;

    .line 7
    iput-object p4, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->work_set:Lcom/codemao/nemo/bean/WorkSet;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/RecommendPageResponse;Lcom/codemao/nemo/bean/WorkInfo;Ljava/util/List;Ljava/util/List;Lcom/codemao/nemo/bean/WorkSet;ILjava/lang/Object;)Lcom/codemao/nemo/bean/RecommendPageResponse;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->big_card_work:Lcom/codemao/nemo/bean/WorkInfo;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->recommend_work_list:Ljava/util/List;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->subject_banner:Ljava/util/List;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->work_set:Lcom/codemao/nemo/bean/WorkSet;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/bean/RecommendPageResponse;->copy(Lcom/codemao/nemo/bean/WorkInfo;Ljava/util/List;Ljava/util/List;Lcom/codemao/nemo/bean/WorkSet;)Lcom/codemao/nemo/bean/RecommendPageResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/codemao/nemo/bean/WorkInfo;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->big_card_work:Lcom/codemao/nemo/bean/WorkInfo;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->recommend_work_list:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/SubjectBanner;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->subject_banner:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Lcom/codemao/nemo/bean/WorkSet;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->work_set:Lcom/codemao/nemo/bean/WorkSet;

    return-object v0
.end method

.method public final copy(Lcom/codemao/nemo/bean/WorkInfo;Ljava/util/List;Ljava/util/List;Lcom/codemao/nemo/bean/WorkSet;)Lcom/codemao/nemo/bean/RecommendPageResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/bean/WorkInfo;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/SubjectBanner;",
            ">;",
            "Lcom/codemao/nemo/bean/WorkSet;",
            ")",
            "Lcom/codemao/nemo/bean/RecommendPageResponse;"
        }
    .end annotation

    new-instance v0, Lcom/codemao/nemo/bean/RecommendPageResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/bean/RecommendPageResponse;-><init>(Lcom/codemao/nemo/bean/WorkInfo;Ljava/util/List;Ljava/util/List;Lcom/codemao/nemo/bean/WorkSet;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/RecommendPageResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/RecommendPageResponse;

    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->big_card_work:Lcom/codemao/nemo/bean/WorkInfo;

    iget-object v3, p1, Lcom/codemao/nemo/bean/RecommendPageResponse;->big_card_work:Lcom/codemao/nemo/bean/WorkInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->recommend_work_list:Ljava/util/List;

    iget-object v3, p1, Lcom/codemao/nemo/bean/RecommendPageResponse;->recommend_work_list:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->subject_banner:Ljava/util/List;

    iget-object v3, p1, Lcom/codemao/nemo/bean/RecommendPageResponse;->subject_banner:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->work_set:Lcom/codemao/nemo/bean/WorkSet;

    iget-object p1, p1, Lcom/codemao/nemo/bean/RecommendPageResponse;->work_set:Lcom/codemao/nemo/bean/WorkSet;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getBig_card_work()Lcom/codemao/nemo/bean/WorkInfo;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->big_card_work:Lcom/codemao/nemo/bean/WorkInfo;

    return-object v0
.end method

.method public final getRecommend_work_list()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkInfo;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->recommend_work_list:Ljava/util/List;

    return-object v0
.end method

.method public final getSubject_banner()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/SubjectBanner;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->subject_banner:Ljava/util/List;

    return-object v0
.end method

.method public final getWork_set()Lcom/codemao/nemo/bean/WorkSet;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->work_set:Lcom/codemao/nemo/bean/WorkSet;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->big_card_work:Lcom/codemao/nemo/bean/WorkInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkInfo;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->recommend_work_list:Ljava/util/List;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->subject_banner:Ljava/util/List;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->work_set:Lcom/codemao/nemo/bean/WorkSet;

    if-nez v2, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/WorkSet;->hashCode()I

    move-result v1

    :goto_30
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendPageResponse(big_card_work="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->big_card_work:Lcom/codemao/nemo/bean/WorkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recommend_work_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->recommend_work_list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subject_banner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->subject_banner:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", work_set="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendPageResponse;->work_set:Lcom/codemao/nemo/bean/WorkSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
