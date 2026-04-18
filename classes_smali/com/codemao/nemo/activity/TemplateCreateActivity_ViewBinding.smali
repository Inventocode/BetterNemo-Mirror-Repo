.class public Lcom/codemao/nemo/activity/TemplateCreateActivity_ViewBinding;
.super Ljava/lang/Object;
.source "TemplateCreateActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/TemplateCreateActivity;Landroid/view/View;)V
    .registers 7

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0a097c

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0321

    const-string v2, "field \'mTvIndex\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mTvIndex:Landroid/widget/TextView;

    .line 35
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0892

    const-string v2, "field \'mTvName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mTvName:Landroid/widget/TextView;

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0824

    const-string v2, "field \'mTvContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mTvContent:Landroid/widget/TextView;

    const v0, 0x7f0a0843

    const-string v1, "field \'mTvEnter\' and method \'clickClose\'"

    .line 37
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 38
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mTvEnter\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/TemplateCreateActivity;->mTvEnter:Landroid/widget/TextView;

    .line 40
    new-instance v0, Lcom/codemao/nemo/activity/TemplateCreateActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/TemplateCreateActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/TemplateCreateActivity_ViewBinding;Lcom/codemao/nemo/activity/TemplateCreateActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a037b

    const-string v1, "method \'clickClose\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance v0, Lcom/codemao/nemo/activity/TemplateCreateActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/TemplateCreateActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/TemplateCreateActivity_ViewBinding;Lcom/codemao/nemo/activity/TemplateCreateActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
