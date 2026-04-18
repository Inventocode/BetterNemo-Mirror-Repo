.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$9;
.super Lkotlin/jvm/internal/Lambda;
.source "MineKnContentFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->commonStep3ObserveData()V
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
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$9;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 456
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    check-cast p3, Ljava/lang/String;

    check-cast p4, Landroid/content/Intent;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$9;->invoke(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/content/Intent;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 5

    const-string p2, "action"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$9;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$getTypePublished(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 458
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$9;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->refreshViewOnRefresh()V

    :cond_17
    return-void
.end method
