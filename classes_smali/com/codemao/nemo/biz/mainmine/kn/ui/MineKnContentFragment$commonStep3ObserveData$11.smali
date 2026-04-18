.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$11;
.super Lkotlin/jvm/internal/Lambda;
.source "MineKnContentFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$11;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 464
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$11;->invoke(Ljava/lang/Long;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Long;)V
    .registers 2

    .line 465
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep3ObserveData$11;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->refreshViewOnRefresh()V

    return-void
.end method
