.class public Lcom/codemao/creativecenter/vcs/DefaultVCSBcmActivity;
.super Lcom/codemao/creativecenter/base/BaseCreativeActivity;
.source "DefaultVCSBcmActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/vcs/DefaultVCSBcmActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmActivity$Companion;


# instance fields
.field private final defaultVCSBcmFragment:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmActivity;->Companion:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;-><init>()V

    .line 73
    new-instance v0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-direct {v0}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmActivity;->defaultVCSBcmFragment:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 111
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 112
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmActivity;->defaultVCSBcmFragment:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/creativecenter/NewBcmFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmActivity;->defaultVCSBcmFragment:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 76
    invoke-super {p0, p1}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78
    sget v0, Lcom/codemao/creativecenter/R$id;->creative_frame_layout:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 79
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 85
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_IS_ASSISTOR"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 86
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_IS_ASSIST_BCM"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 90
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_ORIGIN_BCM_PATH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "worksEvent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 98
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "pageStyle"

    const/4 v2, 0x1

    .line 102
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmActivity;->defaultVCSBcmFragment:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 106
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmActivity;->defaultVCSBcmFragment:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
