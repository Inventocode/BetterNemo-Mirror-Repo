.class public Lcn/codemao/android/sketch/activity/BackgroundActivity;
.super Lcn/codemao/android/sketch/SketchActivity;
.source "BackgroundActivity.java"


# instance fields
.field private count:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public clockwiseFlip(Landroid/view/View;)V
    .registers 4

    .line 104
    iget p1, p0, Lcn/codemao/android/sketch/activity/BackgroundActivity;->count:F

    const/high16 v0, 0x42b40000  # 90.0f

    add-float/2addr p1, v0

    iput p1, p0, Lcn/codemao/android/sketch/activity/BackgroundActivity;->count:F

    .line 105
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->flip(FZZ)V

    .line 106
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public horizontalFlip(Landroid/view/View;)V
    .registers 5

    .line 110
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcn/codemao/android/sketch/view/SketchViewV4;->flip(FZZ)V

    .line 111
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public mirrorFlip(Landroid/view/View;)V
    .registers 5

    .line 115
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcn/codemao/android/sketch/view/SketchViewV4;->flip(FZZ)V

    .line 116
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 28
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/SketchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget p1, Lcn/codemao/android/sketch/R$id;->rl_edit:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    sget p1, Lcn/codemao/android/sketch/R$id;->rl_center:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    sget p1, Lcn/codemao/android/sketch/R$id;->rootview:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/codemao/android/sketch/R$color;->sketch_sdk_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 33
    sget p1, Lcn/codemao/android/sketch/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    sget p1, Lcn/codemao/android/sketch/R$id;->rl_flip:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    sget p1, Lcn/codemao/android/sketch/R$id;->iv_eraser:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcn/codemao/android/sketch/view/SketchViewV4;->isBackground:Z

    return-void
.end method
