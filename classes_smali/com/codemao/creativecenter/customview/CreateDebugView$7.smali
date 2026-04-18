.class Lcom/codemao/creativecenter/customview/CreateDebugView$7;
.super Ljava/lang/Object;
.source "CreateDebugView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CreateDebugView;->init(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

.field final synthetic val$isLandscapeMode:Z


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CreateDebugView;Z)V
    .registers 3

    .line 370
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$7;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$7;->val$isLandscapeMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 373
    iget-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$7;->val$isLandscapeMode:Z

    const/4 v0, 0x0

    if-nez p1, :cond_17

    .line 374
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$7;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$200(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 375
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$7;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$300(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 377
    :cond_17
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$7;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1502(Lcom/codemao/creativecenter/customview/CreateDebugView;Z)Z

    .line 378
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$7;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$400(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x5

    .line 379
    sget v2, Lcom/codemao/creativecenter/R$id;->rv_list1:I

    invoke-virtual {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x7

    .line 380
    invoke-virtual {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 381
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$7;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$400(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$7;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1600(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->setListIndex(I)V

    .line 383
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$7;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1600(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$7;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$800(Lcom/codemao/creativecenter/customview/CreateDebugView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->setIdOterSelect(Ljava/lang/String;)V

    .line 384
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$7;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1600(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$7;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$700(Lcom/codemao/creativecenter/customview/CreateDebugView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->setIdSelect(Ljava/lang/String;)V

    .line 385
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$7;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1600(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 386
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$7;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$400(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 387
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$7;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$500(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 388
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$7;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$600(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
