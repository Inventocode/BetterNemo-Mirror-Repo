.class public Lcom/codemao/nemo/activity/NewBcmActivityV2;
.super Lcom/codemao/creativecenter/base/BaseCreativeActivity;
.source "NewBcmActivityV2.java"


# instance fields
.field private newBcmFragmentV2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;-><init>()V

    .line 25
    new-instance v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/activity/NewBcmActivityV2;->newBcmFragmentV2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    return-void
.end method


# virtual methods
.method public getViewName()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBcmActivityV2;->newBcmFragmentV2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->getViewName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hideBottomUIMenu()V
    .registers 4

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x802

    .line 31
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 65
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 66
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBcmActivityV2;->newBcmFragmentV2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/creativecenter/NewBcmFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBcmActivityV2;->newBcmFragmentV2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 37
    invoke-super {p0, p1}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/NewBcmActivityV2;->hideBottomUIMenu()V

    .line 40
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a02a8

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 45
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "course_info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "newbeetypewokrid"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {p1, v2, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "course_id"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "newbeeGuideList"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "worksEvent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "pageStyle"

    const/4 v2, 0x1

    .line 51
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBcmActivityV2;->newBcmFragmentV2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBcmActivityV2;->newBcmFragmentV2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onRestart()V
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->onRestart()V

    .line 60
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBcmActivityV2;->newBcmFragmentV2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->onRestart()V

    return-void
.end method

.method public setUserInfoChange(Z)V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBcmActivityV2;->newBcmFragmentV2:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->setUserInfoChange(Z)V

    return-void
.end method
