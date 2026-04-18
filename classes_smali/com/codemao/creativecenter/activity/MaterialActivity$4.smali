.class Lcom/codemao/creativecenter/activity/MaterialActivity$4;
.super Ljava/lang/Object;
.source "MaterialActivity.java"

# interfaces
.implements Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$OnItemChoose;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/MaterialActivity;->initLeftRv()V
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

    .line 416
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$4;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChoose(I)V
    .registers 5

    .line 419
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$4;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$202(Lcom/codemao/creativecenter/activity/MaterialActivity;Z)Z

    .line 420
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$4;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$300(Lcom/codemao/creativecenter/activity/MaterialActivity;)Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->setSelection(I)V

    if-nez p1, :cond_1c

    .line 422
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$4;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    const/high16 v0, 0x42c80000  # 100.0f

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    .line 423
    :goto_1d
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$4;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$000(Lcom/codemao/creativecenter/activity/MaterialActivity;)Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeActivityMaterialBinding;->rvMaterial:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/codemao/creativecenter/activity/MaterialActivity$4;->this$0:Lcom/codemao/creativecenter/activity/MaterialActivity;

    .line 424
    invoke-static {v2}, Lcom/codemao/creativecenter/activity/MaterialActivity;->access$400(Lcom/codemao/creativecenter/activity/MaterialActivity;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method
