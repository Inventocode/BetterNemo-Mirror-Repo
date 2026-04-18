.class public Lcom/codemao/nemo/event/LoginEvent;
.super Ljava/lang/Object;
.source "LoginEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static type:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/ljwx/baseapp/vm/GlobalDataRepository;->INSTANCE:Lcom/ljwx/baseapp/vm/GlobalDataRepository;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/ljwx/baseapp/vm/GlobalDataRepository;->postUserInfo(Lcom/ljwx/baseapp/infochange/IBaseUserInfo;Ljava/lang/Integer;)V

    .line 39
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/ActivityUtils;->getActivityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 40
    instance-of v2, v1, Lcom/giu/xzz/BaseActivity;

    const/4 v3, 0x1

    if-eqz v2, :cond_74

    .line 41
    check-cast v1, Lcom/giu/xzz/BaseActivity;

    invoke-virtual {v1, v3}, Lcom/giu/xzz/BaseActivity;->setUserInfoChanged(Z)V

    .line 43
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 44
    instance-of v4, v2, Lcom/giu/xzz/BaseFragment;

    if-eqz v4, :cond_52

    .line 45
    move-object v4, v2

    check-cast v4, Lcom/giu/xzz/BaseFragment;

    invoke-virtual {v4, v3}, Lcom/giu/xzz/BaseFragment;->setUserInfoChanged(Z)V

    .line 47
    :cond_52
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5e
    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 48
    instance-of v5, v4, Lcom/giu/xzz/BaseFragment;

    if-eqz v5, :cond_5e

    .line 49
    check-cast v4, Lcom/giu/xzz/BaseFragment;

    invoke-virtual {v4, v3}, Lcom/giu/xzz/BaseFragment;->setUserInfoChanged(Z)V

    goto :goto_5e

    .line 53
    :cond_74
    instance-of v2, v1, Lcom/codemao/nemo/activity/NewBcmActivityV2;

    if-eqz v2, :cond_1a

    .line 54
    check-cast v1, Lcom/codemao/nemo/activity/NewBcmActivityV2;

    invoke-virtual {v1, v3}, Lcom/codemao/nemo/activity/NewBcmActivityV2;->setUserInfoChange(Z)V

    goto :goto_1a

    :cond_7e
    return-void
.end method
