.class public final Lcom/codemao/creativecenter/customview/CmScreenSelectView;
.super Landroid/widget/FrameLayout;
.source "CmScreenSelectView.kt"


# instance fields
.field private binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 20
    sget p2, Lcom/codemao/creativecenter/R$layout;->creative_layout_screenselect:I

    const/4 v0, 0x1

    .line 18
    invoke-static {p1, p2, p0, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(… this,\n        true\n    )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 20
    sget p2, Lcom/codemao/creativecenter/R$layout;->creative_layout_screenselect:I

    const/4 p3, 0x1

    .line 18
    invoke-static {p1, p2, p0, p3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(… this,\n        true\n    )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    return-object v0
.end method

.method public final getFlScreenLayout()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->flScreenLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.flScreenLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getIvDelScreen()Landroid/widget/ImageView;
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivDelScreen:Landroid/widget/ImageView;

    const-string v1, "binding.ivDelScreen"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getRvScreens()Landroidx/recyclerview/widget/RecyclerView;
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->rvScreens:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "binding.rvScreens"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setBinding(Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    return-void
.end method

.method public final setEnable(Z)V
    .registers 6

    .line 54
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->rvScreens:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "binding.rvScreens"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;

    if-eqz v0, :cond_2c

    .line 55
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->rvScreens:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_24

    check-cast v0, Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/adpater/CreateSceneAdapter;->setEnable(Z)V

    goto :goto_2c

    :cond_24
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.codemao.creativecenter.adpater.CreateSceneAdapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    :goto_2c
    const-string v0, "binding.ivAddScreen"

    const-string v1, "binding.ivDelScreen"

    const-string v2, "binding.ivScreen"

    if-eqz p1, :cond_74

    .line 58
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 59
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivDelScreen:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 60
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivAddScreen:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 61
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 62
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivDelScreen:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 63
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivAddScreen:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_b4

    .line 65
    :cond_74
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x3e99999a  # 0.3f

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 66
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivDelScreen:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 67
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivAddScreen:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 68
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 69
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivDelScreen:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 70
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivAddScreen:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_b4
    return-void
.end method

.method public final setScreenSelect(Z)V
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->ivScreen:Landroid/widget/ImageView;

    const-string v1, "binding.ivScreen"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public final setScreenSelectVm(Lcom/codemao/creativecenter/vm/ScreenSelectVM;)V
    .registers 3

    const-string v0, "selectVM"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmScreenSelectView;->binding:Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeLayoutScreenselectBinding;->setVm(Lcom/codemao/creativecenter/vm/ScreenSelectVM;)V

    return-void
.end method
