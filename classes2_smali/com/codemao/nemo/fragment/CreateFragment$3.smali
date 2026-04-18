.class Lcom/codemao/nemo/fragment/CreateFragment$3;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "CreateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CreateFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment;)V
    .registers 2

    .line 754
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$3;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3

    .line 757
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$3;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1600(Lcom/codemao/nemo/fragment/CreateFragment;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-ltz p1, :cond_16

    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$3;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1f

    .line 758
    :cond_16
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$3;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1700(Lcom/codemao/nemo/fragment/CreateFragment;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    return p1

    .line 760
    :cond_1f
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$3;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1700(Lcom/codemao/nemo/fragment/CreateFragment;)I

    move-result p1

    return p1
.end method
