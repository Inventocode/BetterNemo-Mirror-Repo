.class Lcom/codemao/creativecenter/customview/CreateDebugView$8;
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


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CreateDebugView;)V
    .registers 2

    .line 391
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$8;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 394
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$8;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1502(Lcom/codemao/creativecenter/customview/CreateDebugView;Z)Z

    .line 395
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$8;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$400(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 396
    sget v1, Lcom/codemao/creativecenter/R$id;->rv_list2:I

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x7

    .line 397
    invoke-virtual {p1, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 398
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$8;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$400(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$8;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1600(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->setListIndex(I)V

    .line 400
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$8;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1600(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$8;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$700(Lcom/codemao/creativecenter/customview/CreateDebugView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->setIdOterSelect(Ljava/lang/String;)V

    .line 401
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$8;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1600(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$8;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$800(Lcom/codemao/creativecenter/customview/CreateDebugView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->setIdSelect(Ljava/lang/String;)V

    .line 402
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$8;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1600(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 403
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$8;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$400(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 404
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$8;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$500(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 405
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$8;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$200(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 406
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$8;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$600(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 407
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$8;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$300(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
