.class public Lcn/codemao/android/sketch/activity/BackgroundDrawActivity;
.super Lcn/codemao/android/sketch/SketchActivity;
.source "BackgroundDrawActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 17
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/SketchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    sget p1, Lcn/codemao/android/sketch/R$id;->rl_edit:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    sget p1, Lcn/codemao/android/sketch/R$id;->rl_center:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    sget p1, Lcn/codemao/android/sketch/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    sget p1, Lcn/codemao/android/sketch/R$id;->rl_back_paint:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcn/codemao/android/sketch/SketchActivity;->boardView:Lcn/codemao/android/sketch/view/SketchViewV4;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->setBackgroundDraw(Z)V

    return-void
.end method
