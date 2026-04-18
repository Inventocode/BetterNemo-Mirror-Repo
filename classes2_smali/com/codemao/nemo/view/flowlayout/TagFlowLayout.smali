.class public Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;
.super Lcom/codemao/nemo/view/flowlayout/FlowLayout;
.source "TagFlowLayout.java"

# interfaces
.implements Lcom/codemao/nemo/view/flowlayout/TagAdapter$OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnTagClickListener;,
        Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnSelectListener;
    }
.end annotation


# instance fields
.field private mOnSelectListener:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnSelectListener;

.field private mOnTagClickListener:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnTagClickListener;

.field private mSelectedMax:I

.field private mSelectedView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTagAdapter:Lcom/codemao/nemo/view/flowlayout/TagAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/view/flowlayout/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 25
    iput p3, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedMax:I

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    .line 43
    sget-object v0, Lcom/codemao/nemo/R$styleable;->TagFlowLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 44
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedMax:I

    .line 45
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;Lcom/codemao/nemo/view/flowlayout/TagView;I)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->doSelect(Lcom/codemao/nemo/view/flowlayout/TagView;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;)Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnTagClickListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mOnTagClickListener:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnTagClickListener;

    return-object p0
.end method

.method private changeAdapter()V
    .registers 12

    .line 91
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 92
    iget-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mTagAdapter:Lcom/codemao/nemo/view/flowlayout/TagAdapter;

    .line 94
    invoke-virtual {v0}, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->getPreCheckedList()Ljava/util/HashSet;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 95
    :goto_b
    invoke-virtual {v0}, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_94

    .line 96
    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, p0, v3, v4}, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->getView(Lcom/codemao/nemo/view/flowlayout/FlowLayout;ILjava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 98
    new-instance v5, Lcom/codemao/nemo/view/flowlayout/TagView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/codemao/nemo/view/flowlayout/TagView;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    .line 99
    invoke-virtual {v4, v6}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 100
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_34

    .line 101
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5a

    .line 105
    :cond_34
    new-instance v6, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 109
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x40a00000  # 5.0f

    invoke-static {v7, v8}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->dip2px(Landroid/content/Context;F)I

    move-result v7

    .line 110
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->dip2px(Landroid/content/Context;F)I

    move-result v9

    .line 111
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->dip2px(Landroid/content/Context;F)I

    move-result v8

    .line 108
    invoke-virtual {v6, v2, v7, v9, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 112
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    :goto_5a
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 115
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 117
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 120
    invoke-direct {p0, v3, v5}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->setChildChecked(ILcom/codemao/nemo/view/flowlayout/TagView;)V

    .line 123
    :cond_76
    iget-object v6, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mTagAdapter:Lcom/codemao/nemo/view/flowlayout/TagAdapter;

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->setSelected(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 124
    invoke-direct {p0, v3, v5}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->setChildChecked(ILcom/codemao/nemo/view/flowlayout/TagView;)V

    .line 126
    :cond_85
    invoke-virtual {v4, v2}, Landroid/view/View;->setClickable(Z)V

    .line 129
    new-instance v4, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$1;

    invoke-direct {v4, p0, v5, v3}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$1;-><init>(Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;Lcom/codemao/nemo/view/flowlayout/TagView;I)V

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    .line 140
    :cond_94
    iget-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .registers 2

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private doSelect(Lcom/codemao/nemo/view/flowlayout/TagView;I)V
    .registers 6

    .line 166
    invoke-virtual {p1}, Lcom/codemao/nemo/view/flowlayout/TagView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 168
    iget v0, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedMax:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    iget-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_42

    .line 169
    iget-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 171
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/view/flowlayout/TagView;

    .line 172
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->setChildUnChecked(ILcom/codemao/nemo/view/flowlayout/TagView;)V

    .line 173
    invoke-direct {p0, p2, p1}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->setChildChecked(ILcom/codemao/nemo/view/flowlayout/TagView;)V

    .line 175
    iget-object p1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 176
    iget-object p1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 178
    :cond_42
    iget v0, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedMax:I

    if-lez v0, :cond_51

    iget-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedMax:I

    if-lt v0, v1, :cond_51

    return-void

    .line 181
    :cond_51
    invoke-direct {p0, p2, p1}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->setChildChecked(ILcom/codemao/nemo/view/flowlayout/TagView;)V

    .line 182
    iget-object p1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 185
    :cond_5e
    invoke-direct {p0, p2, p1}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->setChildUnChecked(ILcom/codemao/nemo/view/flowlayout/TagView;)V

    .line 186
    iget-object p1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 188
    :goto_6a
    iget-object p1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mOnSelectListener:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnSelectListener;

    if-eqz p1, :cond_78

    .line 189
    new-instance p2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, p2}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnSelectListener;->onSelected(Ljava/util/Set;)V

    :cond_78
    return-void
.end method

.method private setChildChecked(ILcom/codemao/nemo/view/flowlayout/TagView;)V
    .registers 4

    const/4 v0, 0x1

    .line 156
    invoke-virtual {p2, v0}, Lcom/codemao/nemo/view/flowlayout/TagView;->setChecked(Z)V

    .line 157
    iget-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mTagAdapter:Lcom/codemao/nemo/view/flowlayout/TagAdapter;

    invoke-virtual {p2}, Lcom/codemao/nemo/view/flowlayout/TagView;->getTagView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->onSelected(ILandroid/view/View;)V

    return-void
.end method

.method private setChildUnChecked(ILcom/codemao/nemo/view/flowlayout/TagView;)V
    .registers 4

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p2, v0}, Lcom/codemao/nemo/view/flowlayout/TagView;->setChecked(Z)V

    .line 162
    iget-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mTagAdapter:Lcom/codemao/nemo/view/flowlayout/TagAdapter;

    invoke-virtual {p2}, Lcom/codemao/nemo/view/flowlayout/TagView;->getTagView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->unSelected(ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/codemao/nemo/view/flowlayout/TagAdapter;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mTagAdapter:Lcom/codemao/nemo/view/flowlayout/TagAdapter;

    return-object v0
.end method

.method public getSelectedList()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public onChanged()V
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 246
    invoke-direct {p0}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->changeAdapter()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 59
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_26

    .line 61
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/view/flowlayout/TagView;

    .line 62
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_16

    goto :goto_23

    .line 65
    :cond_16
    invoke-virtual {v2}, Lcom/codemao/nemo/view/flowlayout/TagView;->getTagView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_23

    .line 66
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_23
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 69
    :cond_26
    invoke-super {p0, p1, p2}, Lcom/codemao/nemo/view/flowlayout/FlowLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 8

    .line 220
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_43

    .line 221
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "key_choose_pos"

    .line 222
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "\\|"

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 225
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_39

    aget-object v3, v0, v2

    .line 226
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 227
    iget-object v4, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/view/flowlayout/TagView;

    if-eqz v4, :cond_36

    .line 231
    invoke-direct {p0, v3, v4}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->setChildChecked(ILcom/codemao/nemo/view/flowlayout/TagView;)V

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_39
    const-string v0, "key_default"

    .line 236
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 239
    :cond_43
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .line 204
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 205
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "key_default"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 208
    iget-object v1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const-string v2, ""

    if-lez v1, :cond_4e

    .line 209
    iget-object v1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    :cond_43
    const/4 v1, 0x0

    .line 212
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_4e
    const-string v1, "key_choose_pos"

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAdapter(Lcom/codemao/nemo/view/flowlayout/TagAdapter;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mTagAdapter:Lcom/codemao/nemo/view/flowlayout/TagAdapter;

    .line 84
    invoke-virtual {p1, p0}, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->setOnDataChangedListener(Lcom/codemao/nemo/view/flowlayout/TagAdapter$OnDataChangedListener;)V

    .line 85
    iget-object p1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 86
    invoke-direct {p0}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->changeAdapter()V

    return-void
.end method

.method public setMaxSelectCount(I)V
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, p1, :cond_28

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "you has already select more than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " views , so it will be clear ."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TagFlowLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedView:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 148
    :cond_28
    iput p1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mSelectedMax:I

    return-void
.end method

.method public setOnSelectListener(Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnSelectListener;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mOnSelectListener:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnSelectListener;

    return-void
.end method

.method public setOnTagClickListener(Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnTagClickListener;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->mOnTagClickListener:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnTagClickListener;

    return-void
.end method
