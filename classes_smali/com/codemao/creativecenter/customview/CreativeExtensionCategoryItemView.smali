.class public final Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;
.super Landroid/widget/FrameLayout;
.source "CreativeExtensionCategoryItemView.kt"


# instance fields
.field private binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

.field private canDelete:Z

.field private desc:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x1

    .line 16
    iput-boolean p3, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->canDelete:Z

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    .line 38
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_view_extension_category:I

    .line 36
    invoke-static {p4, v0, p0, p3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p4

    check-cast p4, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    iput-object p4, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    .line 43
    sget-object p4, Lcom/codemao/creativecenter/R$styleable;->CreativeExtensionCategoryItemView:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr…xtensionCategoryItemView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget p2, Lcom/codemao/creativecenter/R$styleable;->CreativeExtensionCategoryItemView_creative_type:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ne p2, p3, :cond_5e

    .line 47
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    if-eqz p2, :cond_39

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;->imageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_39

    sget p3, Lcom/codemao/creativecenter/R$drawable;->creative_icn_hardware_microbit:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_39
    const-string p2, "micro:bit V2"

    .line 48
    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->title:Ljava/lang/String;

    const-string p3, "micro:bit 是一款小型可编程计算机，包含丰富的功能"

    .line 49
    iput-object p3, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->desc:Ljava/lang/String;

    .line 50
    iget-object p3, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    if-eqz p3, :cond_4c

    iget-object p3, p3, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;->titleTv:Landroid/widget/TextView;

    if-eqz p3, :cond_4c

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_4c
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    if-eqz p2, :cond_59

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;->descTv:Landroid/widget/TextView;

    if-eqz p2, :cond_59

    iget-object p3, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->desc:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_59
    const-string p2, "microbit"

    .line 52
    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->type:Ljava/lang/String;

    goto :goto_c9

    :cond_5e
    const/4 p3, 0x2

    if-ne p2, p3, :cond_95

    .line 54
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    if-eqz p2, :cond_6e

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;->imageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_6e

    sget p3, Lcom/codemao/creativecenter/R$drawable;->creative_icn_hardware_tudao:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6e
    const-string/jumbo p2, "途道 tudao"

    .line 55
    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->title:Ljava/lang/String;

    const-string/jumbo p3, "自由控制创意百变的机器人，点燃你心中的科学梦！"

    .line 56
    iput-object p3, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->desc:Ljava/lang/String;

    .line 57
    iget-object p3, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    if-eqz p3, :cond_83

    iget-object p3, p3, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;->titleTv:Landroid/widget/TextView;

    if-eqz p3, :cond_83

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_83
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    if-eqz p2, :cond_90

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;->descTv:Landroid/widget/TextView;

    if-eqz p2, :cond_90

    iget-object p3, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->desc:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_90
    const-string p2, "tudao"

    .line 59
    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->type:Ljava/lang/String;

    goto :goto_c9

    :cond_95
    const/4 p3, 0x3

    if-ne p2, p3, :cond_c9

    .line 61
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    if-eqz p2, :cond_a5

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;->imageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_a5

    sget p3, Lcom/codemao/creativecenter/R$drawable;->creative_hardware_aqara:I

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_a5
    const-string/jumbo p2, "绿米 Aqara"

    .line 62
    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->title:Ljava/lang/String;

    .line 63
    iget-object p3, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    if-eqz p3, :cond_b5

    iget-object p3, p3, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;->titleTv:Landroid/widget/TextView;

    if-eqz p3, :cond_b5

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b5
    const-string/jumbo p2, "控制绿米智能家居环境控件，感受妙趣智能家"

    .line 64
    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->desc:Ljava/lang/String;

    .line 65
    iget-object p3, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    if-eqz p3, :cond_c5

    iget-object p3, p3, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;->descTv:Landroid/widget/TextView;

    if-eqz p3, :cond_c5

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c5
    const-string p2, "aqara"

    .line 66
    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->type:Ljava/lang/String;

    .line 68
    :cond_c9
    :goto_c9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final getCanDelete()Z
    .registers 2

    .line 16
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->canDelete:Z

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;->background:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public final setCanDelete(Z)V
    .registers 2

    .line 16
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->canDelete:Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    if-eqz p1, :cond_29

    .line 79
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    if-eqz p1, :cond_f

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;->background:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_f

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 80
    :cond_f
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    if-eqz p1, :cond_1b

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;->background:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_1b

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 81
    :cond_1b
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    if-eqz p1, :cond_51

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;->descTv:Landroid/widget/TextView;

    if-eqz p1, :cond_51

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_51

    .line 83
    :cond_29
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    if-eqz p1, :cond_37

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;->background:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_37

    const v0, 0x3ecccccd  # 0.4f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 84
    :cond_37
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    if-eqz p1, :cond_43

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;->background:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_43

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 85
    :cond_43
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    if-eqz p1, :cond_51

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;->descTv:Landroid/widget/TextView;

    if-eqz p1, :cond_51

    const-string/jumbo v0, "已添加"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_51
    :goto_51
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;->background:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_10

    new-instance v1, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView$setOnClickListener$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView$setOnClickListener$1;-><init>(Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    .line 72
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 73
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewExtensionCategoryBinding;->selected:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_f

    const/4 p1, 0x0

    goto :goto_11

    :cond_f
    const/16 p1, 0x8

    :goto_11
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_14
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->title:Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeExtensionCategoryItemView;->type:Ljava/lang/String;

    return-void
.end method
