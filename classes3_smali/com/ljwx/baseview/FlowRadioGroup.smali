.class public Lcom/ljwx/baseview/FlowRadioGroup;
.super Landroid/widget/RadioGroup;
.source "FlowRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ljwx/baseview/FlowRadioGroup$SavedState;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field mAllViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field mLineHeight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/baseview/FlowRadioGroup;->TAG:Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Lcom/ljwx/baseview/FlowRadioGroup;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->setOrientation(I)V

    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .registers 4

    .line 170
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 171
    instance-of v0, p1, Landroid/widget/RadioButton;

    if-eqz v0, :cond_f

    .line 172
    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_f
    return-void
.end method


# virtual methods
.method public getCheckedRadioButtonIndex()I
    .registers 2

    .line 47
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getCheckedRadioButtonText()Ljava/lang/String;
    .registers 3

    .line 54
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const-string v0, ""

    return-object v0

    .line 57
    :cond_a
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 1

    .line 151
    invoke-super {p0}, Landroid/widget/RadioGroup;->onFinishInflate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 15

    .line 118
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getPaddingTop()I

    move-result p1

    .line 119
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getPaddingLeft()I

    move-result p2

    .line 121
    iget-object p3, p0, Lcom/ljwx/baseview/FlowRadioGroup;->mAllViews:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_10
    if-ge p5, p3, :cond_6b

    .line 125
    iget-object v0, p0, Lcom/ljwx/baseview/FlowRadioGroup;->mAllViews:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 126
    iget-object v1, p0, Lcom/ljwx/baseview/FlowRadioGroup;->mLineHeight:Ljava/util/List;

    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    .line 128
    :goto_27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_63

    .line 129
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 130
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3c

    goto :goto_60

    .line 134
    :cond_3c
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 135
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, p2

    .line 136
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, p1

    .line 137
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    .line 138
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v6

    .line 139
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 141
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr p2, v3

    :goto_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 144
    :cond_63
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, v1

    add-int/lit8 p5, p5, 0x1

    goto :goto_10

    :cond_6b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 22

    move-object/from16 v0, p0

    .line 62
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 63
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 64
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 65
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 71
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/ljwx/baseview/FlowRadioGroup;->mAllViews:Ljava/util/List;

    .line 72
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/ljwx/baseview/FlowRadioGroup;->mLineHeight:Ljava/util/List;

    .line 74
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2e
    if-ge v7, v6, :cond_ac

    .line 77
    invoke-virtual {v0, v7}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 78
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_41

    move/from16 v14, p2

    move/from16 v17, v3

    goto :goto_a7

    :cond_41
    move/from16 v13, p1

    move/from16 v14, p2

    .line 82
    invoke-virtual {v0, v12, v13, v14}, Landroid/widget/RadioGroup;->measureChild(Landroid/view/View;II)V

    .line 83
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 85
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v17, v3

    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v16, v16, v3

    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v16, v16, v3

    .line 86
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v13, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v13

    iget v13, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v13

    add-int v13, v11, v16

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadioGroup;->getPaddingLeft()I

    move-result v15

    sub-int v15, v1, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadioGroup;->getPaddingRight()I

    move-result v18

    sub-int v15, v15, v18

    if-le v13, v15, :cond_91

    .line 89
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/2addr v10, v8

    .line 91
    iget-object v11, v0, Lcom/ljwx/baseview/FlowRadioGroup;->mLineHeight:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v8, v0, Lcom/ljwx/baseview/FlowRadioGroup;->mAllViews:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move/from16 v13, v16

    goto :goto_95

    .line 99
    :cond_91
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 101
    :goto_95
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v6, -0x1

    if-ne v7, v8, :cond_a5

    .line 104
    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v10, v3

    move v9, v8

    move v11, v13

    move v8, v3

    goto :goto_a7

    :cond_a5
    move v8, v3

    move v11, v13

    :goto_a7
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v17

    goto :goto_2e

    :cond_ac
    move/from16 v17, v3

    .line 108
    iget-object v3, v0, Lcom/ljwx/baseview/FlowRadioGroup;->mLineHeight:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v3, v0, Lcom/ljwx/baseview/FlowRadioGroup;->mAllViews:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadioGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadioGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v9, v3

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadioGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RadioGroup;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v10, v3

    .line 112
    iget-object v3, v0, Lcom/ljwx/baseview/FlowRadioGroup;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "container height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_eb

    move v1, v9

    :cond_eb
    if-ne v4, v3, :cond_ef

    move v3, v10

    goto :goto_f1

    :cond_ef
    move/from16 v3, v17

    .line 113
    :goto_f1
    invoke-virtual {v0, v1, v3}, Landroid/widget/RadioGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 164
    check-cast p1, Lcom/ljwx/baseview/FlowRadioGroup$SavedState;

    .line 165
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RadioGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 166
    invoke-static {p1}, Lcom/ljwx/baseview/FlowRadioGroup$SavedState;->access$000(Lcom/ljwx/baseview/FlowRadioGroup$SavedState;)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ljwx/baseview/FlowRadioGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 158
    invoke-super {p0}, Landroid/widget/RadioGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 159
    new-instance v1, Lcom/ljwx/baseview/FlowRadioGroup$SavedState;

    invoke-virtual {p0}, Lcom/ljwx/baseview/FlowRadioGroup;->getCheckedRadioButtonIndex()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/ljwx/baseview/FlowRadioGroup$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method
