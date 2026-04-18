.class public final Lcom/codemao/toolssdk/activity/roki/CTRokiTestActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CTRokiTestActivity.kt"


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

    sget-object v1, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment;->Companion:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment$Companion;->getBUNDLE_KEY_TOKEN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment$Companion;->getBUNDLE_KEY_WORK_ID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment$Companion;->getBUNDLE_KEY_TEST_URL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v1}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment$Companion;->getBUNDLE_KEY_SIMPLE()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v3, :cond_3b

    .line 36
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_3c

    :cond_3b
    const/4 v6, 0x1

    :cond_3c
    if-nez v6, :cond_45

    .line 37
    invoke-virtual {v1, v0, v3, v4}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment$Companion;->getTestInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/roki/CTRokiTestActivity;->contentFragment:Landroidx/fragment/app/Fragment;

    goto :goto_4b

    .line 39
    :cond_45
    invoke-virtual {v1, v0, v2, v4}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment$Companion;->getInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/fragment/roki/CTRokiWebFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/activity/roki/CTRokiTestActivity;->contentFragment:Landroidx/fragment/app/Fragment;

    .line 41
    :goto_4b
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/codemao/toolssdk/R$id;->toolsdk_frameLayout:I

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/roki/CTRokiTestActivity;->contentFragment:Landroidx/fragment/app/Fragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 42
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

    .line 46
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 47
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/roki/CTRokiTestActivity;->contentFragment:Landroidx/fragment/app/Fragment;

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
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/roki/CTRokiTestActivity;->setContentLayout()V

    .line 28
    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/roki/CTRokiTestActivity;->addFragment()V

    return-void
.end method
