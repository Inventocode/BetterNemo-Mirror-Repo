.class Lcom/codemao/nemo/fragment/NewWorkDetailFragment$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "NewWorkDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3

    if-ltz p1, :cond_25

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_d

    goto :goto_25

    .line 97
    :cond_d
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->access$100(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 98
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->access$000(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    return p1

    .line 100
    :cond_1e
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->access$000(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;)I

    move-result p1

    return p1

    .line 95
    :cond_25
    :goto_25
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->access$000(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;)I

    move-result p1

    return p1
.end method
