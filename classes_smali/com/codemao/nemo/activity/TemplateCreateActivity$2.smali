.class Lcom/codemao/nemo/activity/TemplateCreateActivity$2;
.super Ljava/lang/Object;
.source "TemplateCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/TemplateCreateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/TemplateCreateActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/TemplateCreateActivity;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity$2;->this$0:Lcom/codemao/nemo/activity/TemplateCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    .line 85
    iget-object v2, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity$2;->this$0:Lcom/codemao/nemo/activity/TemplateCreateActivity;

    iget-object v2, v2, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 86
    iget-object v2, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity$2;->this$0:Lcom/codemao/nemo/activity/TemplateCreateActivity;

    iget-object v2, v2, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mTvEnter:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    .line 87
    aget v0, v0, v2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity$2;->this$0:Lcom/codemao/nemo/activity/TemplateCreateActivity;

    iget-object v1, v1, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x40a00000  # 5.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 88
    iget-object v0, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity$2;->this$0:Lcom/codemao/nemo/activity/TemplateCreateActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mTvEnter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/high16 v2, 0x41200000  # 10.0f

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 90
    iget-object v1, p0, Lcom/codemao/nemo/activity/TemplateCreateActivity$2;->this$0:Lcom/codemao/nemo/activity/TemplateCreateActivity;

    iget-object v1, v1, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mTvEnter:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_46
    return-void
.end method
