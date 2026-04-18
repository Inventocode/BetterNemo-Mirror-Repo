.class public final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MineKnContentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->commonStep2InitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private reset:Z

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    .line 172
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_16

    .line 176
    iget-boolean v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$3;->reset:Z

    if-nez v0, :cond_16

    .line 177
    iput-boolean p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$3;->reset:Z

    .line 178
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$3;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$resetAllMenu(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    :cond_16
    if-nez p2, :cond_1b

    const/4 p1, 0x0

    .line 181
    iput-boolean p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$commonStep2InitView$3;->reset:Z

    :cond_1b
    return-void
.end method
