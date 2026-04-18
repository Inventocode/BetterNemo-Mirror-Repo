.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$commonStep3ObserveData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MineKnMainV3Fragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;->commonStep3ObserveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/ljwx/baseapp/response/DataResult<",
        "+",
        "Lcom/codemao/nemo/bean/KnWorkListResponse;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$commonStep3ObserveData$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 224
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$commonStep3ObserveData$2;->invoke(Lcom/ljwx/baseapp/response/DataResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Lcom/codemao/nemo/bean/KnWorkListResponse;",
            ">;)V"
        }
    .end annotation

    .line 225
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz v0, :cond_25

    .line 226
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$commonStep3ObserveData$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;->access$getTabLayout(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/KnWorkListResponse;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getTotal()Ljava/lang/Integer;

    move-result-object p1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    invoke-static {v0, v1, v2, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;->access$setTabText(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;Lcom/google/android/material/tabs/TabLayout$Tab;ZLjava/lang/Integer;)V

    :cond_25
    return-void
.end method
