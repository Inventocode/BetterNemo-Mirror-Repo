.class public final Lcom/codemao/nemo/bean/RecommendAuthorInfo;
.super Ljava/lang/Object;
.source "RecommendPageResponse.kt"


# instance fields
.field private final author_level:I

.field private final avatar:Ljava/lang/String;

.field private final consume_level:I

.field private final is_official_certification:I

.field private final nickname:Ljava/lang/String;

.field private final user_id:J


# direct methods
.method public constructor <init>(ILjava/lang/String;IILjava/lang/String;J)V
    .registers 8

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->author_level:I

    .line 35
    iput-object p2, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->avatar:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->consume_level:I

    .line 37
    iput p4, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->is_official_certification:I

    .line 38
    iput-object p5, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->nickname:Ljava/lang/String;

    .line 39
    iput-wide p6, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->user_id:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/RecommendAuthorInfo;ILjava/lang/String;IILjava/lang/String;JILjava/lang/Object;)Lcom/codemao/nemo/bean/RecommendAuthorInfo;
    .registers 15

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget p1, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->author_level:I

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget-object p2, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->avatar:Ljava/lang/String;

    :cond_c
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_13

    iget p3, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->consume_level:I

    :cond_13
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_1a

    iget p4, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->is_official_certification:I

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->nickname:Ljava/lang/String;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_28

    iget-wide p6, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->user_id:J

    :cond_28
    move-wide v3, p6

    move-object p2, p0

    move p3, p1

    move-object p4, p9

    move p5, v0

    move p6, v1

    move-object p7, v2

    move-wide p8, v3

    invoke-virtual/range {p2 .. p9}, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->copy(ILjava/lang/String;IILjava/lang/String;J)Lcom/codemao/nemo/bean/RecommendAuthorInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 2

    iget v0, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->author_level:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .registers 2

    iget v0, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->consume_level:I

    return v0
.end method

.method public final component4()I
    .registers 2

    iget v0, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->is_official_certification:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->user_id:J

    return-wide v0
.end method

.method public final copy(ILjava/lang/String;IILjava/lang/String;J)Lcom/codemao/nemo/bean/RecommendAuthorInfo;
    .registers 17

    new-instance v8, Lcom/codemao/nemo/bean/RecommendAuthorInfo;

    move-object v0, v8

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/codemao/nemo/bean/RecommendAuthorInfo;-><init>(ILjava/lang/String;IILjava/lang/String;J)V

    return-object v8
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/RecommendAuthorInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/RecommendAuthorInfo;

    iget v1, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->author_level:I

    iget v3, p1, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->author_level:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->avatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->avatar:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->consume_level:I

    iget v3, p1, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->consume_level:I

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget v1, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->is_official_certification:I

    iget v3, p1, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->is_official_certification:I

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->nickname:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->nickname:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    return v2

    :cond_37
    iget-wide v3, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->user_id:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->user_id:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_40

    return v2

    :cond_40
    return v0
.end method

.method public final getAuthor_level()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->author_level:I

    return v0
.end method

.method public final getAvatar()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getConsume_level()I
    .registers 2

    .line 36
    iget v0, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->consume_level:I

    return v0
.end method

.method public final getNickname()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser_id()J
    .registers 3

    .line 39
    iget-wide v0, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->user_id:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->author_level:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->avatar:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->consume_level:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->is_official_certification:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->nickname:Ljava/lang/String;

    if-nez v1, :cond_21

    goto :goto_25

    :cond_21
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_25
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->user_id:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final is_official_certification()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->is_official_certification:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendAuthorInfo(author_level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->author_level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", consume_level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->consume_level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is_official_certification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->is_official_certification:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->user_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
