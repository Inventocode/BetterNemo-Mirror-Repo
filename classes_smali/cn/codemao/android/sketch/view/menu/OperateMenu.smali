.class public Lcn/codemao/android/sketch/view/menu/OperateMenu;
.super Landroid/widget/FrameLayout;
.source "OperateMenu.java"

# interfaces
.implements Lcn/codemao/android/sketch/listener/CanvasScaleListener;
.implements Lcn/codemao/android/sketch/listener/ChangePaintListener;
.implements Lcn/codemao/android/sketch/listener/CanvasTranslateListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcn/codemao/android/sketch/action/UndoRedoManager$UndoRedoStatusListener;


# instance fields
.field private initLeft:F

.field private isLandscapeStage:Z

.field private iv_floor_down:Landroid/view/View;

.field private iv_floor_up:Landroid/view/View;

.field private iv_redo:Landroid/view/View;

.field private iv_show_bg:Landroid/view/View;

.field private iv_text:Landroid/view/View;

.field private iv_undo:Landroid/view/View;

.field private leftSpace:F

.field private ll_floor:Landroid/view/View;

.field private ll_function:Landroid/view/View;

.field private needTransform:Z

.field private sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

.field private vs_seekBar:Lcn/codemao/android/sketch/view/VerticalSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcn/codemao/android/sketch/view/menu/OperateMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 67
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->isLandscapeStage:Z

    .line 84
    sget p2, Lcn/codemao/android/sketch/R$layout;->layout_operate_menu:I

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 85
    sget p1, Lcn/codemao/android/sketch/R$id;->vs_seekBar:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/sketch/view/VerticalSeekBar;

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->vs_seekBar:Lcn/codemao/android/sketch/view/VerticalSeekBar;

    .line 86
    sget p1, Lcn/codemao/android/sketch/R$id;->ll_floor:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->ll_floor:Landroid/view/View;

    .line 87
    sget p1, Lcn/codemao/android/sketch/R$id;->ll_funcion:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->ll_function:Landroid/view/View;

    .line 88
    sget p1, Lcn/codemao/android/sketch/R$id;->iv_text:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_text:Landroid/view/View;

    .line 89
    sget p1, Lcn/codemao/android/sketch/R$id;->iv_redo:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_redo:Landroid/view/View;

    .line 90
    sget p1, Lcn/codemao/android/sketch/R$id;->iv_undo:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_undo:Landroid/view/View;

    .line 91
    sget p1, Lcn/codemao/android/sketch/R$id;->iv_show_bg:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_show_bg:Landroid/view/View;

    .line 93
    sget p1, Lcn/codemao/android/sketch/R$id;->iv_floor_up:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_floor_up:Landroid/view/View;

    .line 94
    sget p1, Lcn/codemao/android/sketch/R$id;->iv_floor_down:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_floor_down:Landroid/view/View;

    .line 96
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_text:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_redo:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_show_bg:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_undo:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_floor_up:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_floor_down:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->initSize()V

    .line 103
    new-instance p1, Lcn/codemao/android/sketch/view/menu/OperateMenu$1;

    invoke-direct {p1, p0}, Lcn/codemao/android/sketch/view/menu/OperateMenu$1;-><init>(Lcn/codemao/android/sketch/view/menu/OperateMenu;)V

    invoke-virtual {p0, p1}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->addOnSlideChangeListener(Lcn/codemao/android/sketch/view/VerticalSeekBar$SlideChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/view/menu/OperateMenu;)Lcn/codemao/android/sketch/view/paint/SketchControll;
    .registers 1

    .line 47
    iget-object p0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    return-object p0
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/view/menu/OperateMenu;)Landroid/view/View;
    .registers 1

    .line 47
    iget-object p0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_text:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcn/codemao/android/sketch/view/menu/OperateMenu;Landroid/graphics/RectF;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->refreshLayout(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$300(Lcn/codemao/android/sketch/view/menu/OperateMenu;)Landroid/view/View;
    .registers 1

    .line 47
    iget-object p0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->ll_floor:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcn/codemao/android/sketch/view/menu/OperateMenu;)Landroid/view/View;
    .registers 1

    .line 47
    iget-object p0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_floor_up:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcn/codemao/android/sketch/view/menu/OperateMenu;)Landroid/view/View;
    .registers 1

    .line 47
    iget-object p0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_floor_down:Landroid/view/View;

    return-object p0
.end method

.method private initLocation()V
    .registers 4

    .line 148
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->isLandscapeStage:Z

    if-eqz v0, :cond_22

    const/16 v0, 0xcc

    .line 150
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object v1

    iget-boolean v1, v1, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz v1, :cond_10

    const/16 v0, 0xff

    .line 153
    :cond_10
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float v0, v0

    invoke-static {v2, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    goto :goto_2e

    .line 155
    :cond_22
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f1fdc2c

    mul-float v0, v0, v1

    .line 157
    :goto_2e
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000  # 1.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->initLeft:F

    .line 159
    iget v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->leftSpace:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_65

    .line 160
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->initLeft:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42500000  # 52.0f

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->leftSpace:F

    .line 164
    :cond_65
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->needTransform:Z

    if-eqz v0, :cond_6f

    .line 165
    iget v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->initLeft:F

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_77

    .line 167
    :cond_6f
    iget v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->initLeft:F

    iget v1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->leftSpace:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :goto_77
    return-void
.end method

.method private initSize()V
    .registers 6

    .line 116
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object v0

    iget-boolean v0, v0, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz v0, :cond_10a

    .line 117
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->ll_function:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42a80000  # 84.0f

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 118
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_show_bg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42200000  # 40.0f

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 119
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_show_bg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_redo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 121
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_redo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 122
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_undo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 123
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_undo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 124
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_undo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x42000000  # 32.0f

    invoke-static {v1, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 125
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_redo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 126
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->ll_floor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v4, 0x41a80000  # 21.0f

    invoke-static {v1, v4}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 127
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_floor_down:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 128
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_floor_down:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 129
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_floor_up:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 130
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_floor_up:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 131
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_floor_down:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_10a
    return-void
.end method

.method private refreshLayout(Landroid/graphics/RectF;)V
    .registers 4

    if-eqz p1, :cond_19

    .line 295
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->needTransform:Z

    if-nez v0, :cond_7

    goto :goto_19

    .line 296
    :cond_7
    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->initLeft:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_19

    iget v1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->leftSpace:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_19

    .line 297
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :cond_19
    :goto_19
    return-void
.end method


# virtual methods
.method public addOnSlideChangeListener(Lcn/codemao/android/sketch/view/VerticalSeekBar$SlideChangeListener;)V
    .registers 3

    .line 137
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->vs_seekBar:Lcn/codemao/android/sketch/view/VerticalSeekBar;

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/view/VerticalSeekBar;->addOnSlideChangeListener(Lcn/codemao/android/sketch/view/VerticalSeekBar$SlideChangeListener;)V

    return-void
.end method

.method public bindSkectroller(Lcn/codemao/android/sketch/view/paint/SketchControll;I)V
    .registers 5

    .line 191
    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    .line 192
    invoke-interface {p1, p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addCanvasScaleListener(Lcn/codemao/android/sketch/listener/CanvasScaleListener;)V

    .line 193
    invoke-interface {p1, p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addChangePaintListener(Lcn/codemao/android/sketch/listener/ChangePaintListener;)V

    .line 194
    invoke-interface {p1, p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addCanvasTranslateListener(Lcn/codemao/android/sketch/listener/CanvasTranslateListener;)V

    .line 195
    invoke-interface {p1, p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->listenUndoRedoStatus(Lcn/codemao/android/sketch/action/UndoRedoManager$UndoRedoStatusListener;)V

    .line 196
    new-instance v0, Lcn/codemao/android/sketch/view/menu/OperateMenu$2;

    invoke-direct {v0, p0, p1}, Lcn/codemao/android/sketch/view/menu/OperateMenu$2;-><init>(Lcn/codemao/android/sketch/view/menu/OperateMenu;Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    invoke-interface {p1, v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addCanvasVariableWather(Lcn/codemao/android/sketch/listener/CanvasVariableWather;)V

    const/4 p1, 0x2

    const/4 v0, 0x3

    if-eq p2, p1, :cond_1d

    if-eq p2, v0, :cond_1d

    goto :goto_24

    .line 269
    :cond_1d
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_show_bg:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_24
    if-eq p2, v0, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    .line 273
    :goto_29
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->needTransform:Z

    .line 275
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->initLocation()V

    return-void
.end method

.method public changePaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V
    .registers 5

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->vs_seekBar:Lcn/codemao/android/sketch/view/VerticalSeekBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->ll_floor:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_text:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2c

    .line 309
    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result p1

    if-eqz p1, :cond_27

    const/4 v1, 0x7

    if-eq p1, v1, :cond_23

    if-eq p1, v2, :cond_27

    goto :goto_2c

    .line 315
    :cond_23
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2c

    .line 312
    :cond_27
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->vs_seekBar:Lcn/codemao/android/sketch/view/VerticalSeekBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 281
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->isStrawColorModel()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x0

    return p1

    .line 285
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    const-wide/16 v0, 0x64

    .line 331
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 333
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 334
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_text:I

    if-ne p1, v0, :cond_51

    .line 335
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_text:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    .line 336
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_text:Landroid/view/View;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 337
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object v0

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    if-eqz v0, :cond_a1

    xor-int/lit8 p1, p1, 0x1

    .line 339
    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setHasBackground(Z)V

    .line 340
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->changeColor()V

    .line 341
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    const/4 v1, 0x0

    const-string/jumbo v2, "文字底色"

    invoke-interface {p1, v2, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 342
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getGlobalUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object p1

    new-instance v1, Lcn/codemao/android/sketch/action/ModifyTextColorModelAction;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->isHasBackground()Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcn/codemao/android/sketch/action/ModifyTextColorModelAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;Z)V

    invoke-virtual {p1, v1}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    .line 343
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    goto :goto_a1

    .line 345
    :cond_51
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_undo:I

    if-ne p1, v0, :cond_5b

    .line 346
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->undo()V

    goto :goto_a1

    .line 347
    :cond_5b
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_redo:I

    if-ne p1, v0, :cond_65

    .line 348
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->redo()V

    goto :goto_a1

    .line 349
    :cond_65
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_floor_down:I

    if-ne p1, v0, :cond_77

    .line 350
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_floor_down:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 351
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->floorDown()V

    goto :goto_a1

    .line 352
    :cond_77
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_floor_up:I

    if-ne p1, v0, :cond_89

    .line 353
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_floor_up:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 354
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->floorUp()V

    goto :goto_a1

    .line 355
    :cond_89
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_show_bg:I

    if-ne p1, v0, :cond_a1

    .line 356
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_show_bg:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    .line 357
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_show_bg:Landroid/view/View;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 358
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->changeBGBitmap(Z)V

    :cond_a1
    :goto_a1
    return-void
.end method

.method public onScale(FLandroid/graphics/RectF;)V
    .registers 3

    .line 291
    invoke-direct {p0, p2}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->refreshLayout(Landroid/graphics/RectF;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTranslate(FFLandroid/graphics/RectF;)V
    .registers 4

    .line 326
    invoke-direct {p0, p3}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->refreshLayout(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setLandscapeStage(Z)V
    .registers 2

    .line 141
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->isLandscapeStage:Z

    return-void
.end method

.method public updateStatus(ZZ)V
    .registers 4

    .line 364
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_redo:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 365
    iget-object p2, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu;->iv_undo:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method
