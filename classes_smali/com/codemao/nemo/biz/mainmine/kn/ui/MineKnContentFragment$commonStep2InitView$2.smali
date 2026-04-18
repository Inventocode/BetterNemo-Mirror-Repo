.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MineKnContentFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->commonStep2InitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 161
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$getSearchMode(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 163
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$getMViewModel(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-static {v2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$getSearchKey$p(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    const-string v2, ""

    :cond_19
    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->searchWork(ZLjava/lang/String;)V

    goto :goto_38

    .line 165
    :cond_1d
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$getTypePublished(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 166
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$getMViewModel(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->getPublishedWorks(Z)V

    goto :goto_38

    .line 168
    :cond_2f
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$getMViewModel(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/biz/mainmine/kn/data/MineKnVM;->getAllWorks(Z)V

    :goto_38
    return-void
.end method
