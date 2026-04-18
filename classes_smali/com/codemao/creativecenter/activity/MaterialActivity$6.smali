.class Lcom/codemao/creativecenter/activity/MaterialActivity$6;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MaterialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/MaterialActivity;->initRightRv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/MaterialActivity;)V
    .registers 2

    .line 447
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$6;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 450
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 6

    .line 455
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$6;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$200(Lcom/codemao/creativecenter/activity/MaterialActivity;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_f

    .line 456
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$6;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$202(Lcom/codemao/creativecenter/activity/MaterialActivity;Z)Z

    return-void

    .line 460
    :cond_f
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$6;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$000(Lcom/codemao/creativecenter/activity/MaterialActivity;)Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvMaterial:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-ltz p1, :cond_d2

    .line 462
    iget-object p3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$6;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p3}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$500(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p1, p3, :cond_31

    goto/16 :goto_d2

    .line 465
    :cond_31
    iget-object p3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$6;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p3}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$500(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 469
    instance-of v0, p3, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_58

    .line 470
    iget-object p3, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$6;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p3}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$800(Lcom/codemao/creativecenter/activity/MaterialActivity;)Landroid/util/SparseIntArray;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_bb

    .line 471
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$6;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p2}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$800(Lcom/codemao/creativecenter/activity/MaterialActivity;)Landroid/util/SparseIntArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    goto :goto_bb

    .line 474
    :cond_58
    instance-of p1, p3, Lcom/codemao/creativestore/bean/MaterialActorBean;

    if-eqz p1, :cond_bb

    .line 475
    check-cast p3, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 476
    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getCategory_id()I

    move-result p1

    .line 477
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$6;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p2}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$600(Lcom/codemao/creativecenter/activity/MaterialActivity;)I

    move-result p2

    if-eq p2, v1, :cond_a7

    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$6;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p2}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$600(Lcom/codemao/creativecenter/activity/MaterialActivity;)I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_74

    goto :goto_a7

    .line 479
    :cond_74
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$6;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p2}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$600(Lcom/codemao/creativecenter/activity/MaterialActivity;)I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_92

    .line 480
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$6;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p2}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$1000(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_bb

    .line 482
    :cond_92
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$6;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p2}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$1100(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_bb

    .line 478
    :cond_a7
    :goto_a7
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$6;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p2}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$900(Lcom/codemao/creativecenter/activity/MaterialActivity;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_bb
    :goto_bb
    if-lez p2, :cond_d2

    .line 486
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$6;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$300(Lcom/codemao/creativecenter/activity/MaterialActivity;)Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->setSelection(I)V

    .line 487
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$6;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$000(Lcom/codemao/creativecenter/activity/MaterialActivity;)Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvLeft:Landroidx/recyclerview/widget/RecyclerView;

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_d2
    :goto_d2
    return-void
.end method
