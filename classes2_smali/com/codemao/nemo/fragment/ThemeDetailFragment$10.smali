.class Lcom/codemao/nemo/fragment/ThemeDetailFragment$10;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "ThemeDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/ThemeDetailFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V
    .registers 2

    .line 327
    iput-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$10;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$10;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$800(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-ltz p1, :cond_1d

    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$10;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1d

    .line 331
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$10;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$900(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    return p1

    .line 333
    :cond_1d
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$10;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$900(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)I

    move-result p1

    return p1
.end method
