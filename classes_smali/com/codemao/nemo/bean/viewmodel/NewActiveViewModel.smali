.class public final Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;
.super Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;
.source "RecommendViewModel.kt"


# instance fields
.field private final activeId:J

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field private final schemeUrl:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->NewActive:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;-><init>(Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;)V

    .line 45
    iput-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->title:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->items:Ljava/util/List;

    .line 47
    iput-object p3, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->schemeUrl:Ljava/lang/String;

    .line 48
    iput-wide p4, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->activeId:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILjava/lang/Object;)Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->title:Ljava/lang/String;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->items:Ljava/util/List;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->schemeUrl:Ljava/lang/String;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-wide p4, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->activeId:J

    :cond_1a
    move-wide v1, p4

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-wide p6, v1

    invoke-virtual/range {p2 .. p7}, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->copy(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;J)Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->items:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->schemeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .registers 3

    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->activeId:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;J)Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;"
        }
    .end annotation

    new-instance v6, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;J)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->items:Ljava/util/List;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->items:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->schemeUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->schemeUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-wide v3, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->activeId:J

    iget-wide v5, p1, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->activeId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_36

    return v2

    :cond_36
    return v0
.end method

.method public final getActiveId()J
    .registers 3

    .line 48
    iget-wide v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->activeId:J

    return-wide v0
.end method

.method public final getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getSchemeUrl()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->schemeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->items:Ljava/util/List;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->schemeUrl:Ljava/lang/String;

    if-nez v2, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_23
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->activeId:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewActiveViewModel(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", schemeUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->schemeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->activeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
