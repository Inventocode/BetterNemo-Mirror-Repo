.class Lcom/codemao/nemo/ui/MultiImageSelectorFragment$2;
.super Ljava/lang/Object;
.source "MultiImageSelectorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;I)V
    .registers 3

    .line 171
    iput-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$2;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    iput p2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$2;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 174
    iget-object p2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$2;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {p2}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$300(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Lcom/codemao/nemo/adapter/ImageGridAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/nemo/adapter/ImageGridAdapter;->isShowCamera()Z

    move-result p2

    if-eqz p2, :cond_26

    if-nez p3, :cond_14

    .line 177
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$2;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {p1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$400(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)V

    goto :goto_37

    .line 179
    :cond_14
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/Image;

    .line 180
    iget-object p2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$2;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    iget p3, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$2;->val$mode:I

    invoke-static {p2, p1, p3}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$500(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;Lcom/codemao/nemo/bean/Image;I)V

    goto :goto_37

    .line 183
    :cond_26
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/Image;

    .line 184
    iget-object p2, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$2;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    iget p3, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$2;->val$mode:I

    invoke-static {p2, p1, p3}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$500(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;Lcom/codemao/nemo/bean/Image;I)V

    :goto_37
    return-void
.end method
