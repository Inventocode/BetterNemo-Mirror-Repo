.class public Lcom/codemao/nemo/activity/AboutActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "AboutActivity.java"


# instance fields
.field ivBottom:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvPrivate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0030

    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "关于页"

    return-object v0
.end method

.method onClick(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_18

    goto :goto_17

    .line 62
    :sswitch_8
    invoke-static {p0}, Lcom/codemao/nemo/util/WebUtil;->goUserAgreement(Landroid/content/Context;)V

    goto :goto_17

    .line 65
    :sswitch_c
    invoke-static {p0}, Lcom/codemao/nemo/util/WebUtil;->goPrivateProvision(Landroid/content/Context;)V

    goto :goto_17

    .line 68
    :sswitch_10
    invoke-static {p0}, Lcom/codemao/nemo/util/WebUtil;->goKidsInfoProtection(Landroid/content/Context;)V

    goto :goto_17

    .line 59
    :sswitch_14
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    :goto_17
    return-void

    :sswitch_data_18
    .sparse-switch
        0x7f0a037b -> :sswitch_14
        0x7f0a086e -> :sswitch_10
        0x7f0a08af -> :sswitch_c
        0x7f0a0917 -> :sswitch_8
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 42
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f400000  # 0.75f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 44
    iget-object v0, p0, Lcom/codemao/nemo/activity/AboutActivity;->ivBottom:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45
    iget-object v0, p0, Lcom/codemao/nemo/activity/AboutActivity;->ivBottom:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0x8

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method protected statusFontMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
