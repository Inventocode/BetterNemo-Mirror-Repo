.class final Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3$onViewCreated$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MineFragmentV3.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        "Ljava/lang/String;",
        "Landroid/content/Intent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3$onViewCreated$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 38
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    check-cast p3, Ljava/lang/String;

    check-cast p4, Landroid/content/Intent;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3$onViewCreated$1;->invoke(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/content/Intent;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 5

    const-string p3, "action"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_25

    .line 40
    sget-object p1, Lcom/codemao/nemo/constant/AppConfig;->INSTANCE:Lcom/codemao/nemo/constant/AppConfig;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    long-to-int p4, p3

    invoke-virtual {p1, p4}, Lcom/codemao/nemo/constant/AppConfig;->setMINE_PAGE_TAB_INDEX(I)V

    .line 41
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3$onViewCreated$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;->access$getViewPager(Lcom/codemao/nemo/biz/mainmine/v3/MineFragmentV3;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    long-to-int p3, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_25
    return-void
.end method
