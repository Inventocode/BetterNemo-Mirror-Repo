.class public final Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;
.super Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;
.source "RecommendViewModel.kt"


# instance fields
.field private final boxWorks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/RecommendBoxData;",
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
            "Lcom/codemao/nemo/bean/RecommendBoxData;",
            ">;)V"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->BOX:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;-><init>(Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;)V

    .line 64
    iput-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;->boxWorks:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;Ljava/util/List;ILjava/lang/Object;)Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;->boxWorks:Ljava/util/List;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;->copy(Ljava/util/List;)Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;

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
            "Lcom/codemao/nemo/bean/RecommendBoxData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;->boxWorks:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;)Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/codemao/nemo/bean/RecommendBoxData;",
            ">;)",
            "Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;"
        }
    .end annotation

    new-instance v0, Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;

    invoke-direct {v0, p1}, Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;->boxWorks:Ljava/util/List;

    iget-object p1, p1, Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;->boxWorks:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getBoxWorks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/RecommendBoxData;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;->boxWorks:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;->boxWorks:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxViewModel(boxWorks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;->boxWorks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
