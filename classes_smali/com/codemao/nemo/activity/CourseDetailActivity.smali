.class public Lcom/codemao/nemo/activity/CourseDetailActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "CourseDetailActivity.java"


# instance fields
.field card_contribute:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private curType:I

.field private isLargePad:Z

.field left_view:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLoadView:Lcom/codemao/nemo/view/LoadView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mid_view:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field right_view:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    return-void
.end method

.method private bindFragment(Ljava/lang/String;)V
    .registers 4

    .line 115
    iget p1, p0, Lcom/codemao/nemo/activity/CourseDetailActivity;->curType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    .line 116
    iget-object p1, p0, Lcom/codemao/nemo/activity/CourseDetailActivity;->mid_view:Landroid/widget/TextView;

    const-string/jumbo v0, "星能猫小课堂"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p1, p0, Lcom/codemao/nemo/activity/CourseDetailActivity;->card_contribute:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    goto :goto_23

    .line 120
    :cond_18
    iget-object p1, p0, Lcom/codemao/nemo/activity/CourseDetailActivity;->mid_view:Landroid/widget/TextView;

    const-string/jumbo v0, "大家的知识库"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    .line 125
    :goto_23
    :try_start_23
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a0281

    .line 127
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_3e

    .line 129
    iget p1, p0, Lcom/codemao/nemo/activity/CourseDetailActivity;->curType:I

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CourseInfoFragment;->getInstance(I)Lcom/codemao/nemo/fragment/CourseInfoFragment;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_47

    .line 131
    :cond_3e
    iget p1, p0, Lcom/codemao/nemo/activity/CourseDetailActivity;->curType:I

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CourseInfoFragment;->getInstance(I)Lcom/codemao/nemo/fragment/CourseInfoFragment;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 133
    :goto_47
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_4a} :catch_4b

    goto :goto_52

    :catch_4b
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    :goto_52
    return-void
.end method

.method public static startFolkCourseAct(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x2

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "from"

    .line 86
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "workId"

    .line 87
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startOfficialCourseAct(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/CourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x1

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "from"

    .line 77
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "workId"

    .line 78
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public changeFragment()V
    .registers 3

    .line 144
    iget v0, p0, Lcom/codemao/nemo/activity/CourseDetailActivity;->curType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x2

    .line 145
    iput v0, p0, Lcom/codemao/nemo/activity/CourseDetailActivity;->curType:I

    const-string/jumbo v0, "星能猫小课堂"

    .line 146
    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/CourseDetailActivity;->bindFragment(Ljava/lang/String;)V

    goto :goto_17

    .line 148
    :cond_f
    iput v1, p0, Lcom/codemao/nemo/activity/CourseDetailActivity;->curType:I

    const-string/jumbo v0, "大家的知识库"

    .line 149
    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/CourseDetailActivity;->bindFragment(Ljava/lang/String;)V

    :goto_17
    return-void
.end method

.method protected contentViewId()I
    .registers 2

    .line 70
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/CourseDetailActivity;->isLargePad:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0d003f

    goto :goto_b

    :cond_8
    const v0, 0x7f0d003e

    :goto_b
    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "星能猫小课堂"

    return-object v0
.end method

.method onClick(Landroid/view/View;)V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 158
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 159
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0101

    const/4 v1, 0x0

    if-eq p1, v0, :cond_35

    const v0, 0x7f0a048c

    if-eq p1, v0, :cond_17

    goto :goto_40

    .line 161
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击返回"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_40

    :cond_35
    new-array p1, v1, [Ljava/lang/String;

    const-string/jumbo v0, "大家的知识库-点击我要投稿"

    .line 165
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 166
    invoke-static {p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goContribute(Landroid/content/Context;)V

    :goto_40
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 93
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/CourseDetailActivity;->isLargePad:Z

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/CourseDetailActivity;->curType:I

    if-ne v0, v2, :cond_1c

    const-string/jumbo v0, "星能猫小课堂"

    .line 96
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    goto :goto_22

    :cond_1c
    const-string/jumbo v0, "大家的知识库"

    .line 98
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    .line 100
    :goto_22
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "workId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseDetailActivity;->right_view:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/CourseDetailActivity;->bindFragment(Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/codemao/nemo/activity/CourseDetailActivity;->card_contribute:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/codemao/nemo/activity/CourseDetailActivity;->isLargePad:Z

    if-eqz v0, :cond_4c

    const v0, 0x7f080401

    goto :goto_4f

    :cond_4c
    const v0, 0x7f080463

    :goto_4f
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
