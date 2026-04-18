.class public Lcn/codemao/android/account/util/ActResultRequest;
.super Ljava/lang/Object;
.source "ActResultRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/account/util/ActResultRequest$Callback;
    }
.end annotation


# instance fields
.field private fragment:Lcn/codemao/android/account/util/OnActResultDispatcherFragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/ActResultRequest;->getEventDispatchFragment(Landroidx/fragment/app/FragmentActivity;)Lcn/codemao/android/account/util/OnActResultDispatcherFragment;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/account/util/ActResultRequest;->fragment:Lcn/codemao/android/account/util/OnActResultDispatcherFragment;

    return-void
.end method

.method private findEventDispatchFragment(Landroidx/fragment/app/FragmentManager;)Lcn/codemao/android/account/util/OnActResultDispatcherFragment;
    .registers 3

    const-string v0, "on_act_result_event_dispatcher"

    .line 37
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/account/util/OnActResultDispatcherFragment;

    return-object p1
.end method

.method private getEventDispatchFragment(Landroidx/fragment/app/FragmentActivity;)Lcn/codemao/android/account/util/OnActResultDispatcherFragment;
    .registers 5

    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/ActResultRequest;->findEventDispatchFragment(Landroidx/fragment/app/FragmentManager;)Lcn/codemao/android/account/util/OnActResultDispatcherFragment;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 26
    new-instance v0, Lcn/codemao/android/account/util/OnActResultDispatcherFragment;

    invoke-direct {v0}, Lcn/codemao/android/account/util/OnActResultDispatcherFragment;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "on_act_result_event_dispatcher"

    .line 29
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 31
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_1f
    return-object v0
.end method


# virtual methods
.method public startForResult(Landroid/content/Intent;Lcn/codemao/android/account/util/ActResultRequest$Callback;)V
    .registers 4

    .line 41
    iget-object v0, p0, Lcn/codemao/android/account/util/ActResultRequest;->fragment:Lcn/codemao/android/account/util/OnActResultDispatcherFragment;

    invoke-virtual {v0, p1, p2}, Lcn/codemao/android/account/util/OnActResultDispatcherFragment;->startForResult(Landroid/content/Intent;Lcn/codemao/android/account/util/ActResultRequest$Callback;)V

    return-void
.end method
