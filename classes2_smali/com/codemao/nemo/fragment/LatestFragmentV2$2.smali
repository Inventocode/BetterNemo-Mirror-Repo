.class Lcom/codemao/nemo/fragment/LatestFragmentV2$2;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "LatestFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/LatestFragmentV2;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/LatestFragmentV2;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->access$000(Lcom/codemao/nemo/fragment/LatestFragmentV2;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 124
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->access$100(Lcom/codemao/nemo/fragment/LatestFragmentV2;)I

    move-result p1

    return p1

    :cond_f
    if-ltz p1, :cond_25

    .line 126
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1c

    goto :goto_25

    .line 129
    :cond_1c
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->access$100(Lcom/codemao/nemo/fragment/LatestFragmentV2;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    return p1

    .line 127
    :cond_25
    :goto_25
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->access$100(Lcom/codemao/nemo/fragment/LatestFragmentV2;)I

    move-result p1

    return p1
.end method
