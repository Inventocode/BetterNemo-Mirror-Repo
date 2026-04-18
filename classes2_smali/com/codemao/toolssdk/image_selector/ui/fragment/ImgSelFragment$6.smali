.class Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$6;
.super Ljava/lang/Object;
.source "ImgSelFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->showOrDismissFolderPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;I)V
    .registers 3

    .line 397
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    iput p2, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$6;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 400
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_18

    .line 401
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$1000(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_29

    .line 403
    :cond_18
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$1000(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 405
    :goto_29
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$1000(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v0

    .line 406
    iget v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$6;->val$size:I

    if-ge v0, v1, :cond_4f

    .line 407
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$1000(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    iget v1, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$6;->val$size:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setHeight(I)V

    .line 408
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment$6;->this$0:Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;->access$1000(Lcom/codemao/toolssdk/image_selector/ui/fragment/ImgSelFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    :cond_4f
    return-void
.end method
