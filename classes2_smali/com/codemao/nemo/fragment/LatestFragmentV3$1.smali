.class Lcom/codemao/nemo/fragment/LatestFragmentV3$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "LatestFragmentV3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/LatestFragmentV3;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/LatestFragmentV3;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$1;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$1;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->access$000(Lcom/codemao/nemo/fragment/LatestFragmentV3;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 99
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$1;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->access$000(Lcom/codemao/nemo/fragment/LatestFragmentV3;)I

    move-result p1

    return p1

    .line 101
    :cond_10
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$1;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_21

    .line 102
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$1;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->access$000(Lcom/codemao/nemo/fragment/LatestFragmentV3;)I

    move-result p1

    return p1

    .line 104
    :cond_21
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$1;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->isOther()Z

    move-result p1

    if-nez p1, :cond_3a

    .line 105
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$1;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->access$000(Lcom/codemao/nemo/fragment/LatestFragmentV3;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    return p1

    .line 107
    :cond_3a
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3$1;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->access$000(Lcom/codemao/nemo/fragment/LatestFragmentV3;)I

    move-result p1

    return p1
.end method
