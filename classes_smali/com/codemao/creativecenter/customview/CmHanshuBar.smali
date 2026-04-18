.class public Lcom/codemao/creativecenter/customview/CmHanshuBar;
.super Landroid/widget/FrameLayout;
.source "CmHanshuBar.java"


# instance fields
.field private inflate:Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/CmHanshuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmHanshuBar;->inflate:Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;

    if-nez v0, :cond_9

    .line 47
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 49
    :cond_9
    invoke-virtual {v0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->getVm()Lcom/codemao/creativecenter/vm/HanshubarVM;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/HanshubarVM;->isEditHanshuModel:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p1, 0x1

    return p1

    .line 52
    :cond_1d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setSidebarVM(Lcom/codemao/creativecenter/vm/HanshubarVM;)V
    .registers 5

    .line 39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$layout;->creative_layout_hanshubar:I

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmHanshuBar;->inflate:Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;

    .line 40
    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeLayoutHanshubarBinding;->setVm(Lcom/codemao/creativecenter/vm/HanshubarVM;)V

    return-void
.end method
