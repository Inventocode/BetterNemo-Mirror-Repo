.class public final Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;
.super Ljava/lang/Object;
.source "RegExpResult.kt"


# instance fields
.field private final codeSnapshot:Ljava/lang/String;

.field private final matchResult:Ljava/lang/String;

.field private final regExpResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResultItem;",
            ">;"
        }
    .end annotation
.end field

.field private final totalMatchResult:Z


# direct methods
.method public constructor <init>()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResultItem;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->totalMatchResult:Z

    .line 9
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->matchResult:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->codeSnapshot:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->regExpResultList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_15

    move-object p4, v0

    .line 3
    :cond_15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->totalMatchResult:Z

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->matchResult:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->codeSnapshot:Ljava/lang/String;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->regExpResultList:Ljava/util/List;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->copy(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->totalMatchResult:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->matchResult:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->codeSnapshot:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResultItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->regExpResultList:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResultItem;",
            ">;)",
            "Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;"
        }
    .end annotation

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->totalMatchResult:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->totalMatchResult:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->matchResult:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->matchResult:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->codeSnapshot:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->codeSnapshot:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->regExpResultList:Ljava/util/List;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->regExpResultList:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    return v2

    :cond_34
    return v0
.end method

.method public final getCodeSnapshot()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->codeSnapshot:Ljava/lang/String;

    return-object v0
.end method

.method public final getMatchResult()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->matchResult:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegExpResultList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResultItem;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->regExpResultList:Ljava/util/List;

    return-object v0
.end method

.method public final getTotalMatchResult()Z
    .registers 2

    .line 7
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->totalMatchResult:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->totalMatchResult:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :cond_5
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->matchResult:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->codeSnapshot:Ljava/lang/String;

    if-nez v1, :cond_1b

    const/4 v1, 0x0

    goto :goto_1f

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->regExpResultList:Ljava/util/List;

    if-nez v1, :cond_27

    goto :goto_2b

    :cond_27
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2b
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegExpResult(totalMatchResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->totalMatchResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", matchResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->matchResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", codeSnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->codeSnapshot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regExpResultList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/RegExpResult;->regExpResultList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
