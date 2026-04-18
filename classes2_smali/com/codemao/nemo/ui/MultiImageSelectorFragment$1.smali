.class Lcom/codemao/nemo/ui/MultiImageSelectorFragment$1;
.super Ljava/lang/Object;
.source "MultiImageSelectorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 154
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {p1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$000(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    if-nez p1, :cond_d

    .line 155
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {p1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$100(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)V

    .line 158
    :cond_d
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {p1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$000(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 159
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {p1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$000(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    goto :goto_48

    .line 161
    :cond_23
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {p1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$000(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 162
    iget-object p1, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {p1}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$200(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Lcom/codemao/nemo/adapter/FolderAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/adapter/FolderAdapter;->getSelectIndex()I

    move-result p1

    if-nez p1, :cond_39

    goto :goto_3b

    :cond_39
    add-int/lit8 p1, p1, -0x1

    .line 164
    :goto_3b
    iget-object v0, p0, Lcom/codemao/nemo/ui/MultiImageSelectorFragment$1;->this$0:Lcom/codemao/nemo/ui/MultiImageSelectorFragment;

    invoke-static {v0}, Lcom/codemao/nemo/ui/MultiImageSelectorFragment;->access$000(Lcom/codemao/nemo/ui/MultiImageSelectorFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    :goto_48
    return-void
.end method
