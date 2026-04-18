.class final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$commonStep3ObserveData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MineNemoMainV3Fragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->commonStep3ObserveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/codemao/nemo/bean/NemoWorkListItem;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMineNemoMainV3Fragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MineNemoMainV3Fragment.kt\ncom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$commonStep3ObserveData$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,275:1\n766#2:276\n857#2,2:277\n*S KotlinDebug\n*F\n+ 1 MineNemoMainV3Fragment.kt\ncom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$commonStep3ObserveData$1\n*L\n185#1:276\n185#1:277,2\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 184
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$commonStep3ObserveData$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_33

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/codemao/nemo/bean/NemoWorkListItem;

    .line 185
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_26

    iget-boolean v3, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    if-ne v3, v4, :cond_26

    const/4 v3, 0x1

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    :goto_27
    xor-int/2addr v3, v4

    if-eqz v3, :cond_c

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 185
    :cond_2e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    .line 186
    :goto_34
    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$commonStep3ObserveData$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;

    invoke-static {v1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->access$getTabLayout(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, v2, v0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->access$setTabText(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;Lcom/google/android/material/tabs/TabLayout$Tab;ZLjava/lang/Integer;)V

    return-void
.end method
