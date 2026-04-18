.class public final Lcom/codemao/nemo/bean/RecommendStaggeredCardData;
.super Ljava/lang/Object;
.source "RecommendStaggeredCardData.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecommendStaggeredCardData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecommendStaggeredCardData.kt\ncom/codemao/nemo/bean/RecommendStaggeredCardData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n1860#2,3:31\n*S KotlinDebug\n*F\n+ 1 RecommendStaggeredCardData.kt\ncom/codemao/nemo/bean/RecommendStaggeredCardData\n*L\n22#1:31,3\n*E\n"
.end annotation


# instance fields
.field private final wordInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/RecommendWorkInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/codemao/nemo/bean/RecommendWorkInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "wordInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/bean/RecommendStaggeredCardData;->wordInfos:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/RecommendStaggeredCardData;Ljava/util/List;ILjava/lang/Object;)Lcom/codemao/nemo/bean/RecommendStaggeredCardData;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/codemao/nemo/bean/RecommendStaggeredCardData;->wordInfos:Ljava/util/List;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/bean/RecommendStaggeredCardData;->copy(Ljava/util/List;)Lcom/codemao/nemo/bean/RecommendStaggeredCardData;

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
            "Lcom/codemao/nemo/bean/RecommendWorkInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendStaggeredCardData;->wordInfos:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;)Lcom/codemao/nemo/bean/RecommendStaggeredCardData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/codemao/nemo/bean/RecommendWorkInfo;",
            ">;)",
            "Lcom/codemao/nemo/bean/RecommendStaggeredCardData;"
        }
    .end annotation

    const-string v0, "wordInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/nemo/bean/RecommendStaggeredCardData;

    invoke-direct {v0, p1}, Lcom/codemao/nemo/bean/RecommendStaggeredCardData;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/RecommendStaggeredCardData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/RecommendStaggeredCardData;

    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendStaggeredCardData;->wordInfos:Ljava/util/List;

    iget-object p1, p1, Lcom/codemao/nemo/bean/RecommendStaggeredCardData;->wordInfos:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getWordInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/RecommendWorkInfo;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendStaggeredCardData;->wordInfos:Ljava/util/List;

    return-object v0
.end method

.method public final hasWorkInfo(J)I
    .registers 9

    .line 22
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendStaggeredCardData;->wordInfos:Ljava/util/List;

    .line 1861
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_18

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_18
    check-cast v2, Lcom/codemao/nemo/bean/RecommendWorkInfo;

    .line 23
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/RecommendWorkInfo;->getWork_id()J

    move-result-wide v4

    cmp-long v2, v4, p1

    if-nez v2, :cond_23

    return v1

    :cond_23
    move v1, v3

    goto :goto_7

    :cond_25
    const/4 p1, -0x1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendStaggeredCardData;->wordInfos:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendStaggeredCardData(wordInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/RecommendStaggeredCardData;->wordInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
