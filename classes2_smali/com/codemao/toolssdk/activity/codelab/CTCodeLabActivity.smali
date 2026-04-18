.class public Lcom/codemao/toolssdk/activity/codelab/CTCodeLabActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CTCodeLabActivity.kt"


# instance fields
.field private contentFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private final addFragment()V
    .registers 8

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;->Companion:Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;->getBUNDLE_KEY_TOKEN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;->getBUNDLE_KEY_PROJECT_CODE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;->getBUNDLE_KEY_PROJECT_ID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v1}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;->getBUNDLE_KEY_FILE_URL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v1}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;->getBUNDLE_KEY_TEST_URL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_49

    .line 37
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_47

    goto :goto_49

    :cond_47
    const/4 v6, 0x0

    goto :goto_4a

    :cond_49
    :goto_49
    const/4 v6, 0x1

    :goto_4a
    if-nez v6, :cond_53

    .line 38
    invoke-virtual {v1, v0, v5}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;->getTestInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/codelab/CTCodeLabActivity;->contentFragment:Landroidx/fragment/app/Fragment;

    goto :goto_59

    .line 40
    :cond_53
    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment$Companion;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/codelab/CTCodeLabActivity;->contentFragment:Landroidx/fragment/app/Fragment;

    .line 42
    :goto_59
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/codemao/toolssdk/R$id;->toolsdk_frameLayout:I

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/codelab/CTCodeLabActivity;->contentFragment:Landroidx/fragment/app/Fragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private final setContentLayout()V
    .registers 4

    .line 17
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    sget v1, Lcom/codemao/toolssdk/R$id;->toolsdk_frameLayout:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 22
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 47
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 48
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/codelab/CTCodeLabActivity;->contentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 26
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/codelab/CTCodeLabActivity;->setContentLayout()V

    .line 28
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/codelab/CTCodeLabActivity;->addFragment()V

    return-void
.end method
