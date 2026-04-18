.class public Lcom/codemao/toolssdk/activity/WorkListActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WorkListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/activity/WorkListActivity$Companion;
    }
.end annotation


# instance fields
.field private fragment:Lcom/codemao/toolssdk/fragment/WorkListFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/activity/WorkListActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/activity/WorkListActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getWorkListFragment()Lcom/codemao/toolssdk/fragment/WorkListFragment;
    .registers 2

    .line 49
    sget-object v0, Lcom/codemao/toolssdk/fragment/WorkListFragment;->Companion:Lcom/codemao/toolssdk/fragment/WorkListFragment$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/fragment/WorkListFragment$Companion;->get()Lcom/codemao/toolssdk/fragment/WorkListFragment;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 53
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 54
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/WorkListActivity;->fragment:Lcom/codemao/toolssdk/fragment/WorkListFragment;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/toolssdk/fragment/WorkListFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 36
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    sget v0, Lcom/codemao/toolssdk/R$id;->toolsdk_frameLayout:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 42
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/WorkListActivity;->getWorkListFragment()Lcom/codemao/toolssdk/fragment/WorkListFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/WorkListActivity;->fragment:Lcom/codemao/toolssdk/fragment/WorkListFragment;

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/WorkListActivity;->fragment:Lcom/codemao/toolssdk/fragment/WorkListFragment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
