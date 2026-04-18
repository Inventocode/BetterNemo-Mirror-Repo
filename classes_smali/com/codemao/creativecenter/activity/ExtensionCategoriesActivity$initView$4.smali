.class final Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$4;
.super Ljava/lang/Object;
.source "ExtensionCategoriesActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$4;->this$0:Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 79
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 81
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$4;->this$0:Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;->access$getBinding$p(Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;)Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;->microbit:Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_18
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$4;->this$0:Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;->access$getBinding$p(Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;)Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;->microbit:Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    if-ne v0, v1, :cond_46

    :cond_2a
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 83
    iget-object v2, p0, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$4;->this$0:Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;

    invoke-static {v2}, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;->access$getBinding$p(Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;)Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;

    move-result-object v2

    if-eqz v2, :cond_3e

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeActivityExtensionCategoriesBinding;->microbit:Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->getType()Ljava/lang/String;

    move-result-object v2

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    aput-object v2, v0, v1

    const-string v1, "result_categories"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    :cond_46
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$4;->this$0:Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 86
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$initView$4;->this$0:Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
