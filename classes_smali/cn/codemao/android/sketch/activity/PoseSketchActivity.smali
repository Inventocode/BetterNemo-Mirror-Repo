.class public Lcn/codemao/android/sketch/activity/PoseSketchActivity;
.super Lcn/codemao/android/sketch/SketchActivity;
.source "PoseSketchActivity.java"


# instance fields
.field tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcn/codemao/android/sketch/SketchActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 20
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/SketchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget p1, Lcn/codemao/android/sketch/R$id;->rl_edit:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    sget p1, Lcn/codemao/android/sketch/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    sget v1, Lcn/codemao/android/sketch/R$id;->rl_center:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/codemao/android/sketch/activity/PoseSketchActivity;->tvTitle:Landroid/widget/TextView;

    .line 25
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity;->roleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
