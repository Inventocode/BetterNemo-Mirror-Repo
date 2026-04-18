.class public final Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;
.super Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;
.source "RecommendViewModel.kt"


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;",
            ">;)V"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->NewWork:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;-><init>(Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;)V

    iput-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->items:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->title:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->items:Ljava/util/List;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->copy(Ljava/lang/String;Ljava/util/List;)Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->title:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->items:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;)Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;",
            ">;)",
            "Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;"
        }
    .end annotation

    new-instance v0, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;

    invoke-direct {v0, p1, p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->items:Ljava/util/List;

    iget-object p1, p1, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->items:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
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

    .line 43
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->items:Ljava/util/List;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewWorkViewModel(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
