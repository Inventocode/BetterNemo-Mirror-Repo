.class Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$1;
.super Ljava/lang/Object;
.source "TagFlowLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->changeAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

.field final synthetic val$finalTagViewContainer:Lcom/codemao/nemo/view/flowlayout/TagView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;Lcom/codemao/nemo/view/flowlayout/TagView;I)V
    .registers 4

    .line 129
    iput-object p1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$1;->this$0:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    iput-object p2, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$1;->val$finalTagViewContainer:Lcom/codemao/nemo/view/flowlayout/TagView;

    iput p3, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 132
    iget-object p1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$1;->this$0:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    iget-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$1;->val$finalTagViewContainer:Lcom/codemao/nemo/view/flowlayout/TagView;

    iget v1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$1;->val$position:I

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->access$000(Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;Lcom/codemao/nemo/view/flowlayout/TagView;I)V

    .line 133
    iget-object p1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$1;->this$0:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->access$100(Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;)Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnTagClickListener;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 134
    iget-object p1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$1;->this$0:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    invoke-static {p1}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->access$100(Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;)Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnTagClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$1;->val$finalTagViewContainer:Lcom/codemao/nemo/view/flowlayout/TagView;

    iget v1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$1;->val$position:I

    iget-object v2, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$1;->this$0:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    invoke-interface {p1, v0, v1, v2}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnTagClickListener;->onTagClick(Landroid/view/View;ILcom/codemao/nemo/view/flowlayout/FlowLayout;)Z

    :cond_20
    return-void
.end method
