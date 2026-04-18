.class public Lcn/codemao/android/sketch/view/menu/MirrorMenu;
.super Landroid/widget/LinearLayout;
.source "MirrorMenu.java"

# interfaces
.implements Lcn/codemao/android/sketch/listener/ChangePaintListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private ivHor:Landroid/view/View;

.field private ivRotate:Landroid/view/View;

.field private ivVer:Landroid/view/View;

.field private sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcn/codemao/android/sketch/view/menu/MirrorMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    sget p2, Lcn/codemao/android/sketch/R$layout;->layout_mirror_menu:I

    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    sget p1, Lcn/codemao/android/sketch/R$id;->iv_mirror_hor:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->ivHor:Landroid/view/View;

    .line 45
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget p1, Lcn/codemao/android/sketch/R$id;->iv_mirror_rotate:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->ivRotate:Landroid/view/View;

    .line 47
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    sget p1, Lcn/codemao/android/sketch/R$id;->iv_mirror_ver:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->ivVer:Landroid/view/View;

    .line 49
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->initSize()V

    return-void
.end method

.method private initSize()V
    .registers 5

    .line 61
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object v0

    iget-boolean v0, v0, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz v0, :cond_bb

    .line 62
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40e00000  # 7.0f

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 63
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->ivVer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42200000  # 40.0f

    invoke-static {v2, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 64
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->ivVer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->ivVer:Landroid/view/View;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 66
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->ivHor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->ivHor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->ivHor:Landroid/view/View;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 69
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->ivRotate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 70
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->ivRotate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 71
    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->ivRotate:Landroid/view/View;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 72
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->ivVer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000  # 20.0f

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 73
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->ivHor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 74
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->ivRotate:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_bb
    return-void
.end method


# virtual methods
.method public bindSkectroller(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    .line 56
    invoke-interface {p1, p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->addChangePaintListener(Lcn/codemao/android/sketch/listener/ChangePaintListener;)V

    return-void
.end method

.method public changePaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V
    .registers 3

    if-eqz p1, :cond_e

    .line 81
    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_e

    const/4 p1, 0x0

    .line 82
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_13

    :cond_e
    const/16 p1, 0x8

    .line 84
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_13
    return-void
.end method

.method public clickMirrorHor(Landroid/view/View;)V
    .registers 5

    .line 98
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-static {}, Lcn/codemao/android/sketch/model/ReportParams;->create()Lcn/codemao/android/sketch/model/ReportParams;

    move-result-object v0

    const-string/jumbo v1, "左右"

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/ReportParams;->setRevoleType(Ljava/lang/String;)Lcn/codemao/android/sketch/model/ReportParams;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/ReportParams;->map()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "翻转类型"

    invoke-interface {p1, v1, v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 99
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->flip(FZZZ)V

    return-void
.end method

.method public clickMirrorRotate(Landroid/view/View;)V
    .registers 5

    .line 91
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-static {}, Lcn/codemao/android/sketch/model/ReportParams;->create()Lcn/codemao/android/sketch/model/ReportParams;

    move-result-object v0

    const-string/jumbo v1, "顺时针"

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/ReportParams;->setRevoleType(Ljava/lang/String;)Lcn/codemao/android/sketch/model/ReportParams;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/ReportParams;->map()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "翻转类型"

    invoke-interface {p1, v1, v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    const/high16 v0, 0x42b40000  # 90.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v1, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->flip(FZZZ)V

    return-void
.end method

.method public clickMirrorVer(Landroid/view/View;)V
    .registers 5

    .line 104
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-static {}, Lcn/codemao/android/sketch/model/ReportParams;->create()Lcn/codemao/android/sketch/model/ReportParams;

    move-result-object v0

    const-string v1, "上下"

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/ReportParams;->setRevoleType(Ljava/lang/String;)Lcn/codemao/android/sketch/model/ReportParams;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/ReportParams;->map()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "翻转类型"

    invoke-interface {p1, v1, v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 105
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->flip(FZZZ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 111
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 112
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 113
    sget v1, Lcn/codemao/android/sketch/R$id;->iv_mirror_ver:I

    if-ne v0, v1, :cond_13

    .line 114
    invoke-virtual {p0, p1}, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->clickMirrorVer(Landroid/view/View;)V

    goto :goto_22

    .line 115
    :cond_13
    sget v1, Lcn/codemao/android/sketch/R$id;->iv_mirror_rotate:I

    if-ne v0, v1, :cond_1b

    .line 116
    invoke-virtual {p0, p1}, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->clickMirrorRotate(Landroid/view/View;)V

    goto :goto_22

    .line 117
    :cond_1b
    sget v1, Lcn/codemao/android/sketch/R$id;->iv_mirror_hor:I

    if-ne v0, v1, :cond_22

    .line 118
    invoke-virtual {p0, p1}, Lcn/codemao/android/sketch/view/menu/MirrorMenu;->clickMirrorHor(Landroid/view/View;)V

    :cond_22
    :goto_22
    return-void
.end method
